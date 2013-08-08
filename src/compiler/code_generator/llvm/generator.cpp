#include <parser.hpp>
#include <fstream>
#include <sstream>
#include <codegen.hpp>

using namespace llvm;
using namespace CodeGenerator;
using namespace std;
namespace TokenType = Enum::Token::Type;
namespace TokenKind = Enum::Token::Kind;

LLVM::LLVM(void) : last_evaluated_value(NULL)
{
	LLVMContext &ctx = getGlobalContext();
	module = new llvm::Module("LLVMIR", ctx);
	cur_args = NULL;
}

void LLVM::createRuntimeTypes(void)
{
	LLVMContext &ctx = getGlobalContext();
	vector<Type *> fields;
	int_type = IntegerType::get(ctx, 64);
	int32_type = IntegerType::get(ctx, 32);
	double_type = Type::getDoubleTy(ctx);
	boolean_type = llvm::Type::getInt1Ty(ctx);
	Type *ptr_type = Type::getInt8PtrTy(ctx);
	void_ptr_type = ptr_type;
	double_ptr_type = PointerType::get(double_type, 0);
	int_ptr_type = PointerType::get(int_type, 0);

	value_type = void_ptr_type;

	value_ptr_type = PointerType::get(value_type, 0);
	fields.push_back(Type::getInt32Ty(ctx));
	fields.push_back(union_type);
	object_type = StructType::create(ArrayRef<Type *>(fields), "Object", false);

	fields.clear();

	object_ptr_type = PointerType::get(object_type, 0);
	object_double_ptr_type = PointerType::get(object_ptr_type, 0);

	fields.push_back(Type::getInt32Ty(ctx));
	fields.push_back(PointerType::get(union_type, 0));
	fields.push_back(Type::getInt64Ty(ctx));
	array_type = StructType::create(ArrayRef<Type *>(fields), "ArrayObject");
	array_ptr_type = PointerType::get(array_type, 0);
}

bool LLVM::linkModule(llvm::Module *dest, string file_name)
{
	SMDiagnostic err;
	string err_msg;
	llvm::Module *link_mod = ParseIRFile(file_name, err, getGlobalContext());
	if (!link_mod) return false;
	if (Linker::LinkModules(dest, link_mod, Linker::DestroySource, &err_msg)) {
		//cout << err_msg << endl;
		return false;
	}
	return true;
}

const char *LLVM::gen(AST *ast)
{
	//fprintf(stdout, "gen!!\n");
	LLVMContext &ctx = getGlobalContext();
	linkModule(module, "gen/runtime_api.lli");
	union_type = module->getTypeByName("union.UnionType");
	union_ptr_type = PointerType::get(union_type, 0);
	createRuntimeTypes();

	IRBuilder<> builder(ctx);
	llvm::FunctionType *mainFuncType = llvm::FunctionType::get(int_type, true);
	Function *func_main = Function::Create(
		mainFuncType,
		GlobalValue::ExternalLinkage,
		"main", module
	);
	cur_func = func_main;
	cur_func_name = "main";
	func_main->setCallingConv(CallingConv::C);
	BasicBlock *entry = BasicBlock::Create(ctx, "entrypoint", func_main);
	main_entry = entry;
	builder.SetInsertPoint(entry);

	llvm::Value *u = builder.CreateAlloca(union_type, 0, "u");
	llvm::Value *double_ptr = builder.CreateBitCast(u, double_ptr_type);
	llvm::Value *one = ConstantFP::get(double_type, 2.1);
	builder.CreateStore(one, double_ptr);
	llvm::Value *void_ptr = builder.CreateBitCast(u, void_ptr_type);
	Constant *func = getBuiltinFunction(&builder, "debug_print");

	traverse(&builder, ast);

	llvm::Value *zero = ConstantInt::get(int_type, 0);
	builder.CreateRet(zero);

	PassManager pm;
	pm.add(createPromoteMemoryToRegisterPass());
	pm.add(createTailCallEliminationPass());
	pm.add(createMemCpyOptPass());
	pm.add(createCodeGenPreparePass());
	pm.add(createIPSCCPPass());
	pm.add(createFunctionInliningPass());
	pm.run(*module);

	AssemblyAnnotationWriter writer;
	ostringstream os;
	raw_os_ostream raw_stream(os);
	module->print(raw_stream, &writer);
	return os.str().c_str();
}

void LLVM::write(void)
{
	AssemblyAnnotationWriter writer;
	ofstream os("llvm.ir");
	raw_os_ostream raw_stream(os);
	module->print(raw_stream, &writer);
}

void LLVM::traverse(IRBuilder<> *builder, AST *ast)
{
	Node *node = ast->root;
	for (; node != NULL; node = node->next) {
		generateCode(builder, node);
	}
}

void LLVM::generateCode(IRBuilder<> *builder, Node *node)
{
	if (TYPE_match(node, FunctionCallNode)) {
		generateFunctionCallCode(builder, dynamic_cast<FunctionCallNode *>(node));
	} else if (TYPE_match(node, LeafNode)) {
		generateValueCode(builder, node);
	} else if (TYPE_match(node, BranchNode)) {
		if (node->tk->info.kind == TokenKind::Assign) {
			generateAssignCode(builder, dynamic_cast<BranchNode *>(node));
		} else {
			generateOperatorCode(builder, dynamic_cast<BranchNode *>(node));
		}
	} else if (TYPE_match(node, IfStmtNode)) {
		generateIfStmtCode(builder, dynamic_cast<IfStmtNode *>(node));
	} else if (TYPE_match(node, ElseStmtNode)) {
		generateElseStmtCode(builder, dynamic_cast<ElseStmtNode *>(node));
	} else if (TYPE_match(node, ForStmtNode)) {
		generateForStmtCode(builder, dynamic_cast<ForStmtNode *>(node));
	} else if (TYPE_match(node, SingleTermOperatorNode)) {
		generateSingleTermOperatorCode(builder, dynamic_cast<SingleTermOperatorNode *>(node));
	} else if (TYPE_match(node, WhileStmtNode)) {
		generateWhileStmtCode(builder, dynamic_cast<WhileStmtNode *>(node));
	} else if (TYPE_match(node, ForeachStmtNode)) {
		generateForeachStmtCode(builder, dynamic_cast<ForeachStmtNode *>(node));
	} else if (TYPE_match(node, FunctionNode)) {
		generateFunctionCode(builder, dynamic_cast<FunctionNode *>(node));
	} else if (TYPE_match(node, ReturnNode)) {
		generateReturnCode(builder, dynamic_cast<ReturnNode *>(node));
		has_return_statement = true;
	} else {
		assert(0 && "Sorry, still not supported");
	}
}

BasicBlock *LLVM::generateBlockCode(IRBuilder<> *builder, BasicBlock *block, BasicBlock *merge_block, Node *node)
{
	builder->SetInsertPoint(block);
	for (; node != NULL; node = node->next) {
		generateCode(builder, node);
	}
	builder->CreateBr(merge_block);
	return block;
}

llvm::Value *LLVM::generateCastedValueCode(IRBuilder<> *builder, Node *node)
{
	llvm::Value *value = generateValueCode(builder, node);
	llvm::Value *casted_value = generateCastCode(builder, cur_type, value);
	return casted_value;
}

llvm::Value *LLVM::getArraySize(IRBuilder<> *builder, llvm::Value *array)
{
	/* array type is ArrayObject */
	llvm::Value *size = builder->CreateLoad(builder->CreateStructGEP(array, 2));
	return builder->CreatePtrToInt(size, int_type);
}

llvm::Value *LLVM::getArrayElement(IRBuilder<> *builder, llvm::Value *array, llvm::Value *idx)
{
	llvm::Value *list = builder->CreateLoad(builder->CreateStructGEP(array, 1, "fetch_list"), "load_list");
	return builder->CreateGEP(list, idx, "get_elem");
}

void LLVM::generateIfStmtCode(IRBuilder<> *builder, IfStmtNode *node)
{
	llvm::Value *expr = generateCastedValueCode(builder, node->expr);
	llvm::Value *zero = ConstantInt::get(int_type, 0);
	llvm::Value *cond = NULL;
	if (cur_type == Enum::Runtime::Object) {
		vector<llvm::Type *> arg_types;
		arg_types.push_back(object_ptr_type);
		llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(boolean_type, arg_types_ref, false);
		llvm::Constant *f = module->getOrInsertFunction("Object_isTrue", ftype);
		cond = builder->CreateCall(f, expr, "object");
	} else {
		cond = builder->CreateICmpNE(expr, zero);
	}
	LLVMContext &ctx = getGlobalContext();
	BasicBlock *true_block  = BasicBlock::Create(ctx, "if_true_block",  cur_func);
	BasicBlock *false_block = BasicBlock::Create(ctx, "if_false_block", cur_func);
	BasicBlock *merge_block = BasicBlock::Create(ctx, "if_merge_block", cur_func);
	builder->CreateCondBr(cond, true_block, false_block);
	generateBlockCode(builder, true_block, merge_block, node->true_stmt);
	generateBlockCode(builder, false_block, merge_block, node->false_stmt);
	builder->SetInsertPoint(merge_block);
}

void LLVM::generateElseStmtCode(IRBuilder<> *builder, ElseStmtNode *node)
{
	generateCode(builder, node->stmt);
}

void LLVM::generateForStmtCode(IRBuilder<> *builder, ForStmtNode *node)
{
	LLVMContext &ctx = getGlobalContext();
	generateCode(builder, node->init);

	BasicBlock *loop_head = BasicBlock::Create(ctx, "loop_head", cur_func);
	BasicBlock *true_block = BasicBlock::Create(ctx, "true_block", cur_func);
	BasicBlock *after_block = BasicBlock::Create(ctx, "after_block", cur_func);
	builder->CreateBr(loop_head);
	builder->SetInsertPoint(loop_head);
	llvm::Value *_cond = generateValueCode(builder, node->cond);
	llvm::Value *zero = ConstantInt::get(int_type, 0);
	llvm::Value *cond = builder->CreateICmpNE(generateCastCode(builder, cur_type, _cond), zero);
	builder->CreateCondBr(cond, true_block, after_block);

	builder->SetInsertPoint(true_block);
	Node *true_stmt = node->true_stmt;
	for (; true_stmt != NULL; true_stmt = true_stmt->next) {
		generateCode(builder, true_stmt);
	}
	generateCode(builder, node->progress);
	builder->CreateBr(loop_head);

	builder->SetInsertPoint(after_block);
}

void LLVM::setIteratorValue(IRBuilder<> *builder, Node *node)
{
	Token *tk = node->tk;
	llvm::Value *o = builder->CreateAlloca(object_type, 0, tk->data.c_str());
	CodeGenerator::Value *v = (CodeGenerator::Value *)malloc(sizeof(CodeGenerator::Value));
	v->type = cur_type;
	v->value = o;
	vmgr.setVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent, v);
}

void LLVM::generateForeachStmtCode(IRBuilder<> *builder, ForeachStmtNode *node)
{
	LLVMContext &ctx = getGlobalContext();
	BasicBlock *loop_head = BasicBlock::Create(ctx, "loop_head", cur_func);
	BasicBlock *true_block = BasicBlock::Create(ctx, "true_block", cur_func);
	BasicBlock *after_block = BasicBlock::Create(ctx, "after_block", cur_func);

	llvm::Value *array = generateCastedValueCode(builder, node->cond);
	assert(cur_type == Enum::Runtime::Array && "type must be Array at foreach");

	llvm::Value *array_size = getArraySize(builder, array);
	setIteratorValue(builder, node->itr);
	llvm::Value *itr_value = vmgr.getVariable(cur_func_name.c_str(), node->itr->tk->data.c_str(), node->itr->tk->finfo.indent)->value;
	llvm::Value *hidden_idx = builder->CreateAlloca(int_type, 0, "__hidden_idx__");
	llvm::Value *zero = ConstantInt::get(int_type, 0);
	builder->CreateStore(zero, hidden_idx);

	builder->CreateBr(loop_head);
	builder->SetInsertPoint(loop_head);
	llvm::Value *idx = builder->CreateLoad(hidden_idx);
	llvm::Value *_cond = builder->CreateZExt(builder->CreateICmpSLT(idx, array_size), int_type);
	llvm::Value *cond = builder->CreateICmpNE(_cond, zero);
	builder->CreateCondBr(cond, true_block, after_block);

	builder->SetInsertPoint(true_block);
	llvm::Value *elem = getArrayElement(builder, array, idx);
	itr_value = elem;
	CodeGenerator::Value *itr = vmgr.getVariable(cur_func_name.c_str(), node->itr->tk->data.c_str(), node->itr->tk->finfo.indent);
	itr->value = elem;
	vmgr.setVariable(cur_func_name.c_str(), node->itr->tk->data.c_str(), node->itr->tk->finfo.indent, itr);

	Node *true_stmt = node->true_stmt;
	for (; true_stmt != NULL; true_stmt = true_stmt->next) {
		generateCode(builder, true_stmt);
	}

	llvm::Value *one = ConstantInt::get(int_type, 1);
	llvm::Value *incremented_value = builder->CreateAdd(builder->CreatePtrToInt(idx, int_type), one, "inc");
	builder->CreateStore(incremented_value, hidden_idx);
	builder->CreateBr(loop_head);

	builder->SetInsertPoint(after_block);
}

void LLVM::generateFunctionCode(IRBuilder<> *builder, FunctionNode *node)
{
	FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
	Function *func = Function::Create(
		ftype,
		GlobalValue::ExternalLinkage,
		node->tk->data.c_str(), module
	);
	fmgr.setFunction("main", node->tk->data.c_str(), func);
	main_func = func;
	cur_func = func;
	cur_func_name = node->tk->data.c_str();
	func->setCallingConv(CallingConv::Fast);
	BasicBlock *entry = BasicBlock::Create(module->getContext(), "entrypoint", func);
	builder->SetInsertPoint(entry);

	has_return_statement = false;
	Node *body = node->body;
	for (; body != NULL; body = body->next) {
		generateCode(builder, body);
	}
	if (!has_return_statement) generateLastEvaluatedReturnCode(builder);

	cur_func = main_func;
	builder->SetInsertPoint(main_entry);
}

llvm::Value *LLVM::generateReceiveUnionValueCode(IRBuilder<> *builder, llvm::Value *result)
{
	/* union* -> double* -> i64* */
	llvm::Value *union_value = builder->CreateAlloca(union_type, 0, "union_storage");
	llvm::Value *dvalue = builder->CreateStructGEP(union_value, 0, "cast_to_double_ptr");
	llvm::Value *casted_value = builder->CreateBitCast(dvalue, int_ptr_type, "cast_to_int_ptr");
	/* i64 -> i64* */
	builder->CreateStore(result, casted_value);
	return union_value;
}

llvm::Value *LLVM::generateUnionToIntCode(IRBuilder<> *builder, llvm::Value *result)
{
	/* union* -> double* -> i64* -> i64 */
	llvm::Value *dvalue = builder->CreateStructGEP(result, 0, "cast_to_double_ptr");
	llvm::Value *casted_value = builder->CreateBitCast(dvalue, int_ptr_type, "cast_to_int_ptr");
	return builder->CreateLoad(casted_value, "cast_to_int");
}

void LLVM::generateLastEvaluatedReturnCode(IRBuilder<> *builder)
{
	llvm::Type::TypeID type_id = last_evaluated_value->getType()->getTypeID();
	llvm::Value *result = NULL;
	if (type_id == llvm::Type::VoidTyID) {
		result = builder->CreateAlloca(union_type, 0, "last_evaluated_rvalue");
		builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, ConstantInt::get(int_type, 0))), result);
	} else {
		result = last_evaluated_value;
	}
	assert(result && "this function is nothing statement");
	assert(cur_func == main_func && "main_func");
	llvm::Value *ret = generateUnionToIntCode(builder, result);
	builder->CreateRet(ret);
}

void LLVM::generateReturnCode(IRBuilder<> *builder, ReturnNode *node)
{
	llvm::Value *result = generateValueCode(builder, node->body);
	llvm::Value *ret = generateUnionToIntCode(builder, result);
	switch (cur_type) {
	case Enum::Runtime::Int: {
		builder->CreateRet(ret);
		cur_type = Enum::Runtime::Int;
		break;
	}
	default:
		builder->CreateRet(ret);
		break;
	}
}

void LLVM::generateWhileStmtCode(IRBuilder<> *builder, WhileStmtNode *node)
{
	LLVMContext &ctx = getGlobalContext();

	BasicBlock *loop_head = BasicBlock::Create(ctx, "loop_head", cur_func);
	BasicBlock *true_block = BasicBlock::Create(ctx, "true_block", cur_func);
	BasicBlock *after_block = BasicBlock::Create(ctx, "after_block", cur_func);
	builder->CreateBr(loop_head);
	builder->SetInsertPoint(loop_head);
	llvm::Value *_cond = generateCastedValueCode(builder, node->expr);
	llvm::Value *zero = ConstantInt::get(int_type, 0);
	llvm::Value *cond = builder->CreateICmpNE(_cond, zero);
	builder->CreateCondBr(cond, true_block, after_block);

	builder->SetInsertPoint(true_block);
	Node *true_stmt = node->true_stmt;
	for (; true_stmt != NULL; true_stmt = true_stmt->next) {
		generateCode(builder, true_stmt);
	}
	builder->CreateBr(loop_head);

	builder->SetInsertPoint(after_block);
}

void LLVM::generateSingleTermOperatorCode(IRBuilder<> *builder, SingleTermOperatorNode *node)
{
	using namespace TokenType;
	llvm::Value *value = generateCastedValueCode(builder, node->expr);
	Token *tk = node->expr->tk;
	Enum::Runtime::Type type = cur_type;
	CodeGenerator::Value *v = vmgr.getVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent);
	llvm::Value *one = ConstantInt::get(int_type, 1);
	llvm::Value *f_one = ConstantFP::get(double_type, 1.0);
	llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, v->value);
	switch (node->tk->info.type) {
	case Inc:
		if (type == Enum::Runtime::Int) {
			llvm::Value *new_value = createNaNBoxingInt(builder, builder->CreateAdd(value, one, "inc"));
			builder->CreateStore(builder->CreateLoad(new_value), builder->CreateStructGEP(object, 1));
			cur_type = Enum::Runtime::Int;
		} else {
			llvm::Value *casted_value = builder->CreateSIToFP(value, double_type);
			llvm::Value *new_value = createNaNBoxingDouble(builder, builder->CreateFAdd(casted_value, f_one, "inc"));
			builder->CreateStore(builder->CreateLoad(new_value), builder->CreateStructGEP(object, 1));
			cur_type = Enum::Runtime::Double;
		}
		break;
	case Dec:
		if (type == Enum::Runtime::Int) {
			llvm::Value *new_value = createNaNBoxingInt(builder, builder->CreateSub(value, one, "dec"));
			builder->CreateStore(builder->CreateLoad(new_value), builder->CreateStructGEP(object, 1));
			cur_type = Enum::Runtime::Int;
		} else {
			llvm::Value *casted_value = builder->CreateSIToFP(value, double_type);
			llvm::Value *new_value = createNaNBoxingDouble(builder, builder->CreateFSub(casted_value, f_one, "dec"));
			builder->CreateStore(builder->CreateLoad(new_value), builder->CreateStructGEP(object, 1));
			cur_type = Enum::Runtime::Double;
		}
		break;
	default:
		break;
	}
}

llvm::Value *LLVM::generateAssignCode(IRBuilder<> *builder, BranchNode *node)
{
	llvm::Value *value = generateValueCode(builder, node->right);
	Enum::Runtime::Type value_type = cur_type;
	llvm::Value *ret = NULL;
	if (TYPE_match(node->left, ListNode)) {
		assert(value_type == Enum::Runtime::Array && "not array type");
		vector<CodeGenerator::Value *> *list = generateListDefinitionCode(builder, dynamic_cast<ListNode *>(node->left));
		size_t size = list->size();
		llvm::Value *array = generateCastCode(builder, value_type, value);
		for (size_t i = 0; i < size; i++) {
			CodeGenerator::Value *v = list->at(i);
			llvm::Value *idx = ConstantInt::get(int_type, i);
			llvm::Value *elem = getArrayElement(builder, array, idx);
			llvm::Value *body = builder->CreateStructGEP(v->value, 1, "body");
			builder->CreateStore(builder->CreateLoad(elem), body);
		}
		ret = value;
	} else if (TYPE_match(node->left, ArrayNode)) {
		llvm::Value *elem = generateArrayAccessCode(builder, dynamic_cast<ArrayNode *>(node->left));
		builder->CreateStore(builder->CreateLoad(value), elem);
	} else {
		Token *tk = node->left->tk;
		CodeGenerator::Value *v = vmgr.getVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent);
		if (!v) {
			llvm::Value *o = NULL;
			if (cur_type == Enum::Runtime::Array) {
				o = value;
			} else {
				llvm::Value *tmp = builder->CreateAlloca(object_type, 0, node->left->tk->data.c_str());
				builder->CreateStore(builder->CreateLoad(value), builder->CreateStructGEP(tmp, 1));
				o = createNaNBoxingObject(builder, tmp);
			}
			v = (CodeGenerator::Value *)malloc(sizeof(CodeGenerator::Value));
			v->type = cur_type;
			v->value = o;
			vmgr.setVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent, v);
		} else {
			if (v->type == Enum::Runtime::Array) {
				asm("int3");
			} else {
				/* v->value is Object */
				llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, v->value);
				builder->CreateStore(builder->CreateLoad(value), builder->CreateStructGEP(object, 1));
			}
		}
		ret = v->value;
	}
	return ret;
}

llvm::Value *LLVM::generateCastCode(IRBuilder<> *builder, Enum::Runtime::Type type, llvm::Value *value)
{
	/* union* -> i64 or double or Object* or ArrayObject* */
	llvm::Value *ret = value;
	switch (type) {
	case Enum::Runtime::Int: {
		llvm::Value *result = builder->CreateLoad(builder->CreateBitCast(value, int_ptr_type, "union_to_int_ptr"), "dereference");
		ret = builder->CreateIntCast(builder->CreateIntCast(result, int32_type, true, "trunc_int_cast"), int_type, true, "i32_to_i64_cast");
		break;
	}
	case Enum::Runtime::Double:
		ret = builder->CreateLoad(builder->CreateBitCast(value, double_ptr_type));
		break;
	case Enum::Runtime::Array: {
		llvm::Value *ivalue = builder->CreateLoad(builder->CreateBitCast(value, int_ptr_type));
		llvm::Value *nan = ConstantInt::get(int_type, NaN);
		llvm::Value *array_tag = ConstantInt::get(int_type, ARRAY_TAG);
		llvm::Value *result = builder->CreateXor(ivalue, builder->CreateOr(nan, array_tag));
		ret = builder->CreateIntToPtr(result, array_ptr_type);
		break;
	}
	case Enum::Runtime::Object: {
		llvm::Value *ivalue = builder->CreateLoad(builder->CreateBitCast(value, int_ptr_type));
		llvm::Value *nan = ConstantInt::get(int_type, NaN);
		llvm::Value *object_tag = ConstantInt::get(int_type, OBJECT_TAG);
		llvm::Value *result = builder->CreateXor(ivalue, builder->CreateOr(nan, object_tag));
		ret = builder->CreateIntToPtr(result, object_ptr_type);
		break;
	}
	default:
		break;
	}
	return ret;
}

llvm::Value *LLVM::generateBinaryOperatorCode(IRBuilder<> *builder, Enum::Runtime::Type left_type, llvm::Value *left, Enum::Runtime::Type right_type, llvm::Value *right, Instruction::BinaryOps op, Instruction::BinaryOps fop, const char *fname)
{
	llvm::Value *ret = NULL;
	if (left_type == Enum::Runtime::Value || right_type == Enum::Runtime::Value) {
		ret = generateOperatorCodeWithObject(builder, left_type, left, right_type, right, fname);
	} else {
		if (left_type == Enum::Runtime::Int && right_type == Enum::Runtime::Int) {
			llvm::Value *result = builder->CreateBinOp(op, left, right, "binary_op");
			ret = createNaNBoxingInt(builder, result);
			cur_type = Enum::Runtime::Int;
		} else {
			llvm::Value *casted_left_value = builder->CreateSIToFP(left, double_type);
			llvm::Value *casted_right_value = builder->CreateSIToFP(right, double_type);
			llvm::Value *result = builder->CreateBinOp(fop, casted_left_value, casted_right_value, "binary_op");
			ret = createNaNBoxingDouble(builder, result);
			cur_type = Enum::Runtime::Double;
		}
	}
	return ret;
}

llvm::Value *LLVM::generateBinaryOperatorCode(IRBuilder<> *builder, Enum::Runtime::Type left_type, llvm::Value *left, Enum::Runtime::Type right_type, llvm::Value *right, CmpInst::Predicate op, CmpInst::Predicate fop, const char *fname)
{
	llvm::Value *ret = NULL;
	if (left_type == Enum::Runtime::Value || right_type == Enum::Runtime::Value) {
		ret = generateOperatorCodeWithObject(builder, left_type, left, right_type, right, fname);
	} else {
		llvm::Value *result = NULL;
		if (left_type == Enum::Runtime::Int && right_type == Enum::Runtime::Int) {
			result = builder->CreateZExt(builder->CreateICmp(op, left, right, "cmp_op"), int_type);
		} else {
			llvm::Value *casted_left_value = builder->CreateSIToFP(left, double_type);
			llvm::Value *casted_right_value = builder->CreateSIToFP(right, double_type);
			result = builder->CreateZExt(builder->CreateFCmp(fop, casted_left_value, casted_right_value, "cmp_op"), int_type);
		}
		ret = createNaNBoxingInt(builder, result);
	}
	cur_type = Enum::Runtime::Int;
	return ret;
}

llvm::Value *LLVM::generateOperatorCode(IRBuilder<> *builder, BranchNode *node)
{
	using namespace TokenType;
	llvm::Value *left_value = generateValueCode(builder, node->left);
	Enum::Runtime::Type left_type = cur_type;
	llvm::Value *right_value = generateValueCode(builder, node->right);
	Enum::Runtime::Type right_type = cur_type;
	llvm::Value *ret = NULL;
	llvm::Value *left = generateCastCode(builder, left_type, left_value);
	llvm::Value *right = generateCastCode(builder, right_type, right_value);
	switch (node->tk->info.type) {
	case Add:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, Instruction::Add, Instruction::FAdd, "add");
		break;
	case Sub:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, Instruction::Sub, Instruction::FSub, "sub");
		break;
	case Mul:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, Instruction::Mul, Instruction::FMul, "mul");
		break;
	case Div:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, Instruction::SDiv, Instruction::FDiv, "div");
		break;
	case BitAnd:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, Instruction::And, Instruction::And, "and");
		break;
	case Mod:
		break;
	case EqualEqual:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, CmpInst::ICMP_EQ, CmpInst::FCMP_OEQ, "eq");
		break;
	case NotEqual:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, CmpInst::ICMP_NE, CmpInst::FCMP_ONE, "ne");
		break;
	case Greater:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, CmpInst::ICMP_SGT, CmpInst::FCMP_OGT, "gt");
		break;
	case Less:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, CmpInst::ICMP_SLT, CmpInst::FCMP_OLT, "lt");
		break;
	case And: {
		LLVMContext &ctx = getGlobalContext();
		llvm::Value *result = builder->CreateAlloca(union_type, 0, "__hidden_cond__");

		llvm::Value *zero = ConstantInt::get(int_type, 0);
		llvm::Value *cond = NULL;
		switch (left_type) {
		case Enum::Runtime::Int:
			cond = builder->CreateICmpNE(left, zero);
			break;
		case Enum::Runtime::Double:
			cond = builder->CreateFCmpONE(left, builder->CreateSIToFP(zero, double_type));
			break;
		default: {
			vector<llvm::Type *> arg_types;
			arg_types.push_back(union_type);
			llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
			FunctionType *ftype = llvm::FunctionType::get(boolean_type, arg_types_ref, false);
			llvm::Constant *f = module->getOrInsertFunction("Object_isTrue", ftype);
			cond = builder->CreateCall(f, builder->CreateLoad(left), "object");
			break;
		}
		}
		BasicBlock *true_block = BasicBlock::Create(ctx, "true_block", cur_func);
		BasicBlock *false_block = BasicBlock::Create(ctx, "false_block", cur_func);
		BasicBlock *merge_block = BasicBlock::Create(ctx, "merge_block", cur_func);
		builder->CreateCondBr(cond, true_block, false_block);
		builder->SetInsertPoint(true_block);

		switch (right_type) {
		case Enum::Runtime::Int:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, right)), result);
			break;
		case Enum::Runtime::Double:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingDouble(builder, right)), result);
			break;
		default:
			asm("int3");
			break;
		}

		builder->CreateBr(merge_block);

		builder->SetInsertPoint(false_block);
		builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, zero)), result);
		builder->CreateBr(merge_block);

		builder->SetInsertPoint(merge_block);
		ret = builder->CreateAlloca(union_type, 0, "__hidden_cond__");
		builder->CreateStore(builder->CreateLoad(result), ret);
		cur_type = Enum::Runtime::Value;
		break;
	}
	case Or: {
		LLVMContext &ctx = getGlobalContext();
		llvm::Value *result = builder->CreateAlloca(union_type, 0, "__hidden_cond__");
		llvm::Value *zero = ConstantInt::get(int_type, 0);
		llvm::Value *cond = NULL;
		switch (left_type) {
		case Enum::Runtime::Int:
			cond = builder->CreateICmpNE(left, zero);
			break;
		case Enum::Runtime::Double:
			cond = builder->CreateFCmpONE(left, builder->CreateSIToFP(zero, double_type));
			break;
		default: {
			vector<llvm::Type *> arg_types;
			arg_types.push_back(union_type);
			llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
			FunctionType *ftype = llvm::FunctionType::get(boolean_type, arg_types_ref, false);
			llvm::Constant *f = module->getOrInsertFunction("Object_isTrue", ftype);
			cond = builder->CreateCall(f, builder->CreateLoad(left), "object");
			break;
		}
		}
		BasicBlock *true_block = BasicBlock::Create(ctx, "true_block", cur_func);
		BasicBlock *false_block = BasicBlock::Create(ctx, "false_block", cur_func);
		BasicBlock *merge_block = BasicBlock::Create(ctx, "merge_block", cur_func);
		builder->CreateCondBr(cond, true_block, false_block);
		builder->SetInsertPoint(true_block);

		switch (left_type) {
		case Enum::Runtime::Int:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, left)), result);
			break;
		case Enum::Runtime::Double:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingDouble(builder, left)), result);
			break;
		default:
			asm("int3");
			break;
		}

		builder->CreateBr(merge_block);

		builder->SetInsertPoint(false_block);
		switch (right_type) {
		case Enum::Runtime::Int:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, right)), result);
			break;
		case Enum::Runtime::Double:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingDouble(builder, right)), result);
			break;
		default:
			asm("int3");
			break;
		}
		builder->CreateBr(merge_block);
			
		builder->SetInsertPoint(merge_block);
		ret = builder->CreateAlloca(union_type, 0, "__hidden_cond__");
		builder->CreateStore(builder->CreateLoad(result), ret);
		cur_type = Enum::Runtime::Value;
		break;
	}
	default:
		break;
	}
	last_evaluated_value = ret;
	return ret;
}

llvm::Value *LLVM::generateOperatorCodeWithObject(IRBuilder<> *builder,
												  Enum::Runtime::Type left_type, llvm::Value *left_value,
												  Enum::Runtime::Type right_type, llvm::Value *right_value,
												  const char *func_name)
{
	llvm::Value *ret = NULL;
	string fname = "Object_" + string(func_name);
	vector<llvm::Type *> arg_types;
	llvm::Constant *f = NULL;
	if (left_type == Enum::Runtime::Value && right_type == Enum::Runtime::Value) {
		arg_types.push_back(union_ptr_type);
		arg_types.push_back(union_ptr_type);
		llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
		f = module->getOrInsertFunction(fname + "Object", ftype);
	} else if (left_type == Enum::Runtime::Value && right_type == Enum::Runtime::Int) {
		arg_types.push_back(union_ptr_type);
		arg_types.push_back(int_type);
		llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
		f = module->getOrInsertFunction(fname + "Int", ftype);
	} else if (left_type == Enum::Runtime::Int && right_type == Enum::Runtime::Value) {
		arg_types.push_back(int_type);
		arg_types.push_back(union_ptr_type);
		llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
		f = module->getOrInsertFunction(fname + "Int2", ftype);
	} else if (left_type == Enum::Runtime::Double && right_type == Enum::Runtime::Value) {
		arg_types.push_back(double_type);
		arg_types.push_back(union_ptr_type);
		llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
		f = module->getOrInsertFunction(fname + "Double2", ftype);
	} else if (left_type == Enum::Runtime::Value && right_type == Enum::Runtime::Double) {
		arg_types.push_back(union_ptr_type);
		arg_types.push_back(double_type);
		llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
		f = module->getOrInsertFunction(fname + "Double", ftype);
	} else {
		assert(0 && "error");
	}
	CallInst *result = builder->CreateCall2(f, left_value, right_value, "object");
	ret = generateReceiveUnionValueCode(builder, result);
	cur_type = Enum::Runtime::Value;
	return ret;
}

vector<CodeGenerator::Value *> *LLVM::generateListDefinitionCode(IRBuilder<> *builder, ListNode *node)
{
	Node *data = node->data;
	vector<CodeGenerator::Value *> *list = new vector<CodeGenerator::Value *>();
	if (data->tk->info.type == TokenType::Comma) {
		generateCommaCode(builder, dynamic_cast<BranchNode *>(data), list);
	} else {
		CodeGenerator::Value *v = new CodeGenerator::Value();
		v->value = generateValueCode(builder, data);
		v->type = cur_type;
		v->tk = data->tk;
		list->push_back(v);
	}
	return list;
}

llvm::Value *LLVM::generateListCode(IRBuilder<> *builder, ListNode *node)
{
	Node *data = node->data;
	vector<CodeGenerator::Value *> list;
	if (data->tk->info.type == TokenType::Comma) {
		generateCommaCode(builder, dynamic_cast<BranchNode *>(data), &list);
	} else {
		CodeGenerator::Value *v = new CodeGenerator::Value();
		v->value = generateValueCode(builder, data);
		v->type = cur_type;
		v->tk = data->tk;
		list.push_back(v);
	}
	size_t size = list.size();
	llvm::Value *elems = builder->CreateAlloca(union_type, ConstantInt::get(int_type, size), "elems");
	for (size_t i = 0; i < size; i++) {
		CodeGenerator::Value *v = list.at(i);
		llvm::Value *value = v->value;
		Enum::Runtime::Type type = v->type;
		llvm::Value *idx = ConstantInt::get(int_type, i);
		if (type == Enum::Runtime::Object) {
			Token *tk = v->tk;
			llvm::Value *value = vmgr.getVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent)->value;
			builder->CreateStore(builder->CreateLoad(value), builder->CreateGEP(elems, idx));
		} else {
			builder->CreateStore(builder->CreateLoad(value), builder->CreateGEP(elems, idx));
		}
	}
	cur_type = Enum::Runtime::Array;
	return createNaNBoxingArray(builder, createArray(builder, elems, size));
}

void LLVM::generateCommaCode(IRBuilder<> *builder, BranchNode *node, vector<CodeGenerator::Value *> *list)
{
	BranchNode *branch = dynamic_cast<BranchNode *>(node);
	Node *left = branch->left;
	if (left->tk->info.type == TokenType::Comma) {
		generateCommaCode(builder, dynamic_cast<BranchNode *>(branch->left), list);
	} else {
		CodeGenerator::Value *value = new CodeGenerator::Value();
		value->value = generateValueCode(builder, branch->left);
		value->type = cur_type;
		value->tk = branch->left->tk;
		list->push_back(value);
	}
	if (!branch->right) return;
	Node *right = branch->right;
	if (right->tk->info.type == TokenType::Comma) {
		generateCommaCode(builder, dynamic_cast<BranchNode *>(branch->right), list);
	} else {
		CodeGenerator::Value *value = new CodeGenerator::Value();
		value->value = generateValueCode(builder, branch->right);
		value->type = cur_type;
		value->tk = branch->right->tk;
		list->push_back(value);
	}
}

llvm::Value *LLVM::generateArrayAccessCode(IRBuilder<> *builder, ArrayNode *node)
{
	llvm::Value *ret = NULL;
	llvm::Value *idx = generateCastedValueCode(builder, node->idx);
	if (node->tk->type == TokenType::SpecificValue) {
		Function::ArgumentListType &args = cur_func->getArgumentList();
		Function::ArgumentListType::iterator it = args.begin();
		Argument *arg = &*it;
		ret = getArrayElement(builder, arg, idx);
	} else {
		string name = node->tk->data;
		name[0] = '@';
		CodeGenerator::Value *v = vmgr.getVariable(cur_func_name.c_str(), name.c_str(), node->tk->finfo.indent);
		assert(v && "array is not defined");
		llvm::Value *array = generateCastCode(builder, Enum::Runtime::Array, v->value);
		ret = getArrayElement(builder, array, idx);
	}
	cur_type = Enum::Runtime::Value;
	return ret;
}

llvm::Value *LLVM::generateValueCode(IRBuilder<> *builder, Node *node)
{
	using namespace TokenType;
	llvm::Value *ret = NULL;
	Token *tk = node->tk;
	switch (tk->info.kind) {
	case TokenKind::Operator:
		ret = generateOperatorCode(builder, dynamic_cast<BranchNode *>(node));
		break;
	default:
		break;
	}
	if (TYPE_match(node, ListNode)) {
		ret = generateListCode(builder, dynamic_cast<ListNode *>(node));
	} else if (TYPE_match(node, FunctionCallNode)) {
		ret = generateFunctionCallCode(builder, dynamic_cast<FunctionCallNode *>(node));
	} else if (TYPE_match(node, ArrayNode)) {
		ret = generateArrayAccessCode(builder, dynamic_cast<ArrayNode *>(node));
	}
	if (ret) return ret;
	switch (tk->info.type) {
	case String: {
		llvm::Value *result = builder->CreateGlobalStringPtr(tk->data.c_str());
		ret = createNaNBoxingString(builder, result);
		cur_type = Enum::Runtime::String;
		break;
	}
	case RawString:
		break;
	case ExecString:
		break;
	case Int: {
		int ivalue = atoi(tk->data.c_str());
		llvm::Value *v = builder->CreateAlloca(union_type, 0, "ivalue");
		Constant *integer = ConstantInt::get(int_type, (uint64_t)INT_init(ivalue));
		builder->CreateStore(integer, builder->CreateBitCast(v, int_ptr_type, "union_to_int_ptr"));
		ret = v;
		cur_type = Enum::Runtime::Int;
		break;
	}
	case Double: {
		llvm::Value *result = ConstantFP::get(double_type, atof(tk->data.c_str()));
		ret = createNaNBoxingDouble(builder, result);
		cur_type = Enum::Runtime::Double;
		break;
	}
	case GlobalVar: case Var: {
		CodeGenerator::Value *var = vmgr.getVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent);
		if (!var) {
			ret = builder->CreateAlloca(object_type, 0, tk->data.c_str());
			CodeGenerator::Value *v = (CodeGenerator::Value *)malloc(sizeof(CodeGenerator::Value));
			v->type = Enum::Runtime::Object;
			v->value = createNaNBoxingObject(builder, ret);
			vmgr.setVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent, v);
			cur_type = Enum::Runtime::Object;
		} else {
			llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, var->value);
			ret = builder->CreateStructGEP(object, 1);
			cur_type = var->type;
		}
		break;
	}
	case GlobalArrayVar: case ArrayVar: {
		CodeGenerator::Value *var = vmgr.getVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent);
		ret = var->value;
		cur_type = var->type;
		break;
	}
	case ArgumentArray:
		ret = createNaNBoxingArray(builder, getArgumentArray(builder));
		cur_type = Enum::Runtime::Array;
		break;
	default:
		break;
	}
	last_evaluated_value = ret;
	return ret;
}

llvm::Value *LLVM::getArgumentArray(IRBuilder<> *)
{
	Function::ArgumentListType &args = cur_func->getArgumentList();
	Function::ArgumentListType::iterator it = args.begin();
	llvm::Argument *arg = &*it;
	return arg;
}

llvm::Value *LLVM::createArgumentArray(IRBuilder<> *builder, FunctionCallNode *node)
{
	size_t size = node->args->size();
	assert(size == 1 && "argument size error");
	Node *arg = node->args->at(0);
	llvm::Value *ret = NULL;
	if (TYPE_match(arg, ListNode)) {
		ret = generateCastCode(builder, Enum::Runtime::Array, generateListCode(builder, dynamic_cast<ListNode *>(arg)));
	} else if (arg->tk->info.type == TokenType::Comma) {
		vector<CodeGenerator::Value *> list;
		generateCommaCode(builder, dynamic_cast<BranchNode *>(arg), &list);
		size_t size = list.size();
		llvm::Value *args = builder->CreateAlloca(union_type, ConstantInt::get(int_type, size), "args");
		for (size_t i = 0; i < size; i++) {
			CodeGenerator::Value *v = list.at(i);
			llvm::Value *value = v->value;
			Enum::Runtime::Type type = v->type;
			Token *tk = v->tk;
			llvm::Value *idx = ConstantInt::get(int_type, i);
			if (type == Enum::Runtime::Object || type == Enum::Runtime::Array) {
				if (tk->type == TokenType::Var || tk->type == TokenType::ArrayVar) {
					llvm::Value *elem = vmgr.getVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent)->value;
					builder->CreateStore(builder->CreateLoad(elem, "elem"), builder->CreateGEP(args, idx, "get_idx"));
				} else {
					builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
				}
			} else {
				builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
			}
		}
		ret = createArray(builder, args, size);
	} else {
		llvm::Value *args = builder->CreateAlloca(union_type, ConstantInt::get(int_type, 1), "args");
		llvm::Value *value = generateValueCode(builder, arg);
		llvm::Value *idx = ConstantInt::get(int_type, 0);
		if (cur_type == Enum::Runtime::Object || cur_type == Enum::Runtime::Array) {
			Token *tk = arg->tk;
			if (tk->type == TokenType::Var || tk->type == TokenType::ArrayVar) {
				llvm::Value *elem = vmgr.getVariable(cur_func_name.c_str(), tk->data.c_str(), tk->finfo.indent)->value;
				builder->CreateStore(builder->CreateLoad(elem, "elem"), builder->CreateGEP(args, idx, "get_idx"));
			} else {
				builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
			}
		} else {
			builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
		}
		ret = createArray(builder, args, 1);
	}
	return ret;
}

llvm::Value *LLVM::generateFunctionCallCode(IRBuilder<> *builder, FunctionCallNode *node)
{
	vector<llvm::Value *> values;
	vector<Enum::Runtime::Type> types;
	vector<Token *> tokens;
	llvm::Value *vargs = (node->args->size() > 0) ? createArgumentArray(builder, node) : NULL;
	llvm::Value *ret = NULL;
	cur_args = vargs;
	if (node->tk->type == TokenType::BuiltinFunc) {
		string name = node->tk->data;
		Constant *func = getBuiltinFunction(builder, name);
		if (name == "shift" && !vargs) {
			/* shift of argument array */
			llvm::Value *elem = createNaNBoxingArray(builder, getArgumentArray(builder));
			llvm::Value *args = builder->CreateAlloca(union_type, ConstantInt::get(int_type, 1), "args");
			llvm::Value *idx = ConstantInt::get(int_type, 0);
			builder->CreateStore(builder->CreateLoad(elem), builder->CreateGEP(args, idx, "get_idx"));
			vargs = createArray(builder, args, 1);
		}
		llvm::Value *result = builder->CreateCall(func, vargs);
		if (name == "shift" || name == "push") {
			ret = generateReceiveUnionValueCode(builder, result);
		} else {
			ret = result;
		}
	} else {
		llvm::Value *func = fmgr.getFunction("main", node->tk->data.c_str());
		CallInst *result = builder->CreateCall(func, vargs, "function_rvalue");
		result->setCallingConv(CallingConv::Fast);
		result->setTailCall(true);
		ret = generateReceiveUnionValueCode(builder, result);
	}
	cur_type = Enum::Runtime::Value;
	last_evaluated_value = ret;
	return ret;
}

Constant *LLVM::getBuiltinFunction(IRBuilder<> *builder, string name)
{
	Constant *ret = NULL;
	vector<Type*> arg_types;
	if (name == "debug_print") {
		FunctionType *ftype = llvm::FunctionType::get(builder->getVoidTy(), value_type, false);
		ret = module->getOrInsertFunction(name, ftype);
	} else if (name == "print" || name == "say") {
		FunctionType *ftype = llvm::FunctionType::get(builder->getVoidTy(), array_ptr_type, false);
		//ftype->getParamType(0)->dump();
		ret = module->getOrInsertFunction(name, ftype);
	} else if (name == "shift" || name == "push") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction(name, ftype);
		cur_type = Enum::Runtime::Value;
	} else if (name == "puts") {
		arg_types.push_back(builder->getInt8Ty()->getPointerTo());
		ArrayRef<Type*> arg_types_ref(arg_types);
		FunctionType* ftype = FunctionType::get(
			IntegerType::get(module->getContext(), 32),
			arg_types_ref,
			false);
		ret = module->getOrInsertFunction(name, ftype);
	} else {
		FunctionType *ftype = llvm::FunctionType::get(builder->getVoidTy(), array_ptr_type, false);
		//ftype->getParamType(0)->dump();
		ret = Function::Create(ftype, Function::ExternalLinkage, "print", module);
	}
	return ret;
}

llvm::Value *LLVM::createNaNBoxingInt(IRBuilder<> *builder, llvm::Value *value)
{
	llvm::Value *union_ptr = builder->CreateAlloca(union_type, 0, "int_ptr");
	llvm::Value *mask = ConstantInt::get(int_type, MASK);
	llvm::Value *nan = ConstantInt::get(int_type, NaN);
	llvm::Value *int_tag = ConstantInt::get(int_type, INT_TAG);
	llvm::Value *nan_boxing_ivalue = builder->CreateOr(builder->CreateOr(builder->CreateAnd(value, mask), nan), int_tag);
	builder->CreateStore(nan_boxing_ivalue, builder->CreateBitCast(union_ptr, int_ptr_type, "union_to_int_ptr"));
	return union_ptr;
}

llvm::Value *LLVM::createNaNBoxingDouble(IRBuilder<> *builder, llvm::Value *value)
{
	llvm::Value *union_ptr = builder->CreateAlloca(union_type, 0, "double_ptr");
	builder->CreateStore(value, builder->CreateBitCast(union_ptr, double_ptr_type));
	return union_ptr;
}

llvm::Value *LLVM::createNaNBoxingString(IRBuilder<> *builder, llvm::Value *_value)
{
	llvm::Value *union_ptr = builder->CreateAlloca(union_type, 0, "string_ptr");
	llvm::Value *value = builder->CreatePtrToInt(_value, int_type);
	llvm::Value *nan = ConstantInt::get(int_type, (int64_t)NaN);
	llvm::Value *string_tag = ConstantInt::get(int_type, (int64_t)STRING_TAG);
	llvm::Value *nan_boxing_value = builder->CreateOr(builder->CreateOr(value, nan), string_tag);
	builder->CreateStore(nan_boxing_value, builder->CreateBitCast(union_ptr, int_ptr_type));
	return union_ptr;
}

llvm::Value *LLVM::createNaNBoxingArray(IRBuilder<> *builder, llvm::Value *_value)
{
	llvm::Value *union_ptr = builder->CreateAlloca(union_type, 0, "array_ptr");
	llvm::Value *value = builder->CreatePtrToInt(_value, int_type);
	llvm::Value *nan = ConstantInt::get(int_type, NaN);
	llvm::Value *array_tag = ConstantInt::get(int_type, ARRAY_TAG);
	llvm::Value *nan_boxing_value = builder->CreateOr(builder->CreateOr(value, nan), array_tag);
	builder->CreateStore(nan_boxing_value, builder->CreateBitCast(union_ptr, int_ptr_type));
	return union_ptr;
}

llvm::Value *LLVM::createNaNBoxingObject(IRBuilder<> *builder, llvm::Value *_value)
{
	llvm::Value *union_ptr = builder->CreateAlloca(union_type, 0, "object_ptr");
	llvm::Value *value = builder->CreatePtrToInt(_value, int_type);
	llvm::Value *nan = ConstantInt::get(int_type, NaN);
	llvm::Value *object_tag = ConstantInt::get(int_type, OBJECT_TAG);
	llvm::Value *nan_boxing_value = builder->CreateOr(builder->CreateOr(value, nan), object_tag);
	builder->CreateStore(nan_boxing_value, builder->CreateBitCast(union_ptr, int_ptr_type));
	return union_ptr;
}

llvm::Value *LLVM::createArray(IRBuilder<> *builder, llvm::Value *list, size_t size)
{
	llvm::Value *array = builder->CreateAlloca(array_type, 0, "array");
	llvm::Value *array_type = builder->CreateStructGEP(array, 0, "array_type");
	llvm::Value *array_list = builder->CreateStructGEP(array, 1, "array_list");
	llvm::Value *array_size = builder->CreateStructGEP(array, 2, "array_size");
	builder->CreateStore(ConstantInt::get(int32_type, Enum::Runtime::Array), array_type);
	builder->CreateStore(list, array_list);
	builder->CreateStore(ConstantInt::get(int_type, size), array_size);
	return array;
}

void LLVM::debug_run(AST *ast)
{
	gen(ast);
	string errStr;
	InitializeNativeTarget();
	ExecutionEngine *engine = EngineBuilder(module).setErrorStr(&errStr).setUseMCJIT(true).create();
	//cout << errStr << endl;
	Function *main = NULL;
	vector<GenericValue> args;
	assert((main = module->getFunction("main")) && "main function was not declared");
	engine->runFunction(main, args);
	//fprintf(stderr, "%d\n", program());
}
