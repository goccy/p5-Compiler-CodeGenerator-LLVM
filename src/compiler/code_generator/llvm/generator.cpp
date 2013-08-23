#include <parser.hpp>
#include <fstream>
#include <sstream>
#include <codegen.hpp>

using namespace llvm;
using namespace CodeGenerator;
using namespace std;
namespace TokenType = Enum::Token::Type;
namespace TokenKind = Enum::Token::Kind;

LLVM::LLVM(void) : last_evaluated_value(NULL), cur_pkg_name("main"), has_return_statement(false)
{
	//LLVMContext &ctx = getGlobalContext();
	module = new llvm::Module("LLVMIR", ctx);
	cur_args = NULL;
}

void LLVM::set_library_paths(vector<const char *> *paths)
{
	library_paths.clear();
	library_paths.insert(library_paths.end(), paths->begin(), paths->end());
}

void LLVM::createRuntimeTypes(void)
{
	//LLVMContext &ctx = getGlobalContext();
	vector<Type *> fields;
	void_type = llvm::Type::getVoidTy(ctx);
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
	array_ref_type = StructType::create(ArrayRef<Type *>(fields), "ArrayRef", false);
	hash_ref_type = StructType::create(ArrayRef<Type *>(fields), "HashRef", false);
	array_ref_ptr_type = PointerType::get(array_ref_type, 0);
	hash_ref_ptr_type = PointerType::get(hash_ref_type, 0);

	fields.clear();

	object_ptr_type = PointerType::get(object_type, 0);
	object_double_ptr_type = PointerType::get(object_ptr_type, 0);

	fields.push_back(Type::getInt32Ty(ctx));
	fields.push_back(PointerType::get(PointerType::get(union_type, 0), 0));
	//fields.push_back(PointerType::get(union_type, 0));
	fields.push_back(Type::getInt64Ty(ctx));
	array_type = StructType::create(ArrayRef<Type *>(fields), "ArrayObject");
	array_ptr_type = PointerType::get(array_type, 0);

	fields.clear();

	fields.push_back(Type::getInt32Ty(ctx));
	fields.push_back(PointerType::get(union_type, 0));
	fields.push_back(PointerType::get(void_ptr_type, 0));
	fields.push_back(int_type);
	hash_type = StructType::create(ArrayRef<Type *>(fields), "HashObject");
	hash_ptr_type = PointerType::get(hash_type, 0);

	fields.clear();

	fields.push_back(Type::getInt32Ty(ctx));
	fields.push_back(void_ptr_type);
	fields.push_back(int_type);
	fields.push_back(int_type);
	string_type = StructType::create(ArrayRef<Type *>(fields), "StringObject");
	string_ptr_type = PointerType::get(string_type, 0);

	fields.clear();

	code_ptr_type = PointerType::get(llvm::FunctionType::get(int_type, array_ptr_type, false), 0);
	fields.push_back(Type::getInt32Ty(ctx));
	fields.push_back(code_ptr_type);
	code_ref_type = StructType::create(ArrayRef<Type *>(fields), "CodeRefObject");
	code_ref_ptr_type = PointerType::get(code_ref_type, 0);

	fields.push_back(Type::getInt32Ty(ctx));
	fields.push_back(union_type);
	fields.push_back(hash_ptr_type);
	fields.push_back(void_ptr_type);
	blessed_object_type = StructType::create(ArrayRef<Type *>(fields), "BlessedObject");
	blessed_object_ptr_type = PointerType::get(blessed_object_type, 0);
}

bool LLVM::linkModule(llvm::Module *dest, string file_name)
{
	SMDiagnostic err;
	string err_msg;
	llvm::Module *link_mod = ParseIRFile(file_name, err, ctx);//getGlobalContext());
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
	//LLVMContext &ctx = getGlobalContext();
	linkModule(module, "gen/runtime_api.lli");
	union_type = module->getTypeByName("union.UnionType");
	union_ptr_type = PointerType::get(union_type, 0);
	createRuntimeTypes();
	generateGetMethodByName();
	generateFetchObject();
	generateGetUndefValue();

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
	entry_point = entry;
	builder.SetInsertPoint(entry);

	FunctionType *ftype = llvm::FunctionType::get(void_type, false);
	llvm::Constant *f = module->getOrInsertFunction("global_init", ftype);
	builder.CreateCall(f);

	traverse(&builder, ast);

	llvm::Value *zero = ConstantInt::get(int_type, 0);
	builder.CreateRet(zero);

	PassManager pm;
	//pm.add(createPromoteMemoryToRegisterPass());
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
	} else if (TYPE_match(node, PackageNode)) {
		generatePackageCode(builder, dynamic_cast<PackageNode *>(node));
	} else if (TYPE_match(node, ModuleNode)) {
		generateModuleCode(builder, dynamic_cast<ModuleNode *>(node));
	} else {
		//assert(0 && "Sorry, still not supported");
	}
}

void LLVM::generateGetMethodByName(void)
{
	vector<llvm::Type *> arg_types;
	arg_types.push_back(blessed_object_ptr_type);
	arg_types.push_back(void_ptr_type);
	llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
	FunctionType *ftype = llvm::FunctionType::get(code_ptr_type, arg_types_ref, false);
	get_method_by_name = module->getOrInsertFunction("get_method_by_name", ftype);
}

void LLVM::generateGetUndefValue(void)
{
	FunctionType *ftype = llvm::FunctionType::get(int_type, false);
	get_undef_value = module->getOrInsertFunction("get_undef_value", ftype);
}

void LLVM::generateFetchObject(void)
{
	FunctionType *ftype = llvm::FunctionType::get(object_ptr_type, false);
	fetch_object = module->getOrInsertFunction("fetch_object", ftype);
}

void LLVM::generatePackageCode(IRBuilder<> *, PackageNode *node)
{
	cur_pkg_name = node->tk->data;
	cur_func_name = "main";
}

void LLVM::generateModuleCode(IRBuilder<> *builder, ModuleNode *node)
{
	traverse(builder, node->ast);
}

string LLVM::stringReplace(string str, string from, string to) {
    string::size_type pos = 0;
	string ret = str;
    while (pos = ret.find(from, pos), pos != string::npos) {
        ret.replace(pos, from.length(), to);
        pos += to.length();
    }
	return ret;
}

string LLVM::find_file(string filepath, string dirname, DIR *dp)
{
	string fullpath = "";
	struct dirent *entp;
	while ((entp = readdir(dp)) != NULL) {
		string pm_name = filepath + ".pm";
		string subdir_path = dirname + "/" + string(entp->d_name);
		DIR *dir = opendir(subdir_path.c_str());
		if (dir && string(entp->d_name) != "." &&
			string(entp->d_name) != "..") {
			fullpath = find_file(filepath, subdir_path, dir);
			if (fullpath != "") break;
		} else if (pm_name == string(entp->d_name)) {
			fullpath = subdir_path;
			break;
		}
		closedir(dir);
	}
	return fullpath;
}

string LLVM::load_file(string filepath)
{
	vector<const char *>::iterator it = library_paths.begin();
	string fullpath = "";
	while (it != library_paths.end()) {
		const char *path = *it;
		DIR* dp = opendir(path);
		if (dp == NULL) {
			fprintf(stderr, "cannot open directory [%s]\n", path);
			exit(EXIT_FAILURE);
		}
		struct dirent *entp;
		while ((entp = readdir(dp)) != NULL) {
			string pm_name = filepath + ".pm";
			string subdir_path = string(path) + "/" + string(entp->d_name);
			DIR *dir = opendir(subdir_path.c_str());
			if (dir && string(entp->d_name) != "." &&
				string(entp->d_name) != "..") {
				fullpath = find_file(filepath, subdir_path, dir);
				if (fullpath != "") break;
			} else if (pm_name == string(entp->d_name)) {
				fullpath = subdir_path;
				break;
			}
			closedir(dir);
		}
		if (fullpath != "") break;
		closedir(dp);
		it++;
	}
	FILE *fp = NULL;
	if ((fp = fopen(fullpath.c_str(), "r")) == NULL) {
		fprintf(stderr, "cannot open file [%s]\n", fullpath.c_str());
		exit(EXIT_FAILURE);
	}
	char readbuf[256] = {0};
	string code = "";
	while (fgets(readbuf, 256, fp) != NULL) {
		code += string(readbuf);
	}
	return code;
}

BasicBlock *LLVM::generateBlockCode(IRBuilder<> *builder, BasicBlock *block, BasicBlock *merge_block, Node *node)
{
	builder->SetInsertPoint(block);
	bool tmp = has_return_statement;
	llvm::Value *tmp_evaluated_value = last_evaluated_value;
	for (; node != NULL; node = node->next) {
		generateCode(builder, node);
	}
	builder->CreateBr(merge_block);
	has_return_statement = tmp;
	last_evaluated_value = tmp_evaluated_value;
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
	llvm::Value *size = builder->CreateLoad(builder->CreateStructGEP(array, 2, "array_size_ptr"), "array_size");
	return builder->CreatePtrToInt(size, int_type, "ptr_to_int");
}

llvm::Value *LLVM::getArrayElement(IRBuilder<> *builder, llvm::Value *array, llvm::Value *idx)
{
	vector<llvm::Type *> arg_types;
	arg_types.push_back(array_ptr_type);
	arg_types.push_back(int_type);
	llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
	FunctionType *ftype = llvm::FunctionType::get(union_ptr_type, arg_types_ref, false);
	llvm::Constant *Array_get = module->getOrInsertFunction("Array_get", ftype);
	llvm::Value *result = builder->CreateCall2(Array_get, array, idx, "Array_get");
	return result;
}

llvm::Value *LLVM::getArrayElementBySimpleAccess(IRBuilder<> *builder, llvm::Value *array, llvm::Value *idx)
{
	llvm::Value *list = builder->CreateLoad(builder->CreateStructGEP(array, 1, "fetch_list"), "load_list");
	return builder->CreateGEP(list, idx, "get_elem");
}

llvm::Value *LLVM::getHashValue(IRBuilder<> *builder, llvm::Value *hash, llvm::Value *key)
{
	llvm::Value *table = builder->CreateLoad(builder->CreateStructGEP(hash, 1, "fetch_table"), "load_table");
	llvm::Value *key_hash = builder->CreateLoad(builder->CreateStructGEP(key, 3, "fetch_key_hash"), "load_key_hash");
	return builder->CreateGEP(table, key_hash, "get_hvalue");
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
	} else if (cur_type == Enum::Runtime::Value) {
		vector<llvm::Type *> arg_types;
		arg_types.push_back(union_ptr_type);
		llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(boolean_type, arg_types_ref, false);
		llvm::Constant *f = module->getOrInsertFunction("Value_isTrue", ftype);
		cond = builder->CreateCall(f, expr, "value");
	} else {
		cond = builder->CreateICmpNE(expr, zero);
	}
	//LLVMContext &ctx = getGlobalContext();
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
	//LLVMContext &ctx = getGlobalContext();
	generateCode(builder, node->init);

	BasicBlock *loop_head = BasicBlock::Create(ctx, "loop_head", cur_func);
	BasicBlock *true_block = BasicBlock::Create(ctx, "true_block", cur_func);
	BasicBlock *after_block = BasicBlock::Create(ctx, "after_block", cur_func);
	builder->CreateBr(loop_head);
	builder->SetInsertPoint(loop_head);
	llvm::Value *_cond = generateValueCode(builder, node->cond);
	llvm::Value *zero = ConstantInt::get(int_type, 0);
	llvm::Value *cond = builder->CreateICmpNE(generateCastCode(builder, cur_type, _cond), zero, "ne");
	builder->CreateCondBr(cond, true_block, after_block);

	builder->SetInsertPoint(true_block);
	Node *true_stmt = node->true_stmt;
	for (; true_stmt != NULL; true_stmt = true_stmt->next) {
		generateCode(builder, true_stmt);
	}
	generateCode(builder, node->progress);
	builder->CreateBr(loop_head);

	builder->SetInsertPoint(after_block);
	if (cur_pkg_name == "main" && cur_func_name == "main") {
		main_entry = after_block;
	}
	last_evaluated_value = _cond;
}

void LLVM::setIteratorValue(IRBuilder<> *builder, Node *node)
{
	Token *tk = node->tk;
	llvm::Value *o = builder->CreateAlloca(object_type, 0, tk->data.c_str());
	CodeGenerator::Value *v = (CodeGenerator::Value *)malloc(sizeof(CodeGenerator::Value));
	v->type = cur_type;
	v->value = createNaNBoxingObject(builder, o);
	setupVariable(builder, v, tk);
}

void LLVM::generateForeachStmtCode(IRBuilder<> *builder, ForeachStmtNode *node)
{
	//LLVMContext &ctx = getGlobalContext();
	BasicBlock *loop_head = BasicBlock::Create(ctx, "loop_head", cur_func);
	BasicBlock *true_block = BasicBlock::Create(ctx, "true_block", cur_func);
	BasicBlock *after_block = BasicBlock::Create(ctx, "after_block", cur_func);

	llvm::Value *tmp_evaluated_value = last_evaluated_value;
	llvm::Value *array = generateCastedValueCode(builder, node->cond);
	assert(cur_type == Enum::Runtime::Array && "type must be Array at foreach");

	llvm::Value *array_size = getArraySize(builder, array);
	setIteratorValue(builder, node->itr);
	llvm::Value *itr_value = lookupVariable(node->itr->tk->data, node->itr->tk)->value;
	llvm::Value *hidden_idx = builder->CreateAlloca(int_type, 0, "__hidden_idx__");
	llvm::Value *zero = ConstantInt::get(int_type, 0);
	builder->CreateStore(zero, hidden_idx);

	builder->CreateBr(loop_head);
	builder->SetInsertPoint(loop_head);
	llvm::Value *idx = builder->CreateLoad(hidden_idx, "hidden_idx");
	llvm::Value *_cond = builder->CreateZExt(builder->CreateICmpSLT(idx, array_size), int_type, "zext");
	llvm::Value *cond = builder->CreateICmpNE(_cond, zero);
	builder->CreateCondBr(cond, true_block, after_block);

	builder->SetInsertPoint(true_block);
	llvm::Value *elem = getArrayElement(builder, array, idx);
	itr_value = elem;

	CodeGenerator::Value *itr = lookupVariable(node->itr->tk->data, node->itr->tk);
	itr->value = elem;
	setupVariable(builder, itr, node->itr->tk);

	Node *true_stmt = node->true_stmt;
	for (; true_stmt != NULL; true_stmt = true_stmt->next) {
		generateCode(builder, true_stmt);
	}

	llvm::Value *one = ConstantInt::get(int_type, 1);
	llvm::Value *incremented_value = builder->CreateAdd(builder->CreatePtrToInt(idx, int_type), one, "inc");
	builder->CreateStore(incremented_value, hidden_idx);
	builder->CreateBr(loop_head);

	builder->SetInsertPoint(after_block);
	last_evaluated_value = tmp_evaluated_value;
}

void LLVM::generateFunctionCode(IRBuilder<> *builder, FunctionNode *node)
{
	FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
	Function *func = Function::Create(
		ftype,
		GlobalValue::ExternalLinkage,
		node->tk->data.c_str(), module
	);
	fmgr.setFunction(cur_pkg_name.c_str(), node->tk->data.c_str(), func);

	vector<llvm::Type *> arg_types;
	arg_types.push_back(void_ptr_type);
	arg_types.push_back(void_ptr_type);
	arg_types.push_back(PointerType::get(ftype, 0));
	llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
	FunctionType *_ftype = llvm::FunctionType::get(void_type, arg_types_ref, false);
	llvm::Constant *f = module->getOrInsertFunction("store_method_by_pkg_name", _ftype);
	llvm::Value *pkg = builder->CreateGlobalStringPtr(cur_pkg_name.c_str());
	llvm::Value *mtd = builder->CreateGlobalStringPtr(node->tk->data.c_str());
	builder->CreateCall3(f, pkg, mtd, func);

	llvm::Function *main_func = cur_func;

	cur_func = func;
	cur_func_name = node->tk->data.c_str();
	func->setCallingConv(CallingConv::Fast);
	BasicBlock *entry = BasicBlock::Create(module->getContext(), "entrypoint", func);
	entry_point = entry;
	builder->SetInsertPoint(entry);

	has_return_statement = false;
	Node *body = node->body;
	for (; body != NULL; body = body->next) {
		generateCode(builder, body);
	}
	if (!has_return_statement) generateLastEvaluatedReturnCode(builder);

	cur_func = main_func;
	cur_func_name = "main";
	builder->SetInsertPoint(main_entry);
	entry_point = main_entry;
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
		builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, ConstantInt::get(int_type, 0)), "load_nanint"), result);
	} else {
		result = last_evaluated_value;
	}
	assert(result && "this function is nothing statement");
	//assert(cur_func == main_func && "main_func");
	llvm::Value *ret = generateUnionToIntCode(builder, result);
	builder->CreateRet(ret);
}

void LLVM::generateReturnCode(IRBuilder<> *builder, ReturnNode *node)
{
	llvm::Value *result = (node->body) ?
		generateValueCode(builder, node->body) :
		createNaNBoxingInt(builder, ConstantInt::get(int_type, 0));
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
	//LLVMContext &ctx = getGlobalContext();

	BasicBlock *loop_head = BasicBlock::Create(ctx, "loop_head", cur_func);
	BasicBlock *true_block = BasicBlock::Create(ctx, "true_block", cur_func);
	BasicBlock *after_block = BasicBlock::Create(ctx, "after_block", cur_func);
	builder->CreateBr(loop_head);
	builder->SetInsertPoint(loop_head);
	llvm::Value *_cond = generateCastedValueCode(builder, node->expr);
	llvm::Value *zero = ConstantInt::get(int_type, 0);
	llvm::Value *cond = builder->CreateICmpNE(_cond, zero, "ne");
	builder->CreateCondBr(cond, true_block, after_block);

	builder->SetInsertPoint(true_block);
	Node *true_stmt = node->true_stmt;
	for (; true_stmt != NULL; true_stmt = true_stmt->next) {
		generateCode(builder, true_stmt);
	}
	builder->CreateBr(loop_head);

	builder->SetInsertPoint(after_block);
}

llvm::Value *LLVM::generateSingleTermOperatorCode(IRBuilder<> *builder, SingleTermOperatorNode *node)
{
	using namespace TokenType;
	llvm::Value *ret = NULL;
	if (node->tk->info.type == TokenType::CodeRef) {
		Node *expr = node->expr;
		switch (expr->tk->info.type) {
		case Call: {
			llvm::Value *code = fmgr.getFunction(cur_pkg_name.c_str(), expr->tk->data.c_str());
			llvm::Value *code_ref = createCodeRef(builder, code);
			ret = createNaNBoxingCodeRef(builder, code_ref);
			break;
		}
		default:
			break;
		}
	}
	if (ret) return ret;
	Token *tk = node->expr->tk;
	CodeGenerator::Value *v = lookupVariable(tk->data, tk);
	llvm::Value *one = ConstantInt::get(int_type, 1);
	llvm::Value *minus_one = ConstantInt::get(int_type, -1);
	llvm::Value *f_one = ConstantFP::get(double_type, 1.0);
	llvm::Value *minus_f_one = ConstantFP::get(double_type, -1.0);
	llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, v->value);
	switch (node->tk->info.type) {
	case Inc: {
		llvm::Value *value = generateCastedValueCode(builder, node->expr);
		Enum::Runtime::Type type = cur_type;
		if (type == Enum::Runtime::Int) {
			llvm::Value *new_value = createNaNBoxingInt(builder, builder->CreateAdd(value, one, "inc"));
			builder->CreateStore(builder->CreateLoad(new_value, "load_value"), builder->CreateStructGEP(object, 1, "object_body"));
			cur_type = Enum::Runtime::Int;
		} else {
			llvm::Value *casted_value = builder->CreateSIToFP(value, double_type);
			llvm::Value *new_value = createNaNBoxingDouble(builder, builder->CreateFAdd(casted_value, f_one, "inc"));
			builder->CreateStore(builder->CreateLoad(new_value, "load_value"), builder->CreateStructGEP(object, 1, "object_body"));
			cur_type = Enum::Runtime::Double;
		}
		break;
	}
	case Dec: {
		llvm::Value *value = generateCastedValueCode(builder, node->expr);
		Enum::Runtime::Type type = cur_type;
		if (type == Enum::Runtime::Int) {
			llvm::Value *new_value = createNaNBoxingInt(builder, builder->CreateSub(value, one, "dec"));
			builder->CreateStore(builder->CreateLoad(new_value, "load_value"), builder->CreateStructGEP(object, 1, "object_body"));
			cur_type = Enum::Runtime::Int;
		} else {
			llvm::Value *casted_value = builder->CreateSIToFP(value, double_type);
			llvm::Value *new_value = createNaNBoxingDouble(builder, builder->CreateFSub(casted_value, f_one, "dec"));
			builder->CreateStore(builder->CreateLoad(new_value, "load_value"), builder->CreateStructGEP(object, 1, "object_body"));
			cur_type = Enum::Runtime::Double;
		}
		break;
	}
	case Sub: {
		llvm::Value *value = generateCastedValueCode(builder, node->expr);
		Enum::Runtime::Type type = cur_type;
		if (type == Enum::Runtime::Int) {
			ret = createNaNBoxingInt(builder, builder->CreateMul(minus_one, value, "sub"));
			cur_type = Enum::Runtime::Int;
		} else if (type == Enum::Runtime::Value) {
			//TODO
			llvm::Value *casted_value = generateCastCode(builder, Enum::Runtime::Double, value);
			ret = createNaNBoxingDouble(builder, builder->CreateFMul(minus_f_one, casted_value, "sub"));
			cur_type = Enum::Runtime::Double;
		} else {
			llvm::Value *casted_value = builder->CreateSIToFP(value, double_type);
			ret = createNaNBoxingDouble(builder, builder->CreateFMul(minus_f_one, casted_value, "sub"));
			cur_type = Enum::Runtime::Double;
		}
		break;
	}
	case Ref: {
		llvm::Value *value = generateValueCode(builder, node->expr);
		Enum::Runtime::Type type = cur_type;
		if (type == Enum::Runtime::Array) {
			ret = createNaNBoxingArrayRef(builder, createArrayRef(builder, value));
			cur_type = Enum::Runtime::ArrayRef;
		} else if (type == Enum::Runtime::Hash) {
			ret = createNaNBoxingHashRef(builder, createHashRef(builder, value));
			cur_type = Enum::Runtime::HashRef;
		}
		break;
	}
	default:
		break;
	}
	return ret;
}

CodeGenerator::Value *LLVM::lookupVariable(string _name, Token *tk)
{
	string func_name = cur_pkg_name + "::" + cur_func_name;
	const char *fname = func_name.c_str();
	const char *name = _name.c_str();
	size_t indent = tk->finfo.indent;
	CodeGenerator::Value *v = vmgr.getVariable(fname, name, indent);
	if (v) return v;
	return vmgr.getVariable("main::main", name, 0);
}

void LLVM::setupVariable(IRBuilder<> *builder, CodeGenerator::Value *value, Token *tk)
{
	string func_name = cur_pkg_name + "::" + cur_func_name;
	if (cur_func_name == "main") {
		GlobalVariable *gvalue = new GlobalVariable(*module, union_type,
													false, GlobalValue::CommonLinkage,
													Constant::getNullValue(union_type),
													"global_value");
		gvalue->setAlignment(8);
		builder->CreateStore(builder->CreateLoad(value->value, "load_value"), gvalue);
		value->value = gvalue;
		vmgr.setVariable(func_name.c_str(), tk->data.c_str(), tk->finfo.indent, value);
	} else {
		vmgr.setVariable(func_name.c_str(), tk->data.c_str(), tk->finfo.indent, value);
	}
}

llvm::Value *LLVM::generateAssignCode(IRBuilder<> *builder, BranchNode *node)
{
	using namespace TokenType;
	llvm::Value *value = NULL;
	switch (node->tk->info.type) {
	case AddEqual: case SubEqual: case MulEqual: case DivEqual:
		value = generateOperatorCode(builder, node);
		break;
	default:
		value = generateValueCode(builder, node->right);
		break;
	}
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
			builder->CreateStore(builder->CreateLoad(elem, "elem"), body);
		}
		ret = value;
	} else if (TYPE_match(node->left, ArrayNode)) {
		llvm::Value *elem = generateArrayAccessCode(builder, dynamic_cast<ArrayNode *>(node->left));
		builder->CreateStore(builder->CreateLoad(value, "load_value"), elem);
	} else if (TYPE_match(node->left, HashNode)) {
		llvm::Value *elem = generateHashAccessCode(builder, dynamic_cast<HashNode *>(node->left));
		builder->CreateStore(builder->CreateLoad(value, "load_value"), elem);
	} else if (node->left->tk->info.type == TokenType::Pointer) {
		llvm::Value *elem = generateOperatorCode(builder, dynamic_cast<BranchNode *>(node->left));
		builder->CreateStore(builder->CreateLoad(value, "load_value"), elem);
	} else {
		Token *tk = node->left->tk;
		CodeGenerator::Value *v = lookupVariable(tk->data, tk);
		if (!v) {
			llvm::Value *o = NULL;
			TokenType::Type type = tk->info.type;
			if (value_type == Enum::Runtime::Array && (type == TokenType::LocalHashVar)) {
				vector<llvm::Type *> arg_types;
				arg_types.push_back(array_ptr_type);
				llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
				FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
				llvm::Constant *f = module->getOrInsertFunction("new_Hash", ftype);
				llvm::Value *array = generateCastCode(builder, value_type, value);
				CallInst *result = builder->CreateCall(f, array, "hash");
				o = generateReceiveUnionValueCode(builder, result);
				cur_type = Enum::Runtime::Hash;
			} else if (value_type == Enum::Runtime::Hash &&
					   (type == TokenType::ArrayVar || type == TokenType::LocalArrayVar)) {
				llvm::Value *result = generateHashToArrayCode(builder, value);
				o = generateReceiveUnionValueCode(builder, result);
			} else if (cur_type == Enum::Runtime::Array ||
					   cur_type == Enum::Runtime::ArrayRef ||
					   cur_type == Enum::Runtime::HashRef ||
					   cur_type == Enum::Runtime::BlessedObject) {
				o = value;
			} else {
				llvm::Value *tmp = builder->CreateAlloca(object_type, 0, node->left->tk->data.c_str());
				builder->CreateStore(builder->CreateLoad(value, "load_value"), builder->CreateStructGEP(tmp, 1, "object_body"));
				o = createNaNBoxingObject(builder, tmp);
			}
			v = (CodeGenerator::Value *)malloc(sizeof(CodeGenerator::Value));
			v->type = cur_type;
			v->value = o;
			setupVariable(builder, v, tk);
		} else {
			if (v->type == Enum::Runtime::Array) {
				asm("int3");
			} else {
				/* v->value is Object */
				llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, v->value);
				builder->CreateStore(builder->CreateLoad(value, "load_value"), builder->CreateStructGEP(object, 1, "object_body"));
			}
		}
		ret = v->value;
	}
	return ret;
}

llvm::Value *LLVM::generateHashToArrayCode(IRBuilder<> *builder, llvm::Value *value)
{
	vector<llvm::Type *> arg_types;
	arg_types.push_back(hash_ptr_type);
	llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
	FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
	llvm::Constant *f = module->getOrInsertFunction("Hash_to_array", ftype);
	llvm::Value *hash = generateCastCode(builder, Enum::Runtime::Hash, value);
	CallInst *result = builder->CreateCall(f, hash, "hash_to_array");
	return result;
}

llvm::Value *LLVM::generateDereferenceCode(IRBuilder<> *builder, DereferenceNode *node)
{
	Node *expr = node->expr;
	llvm::Value *ret = NULL;
	if (expr->tk->info.type == TokenType::ShortArrayDereference) {
		string name = expr->tk->data;
		string orig_name = name.substr(1);
		CodeGenerator::Value *v = lookupVariable(orig_name, node->tk);
		assert(v && "value is not defined");
		llvm::Value *boxed_array_ref = NULL;
		if (v->type != Enum::Runtime::ArrayRef) {
			/* v->value is Object */
			llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, v->value);
			boxed_array_ref = builder->CreateStructGEP(object, 1, "object_body");
		} else {
			boxed_array_ref = v->value;
		}
		ret = generateArrayRefToArrayCode(builder, boxed_array_ref);
		cur_type = Enum::Runtime::Array;
	} else if (expr->tk->info.type == TokenType::ShortHashDereference) {
		string name = expr->tk->data;
		string orig_name = name.substr(1);
		CodeGenerator::Value *v = lookupVariable(orig_name, node->tk);
		assert(v && "value is not defined");
		llvm::Value *boxed_hash_ref = NULL;
		if (v->type != Enum::Runtime::HashRef) {
			/* v->value is Object */
			llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, v->value);
			boxed_hash_ref = builder->CreateStructGEP(object, 1, "object_body");
		} else {
			boxed_hash_ref = v->value;
		}
		ret = generateHashRefToHashCode(builder, boxed_hash_ref);
		cur_type = Enum::Runtime::Hash;
	}
	return ret;
}

llvm::Value *LLVM::generateCodeDereferenceCode(IRBuilder<> *builder, DereferenceNode *code_node, Node *args_node)
{
	string name = code_node->tk->data;
	string orig_name = name.substr(1);
	CodeGenerator::Value *v = lookupVariable(orig_name, code_node->tk);
	assert(v && "value is not defined");
	llvm::Value *boxed_code_ref = NULL;
	if (v->type != Enum::Runtime::CodeRef) {
		/* v->value is Object */
		llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, v->value);
		boxed_code_ref = builder->CreateStructGEP(object, 1, "object_body");
	} else {
		boxed_code_ref = v->value;
	}
	llvm::Value *code_ref = generateCastCode(builder, Enum::Runtime::CodeRef, boxed_code_ref);
	llvm::Value *code = builder->CreateLoad(builder->CreateStructGEP(code_ref, 1, "coderef_body"));
	llvm::Value *_args = builder->CreateAlloca(union_ptr_type, ConstantInt::get(int_type, 1), "args");
	llvm::Value *idx = ConstantInt::get(int_type, 0);
	llvm::Value *value = generateValueCode(builder, args_node);
	builder->CreateStore(value, builder->CreateGEP(_args, idx, "get_idx"));
	//builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(_args, idx, "get_idx"));
	llvm::Value *args = createArray(builder, _args, 1);
	llvm::Value *result = builder->CreateCall(code, args);
	return generateReceiveUnionValueCode(builder, result);
}

llvm::Value *LLVM::generateHashRefToHashCode(IRBuilder<> *builder, llvm::Value *boxed_hash_ref)
{
	llvm::Value *hash_ref = generateCastCode(builder, Enum::Runtime::HashRef, boxed_hash_ref);
	llvm::Value *boxed_hash = builder->CreateStructGEP(hash_ref, 1, "hashref_body");
	return boxed_hash;
}

llvm::Value *LLVM::generateArrayRefToArrayCode(IRBuilder<> *builder, llvm::Value *boxed_array_ref)
{
	llvm::Value *array_ref = generateCastCode(builder, Enum::Runtime::ArrayRef, boxed_array_ref);
	llvm::Value *boxed_array = builder->CreateStructGEP(array_ref, 1, "arrayref_body");
	return boxed_array;
}

llvm::Value *LLVM::generateHashRefCode(IRBuilder<> *builder, HashRefNode *node)
{
	llvm::Value *boxed_array = generateListCode(builder, (ListNode *)node);
	llvm::Value *array = generateCastCode(builder, Enum::Runtime::Array, boxed_array);
	vector<llvm::Type *> arg_types;
	arg_types.push_back(array_ptr_type);
	llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
	FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
	llvm::Constant *f = module->getOrInsertFunction("new_Hash", ftype);
	CallInst *result = builder->CreateCall(f, array, "hash");
	llvm::Value *boxed_hash = generateReceiveUnionValueCode(builder, result);
	llvm::Value *hash_ref = createHashRef(builder, boxed_hash);
	cur_type = Enum::Runtime::HashRef;
	return createNaNBoxingHashRef(builder, hash_ref);
}

llvm::Value *LLVM::generateArrayRefCode(IRBuilder<> *builder, ArrayRefNode *node)
{
	llvm::Value *boxed_array = generateListCode(builder, (ListNode *)node);
	llvm::Value *array_ref = createArrayRef(builder, boxed_array);
	cur_type = Enum::Runtime::ArrayRef;
	return createNaNBoxingArrayRef(builder, array_ref);
}

llvm::Value *LLVM::generateCastCode(IRBuilder<> *builder, Enum::Runtime::Type type, llvm::Value *value)
{
	/* union* -> i64 or double or Object* or ArrayObject* or some pointer types */
	llvm::Value *ret = value;
	switch (type) {
	case Enum::Runtime::Int: {
		llvm::Value *result = builder->CreateLoad(builder->CreateBitCast(value, int_ptr_type, "union_to_int_ptr"), "dereference");
		ret = builder->CreateIntCast(builder->CreateIntCast(result, int32_type, true, "trunc_int_cast"), int_type, true, "i32_to_i64_cast");
		break;
	}
	case Enum::Runtime::Double:
		ret = builder->CreateLoad(builder->CreateBitCast(value, double_ptr_type, "cast_to_double_ptr"), "load_double");
		break;
	case Enum::Runtime::String:
		ret = generatePtrCastCode(builder, value, STRING_TAG, string_ptr_type);
		break;
	case Enum::Runtime::Array:
		ret = generatePtrCastCode(builder, value, ARRAY_TAG, array_ptr_type);
		break;
	case Enum::Runtime::Hash:
		ret = generatePtrCastCode(builder, value, HASH_TAG, hash_ptr_type);
		break;
	case Enum::Runtime::ArrayRef:
		ret = generatePtrCastCode(builder, value, ARRAY_REF_TAG, array_ref_ptr_type);
		break;
	case Enum::Runtime::HashRef:
		ret = generatePtrCastCode(builder, value, HASH_REF_TAG, hash_ref_ptr_type);
		break;
	case Enum::Runtime::CodeRef:
		ret = generatePtrCastCode(builder, value, CODE_REF_TAG, code_ref_ptr_type);
		break;
	case Enum::Runtime::Object:
		ret = generatePtrCastCode(builder, value, OBJECT_TAG, object_ptr_type);
		break;
	case Enum::Runtime::BlessedObject:
		ret = generatePtrCastCode(builder, value, BLESSED_OBJECT_TAG, blessed_object_ptr_type);
		break;
	default:
		break;
	}
	return ret;
}

llvm::Value *LLVM::generateDynamicCastCode(IRBuilder<> *builder, Enum::Runtime::Type type, llvm::Value *value)
{
	vector<llvm::Type *> arg_types;
	arg_types.push_back(union_ptr_type);
	llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
	llvm::Constant *f = NULL;
	switch (type) {
	case Enum::Runtime::Int: {
		FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_int_cast_code", ftype);
		break;
	}
	case Enum::Runtime::Double: {
		FunctionType *ftype = llvm::FunctionType::get(double_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_double_cast_code", ftype);
		break;
	}
	case Enum::Runtime::String: {
		FunctionType *ftype = llvm::FunctionType::get(string_ptr_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_string_cast_code", ftype);
		break;
	}
	case Enum::Runtime::Array: {
		FunctionType *ftype = llvm::FunctionType::get(array_ptr_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_array_cast_code", ftype);
		break;
	}
	case Enum::Runtime::Hash: {
		FunctionType *ftype = llvm::FunctionType::get(hash_ptr_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_hash_cast_code", ftype);
		break;
	}
	case Enum::Runtime::ArrayRef: {
		FunctionType *ftype = llvm::FunctionType::get(array_ref_ptr_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_array_ref_cast_code", ftype);
		break;
	}
	case Enum::Runtime::HashRef: {
		FunctionType *ftype = llvm::FunctionType::get(hash_ref_ptr_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_hash_ref_cast_code", ftype);
		break;
	}
	case Enum::Runtime::CodeRef: {
		FunctionType *ftype = llvm::FunctionType::get(code_ref_ptr_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_code_ref_cast_code", ftype);
		break;
	}
	case Enum::Runtime::BlessedObject: {
		FunctionType *ftype = llvm::FunctionType::get(blessed_object_ptr_type, arg_types_ref, false);
		f = module->getOrInsertFunction("dynamic_blessed_object_cast_code", ftype);
		break;
	}
	default:
		break;
	}
	cur_type = type;
	return builder->CreateCall(f, value, "dynamic_casted_value");
}

llvm::Value *LLVM::generatePtrCastCode(IRBuilder<> *builder, llvm::Value *value, uint64_t _tag, llvm::Type *to_type)
{
	llvm::Value *ivalue = builder->CreateLoad(builder->CreateBitCast(value, int_ptr_type, "bitcast"), "load_ivalue");
	llvm::Value *nan = ConstantInt::get(int_type, NaN);
	llvm::Value *tag = ConstantInt::get(int_type, _tag);
	llvm::Value *result = builder->CreateXor(ivalue, builder->CreateOr(nan, tag), "xor");
	return builder->CreateIntToPtr(result, to_type, "int_to_ptr");
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
			result = builder->CreateZExt(builder->CreateICmp(op, left, right, "cmp_op"), int_type, "zext");
		} else {
			llvm::Value *casted_left_value = builder->CreateSIToFP(left, double_type, "cast_to_double");
			llvm::Value *casted_right_value = builder->CreateSIToFP(right, double_type, "cast_to_double");
			result = builder->CreateZExt(builder->CreateFCmp(fop, casted_left_value, casted_right_value, "cmp_op"), int_type, "zext");
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
	//if (node->right->tk->data == "$h") asm("int3");
	llvm::Value *right_value = (node->right->tk->info.type != Method) ? generateValueCode(builder, node->right) : NULL;
	Enum::Runtime::Type right_type = (node->right->tk->info.type != Method) ? cur_type : Enum::Runtime::Undefined;
	llvm::Value *ret = NULL;
	llvm::Value *left = (left_value) ? generateCastCode(builder, left_type, left_value) : NULL;
	llvm::Value *right = (right_value) ? generateCastCode(builder, right_type, right_value) : NULL;
	switch (node->tk->info.type) {
	case Add: case AddEqual:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, Instruction::Add, Instruction::FAdd, "add");
		break;
	case Sub: case SubEqual:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, Instruction::Sub, Instruction::FSub, "sub");
		break;
	case Mul: case MulEqual:
		ret = generateBinaryOperatorCode(builder, left_type, left, right_type, right, Instruction::Mul, Instruction::FMul, "mul");
		break;
	case Div: case DivEqual:
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
		llvm::Value *result = builder->CreateAlloca(union_type, 0, "__hidden_cond__");

		llvm::Value *zero = ConstantInt::get(int_type, 0);
		llvm::Value *cond = NULL;
		switch (left_type) {
		case Enum::Runtime::Int:
			cond = builder->CreateICmpNE(left, zero, "ne");
			break;
		case Enum::Runtime::Double:
			cond = builder->CreateFCmpONE(left, builder->CreateSIToFP(zero, double_type, "cast_to_double"), "fne");
			break;
		default: {
			vector<llvm::Type *> arg_types;
			arg_types.push_back(union_type);
			llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
			FunctionType *ftype = llvm::FunctionType::get(boolean_type, arg_types_ref, false);
			llvm::Constant *f = module->getOrInsertFunction("Object_isTrue", ftype);
			cond = builder->CreateCall(f, builder->CreateLoad(left, "load_value"), "object");
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
			builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, right), "load_nanint"), result);
			break;
		case Enum::Runtime::Double:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingDouble(builder, right), "load_nandouble"), result);
			break;
		default:
			asm("int3");
			break;
		}

		builder->CreateBr(merge_block);

		builder->SetInsertPoint(false_block);
		builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, zero), "load_nanint"), result);
		builder->CreateBr(merge_block);

		builder->SetInsertPoint(merge_block);
		ret = builder->CreateAlloca(union_type, 0, "__hidden_cond__");
		builder->CreateStore(builder->CreateLoad(result, "load_hidden_cond"), ret);
		cur_type = Enum::Runtime::Value;
		break;
	}
	case Or: {
		llvm::Value *result = builder->CreateAlloca(union_type, 0, "__hidden_cond__");
		llvm::Value *zero = ConstantInt::get(int_type, 0);
		llvm::Value *cond = NULL;
		switch (left_type) {
		case Enum::Runtime::Int:
			cond = builder->CreateICmpNE(left, zero, "ne");
			break;
		case Enum::Runtime::Double:
			cond = builder->CreateFCmpONE(left, builder->CreateSIToFP(zero, double_type, "cast_to_double"), "fne");
			break;
		default: {
			vector<llvm::Type *> arg_types;
			arg_types.push_back(union_type);
			llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
			FunctionType *ftype = llvm::FunctionType::get(boolean_type, arg_types_ref, false);
			llvm::Constant *f = module->getOrInsertFunction("Object_isTrue", ftype);
			cond = builder->CreateCall(f, builder->CreateLoad(left, "load_value"), "object");
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
			builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, left), "load_int"), result);
			break;
		case Enum::Runtime::Double:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingDouble(builder, left), "load_double"), result);
			break;
		default:
			asm("int3");
			break;
		}

		builder->CreateBr(merge_block);

		builder->SetInsertPoint(false_block);
		switch (right_type) {
		case Enum::Runtime::Int:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingInt(builder, right), "load_int"), result);
			break;
		case Enum::Runtime::Double:
			builder->CreateStore(builder->CreateLoad(createNaNBoxingDouble(builder, right), "load_double"), result);
			break;
		default:
			asm("int3");
			break;
		}
		builder->CreateBr(merge_block);
			
		builder->SetInsertPoint(merge_block);
		ret = builder->CreateAlloca(union_type, 0, "__hidden_cond__");
		builder->CreateStore(builder->CreateLoad(result, "load_hidden_cond"), ret);
		cur_type = Enum::Runtime::Value;
		break;
	}
	case Pointer:
		if (right_type == Enum::Runtime::ArrayRef) {
			ret = generateArrayRefAccessCode(builder, left_value, right);
			cur_type = Enum::Runtime::Value;
		} else if (right_type == Enum::Runtime::HashRef) {
			ret = generateHashRefAccessCode(builder, left_value, right);
			cur_type = Enum::Runtime::Value;
		} else if (node->right->tk->info.type == Method) {
			if (node->left->tk->info.type == Class || node->left->tk->info.type == Key) {
				const char *pkg_name = node->left->tk->data.c_str();
				const char *mtd_name = node->right->tk->data.c_str();
				llvm::Value *pkg = builder->CreateGlobalStringPtr(pkg_name);
				FunctionCallNode *mtd_node = dynamic_cast<FunctionCallNode *>(node->right);
				llvm::Value *vargs = createArgumentArray(builder, mtd_node);
				vector<llvm::Type *> arg_types;
				arg_types.push_back(array_ptr_type);
				arg_types.push_back(void_ptr_type);
				llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
				FunctionType *ftype = llvm::FunctionType::get(void_type, arg_types_ref, false);
				llvm::Value *unshift = module->getOrInsertFunction("_unshift", ftype);
				builder->CreateCall2(unshift, vargs, pkg);
				llvm::Value *func = fmgr.getFunction(pkg_name, mtd_name);
				CallInst *result = builder->CreateCall(func, vargs, "function_rvalue");
				result->setCallingConv(CallingConv::Fast);
				result->setTailCall(true);
				ret = generateReceiveUnionValueCode(builder, result);
				cur_type = Enum::Runtime::BlessedObject;//TODO Object
			} else {
				const char *_mtd_name = node->right->tk->data.c_str();
				llvm::Value *mtd_name = builder->CreateGlobalStringPtr(_mtd_name);
				if (left_type == Enum::Runtime::Value) {
					left = generateCastCode(builder, Enum::Runtime::BlessedObject, left_value);
				} else if (left_type == Enum::Runtime::Object) {
					left = generateDynamicCastCode(builder, Enum::Runtime::BlessedObject, left_value);
				}
				CallInst *mtd = builder->CreateCall2(get_method_by_name, left, mtd_name, "method");
				FunctionCallNode *mtd_node = dynamic_cast<FunctionCallNode *>(node->right);
				llvm::Value *vargs = createArgumentArray(builder, mtd_node);
				vector<llvm::Type *> arg_types;
				arg_types.push_back(array_ptr_type);
				arg_types.push_back(blessed_object_ptr_type);
				llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
				FunctionType *ftype = llvm::FunctionType::get(void_type, arg_types_ref, false);
				llvm::Value *make_method_argument = module->getOrInsertFunction("_make_method_argument", ftype);
				builder->CreateCall2(make_method_argument, vargs, left);

				CallInst *result = builder->CreateCall(mtd, vargs, "function_rvalue");
				result->setCallingConv(CallingConv::Fast);
				result->setTailCall(true);
				ret = generateReceiveUnionValueCode(builder, result);
				cur_type = Enum::Runtime::Value;
			}
		} else {
			assert(0 && "ERROR: type error!!!");
		}
		break;
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
		llvm::Value *value = generateValueCode(builder, data);
		//llvm::Value *casted = generateCastCode(builder, Enum::Runtime::Object, value);
		v->value = value;//casted;
		v->type = Enum::Runtime::Value;
		v->tk = data->tk;
		list->push_back(v);
	}
	return list;
}

llvm::Value *LLVM::generateListCode(IRBuilder<> *builder, ListNode *node)
{
	Node *data = node->data;
	vector<CodeGenerator::Value *> list;
	if (data && (data->tk->info.type == TokenType::Comma || data->tk->info.type == TokenType::Arrow)) {
		generateCommaCode(builder, dynamic_cast<BranchNode *>(data), &list);
	} else if (data) {
		CodeGenerator::Value *v = new CodeGenerator::Value();
		v->value = generateValueCode(builder, data);
		v->type = (cur_type == Enum::Runtime::Object) ? Enum::Runtime::Value : cur_type;
		v->tk = data->tk;
		list.push_back(v);
	}
	size_t size = list.size();
	//llvm::Value *elems = builder->CreateAlloca(union_type, ConstantInt::get(int_type, size), "elems");
	llvm::Value *elems = builder->CreateAlloca(union_ptr_type, ConstantInt::get(int_type, size), "elems");
	for (size_t i = 0; i < size; i++) {
		CodeGenerator::Value *v = list.at(i);
		llvm::Value *value = v->value;
		Enum::Runtime::Type type = v->type;
		llvm::Value *idx = ConstantInt::get(int_type, i);
		if (type == Enum::Runtime::Object) {
			Token *tk = v->tk;
			llvm::Value *value = lookupVariable(tk->data, tk)->value;
			builder->CreateStore(value, builder->CreateGEP(elems, idx, "load_elem"));
			//builder->CreateStore(builder->CreateLoad(value, "load_value"), builder->CreateGEP(elems, idx, "load_elem"));
		} else {
			builder->CreateStore(value, builder->CreateGEP(elems, idx, "load_elem"));
			//builder->CreateStore(builder->CreateLoad(value, "load_value"), builder->CreateGEP(elems, idx, "load_elem"));
		}
	}
	cur_type = Enum::Runtime::Array;
	return createNaNBoxingArray(builder, createArray(builder, elems, size));
}

void LLVM::generateCommaCode(IRBuilder<> *builder, BranchNode *node, vector<CodeGenerator::Value *> *list)
{
	BranchNode *branch = dynamic_cast<BranchNode *>(node);
	Node *left = branch->left;
	if (left->tk->info.type == TokenType::Comma || left->tk->info.type == TokenType::Arrow) {
		generateCommaCode(builder, dynamic_cast<BranchNode *>(branch->left), list);
	} else {
		CodeGenerator::Value *value = new CodeGenerator::Value();
		value->value = generateValueCode(builder, branch->left);
		value->type = (cur_type == Enum::Runtime::Object) ? Enum::Runtime::Value : cur_type;
		value->tk = branch->left->tk;
		list->push_back(value);
	}
	if (!branch->right) return;
	Node *right = branch->right;
	if (right->tk->info.type == TokenType::Comma || right->tk->info.type == TokenType::Arrow) {
		generateCommaCode(builder, dynamic_cast<BranchNode *>(branch->right), list);
	} else {
		CodeGenerator::Value *value = new CodeGenerator::Value();
		value->value = generateValueCode(builder, branch->right);
		value->type = (cur_type == Enum::Runtime::Object) ? Enum::Runtime::Value : cur_type;
		value->tk = branch->right->tk;
		list->push_back(value);
	}
}

llvm::Value *LLVM::generateArrayAccessCode(IRBuilder<> *builder, ArrayNode *node)
{
	llvm::Value *ret = NULL;
	ArrayRefNode *idx_node = dynamic_cast<ArrayRefNode *>(node->idx);
	llvm::Value *idx = generateCastedValueCode(builder, idx_node->data);
	if (cur_type == Enum::Runtime::Value) {
		idx = generateCastCode(builder, Enum::Runtime::Int, idx);
	}
	if (node->tk->type == TokenType::SpecificValue) {
		Function::ArgumentListType &args = cur_func->getArgumentList();
		Function::ArgumentListType::iterator it = args.begin();
		Argument *arg = &*it;
		ret = builder->CreateLoad(getArrayElementBySimpleAccess(builder, arg, idx), "load_arg");
		//ret = getArrayElement(builder, arg, idx);
	} else {
		string name = node->tk->data;
		name[0] = '@';
		CodeGenerator::Value *v = lookupVariable(name, node->tk);
		assert(v && "array is not defined");
		llvm::Value *array = generateCastCode(builder, Enum::Runtime::Array, v->value);
		ret = getArrayElement(builder, array, idx);
	}
	cur_type = Enum::Runtime::Value;
	return ret;
}

llvm::Value *LLVM::generateHashAccessCode(IRBuilder<> *builder, HashNode *node)
{
	llvm::Value *ret = NULL;
	HashRefNode *key_node = dynamic_cast<HashRefNode *>(node->key);
	llvm::Value *key = generateCastedValueCode(builder, key_node->data);
	string name = node->tk->data;
	name[0] = '%';
	CodeGenerator::Value *v = lookupVariable(name, node->tk);
	assert(v && "hash is not defined");
	llvm::Value *hash = generateCastCode(builder, Enum::Runtime::Hash, v->value);
	ret = getHashValue(builder, hash, key); //TODO: not supported conflict of hash value
	cur_type = Enum::Runtime::Value;
	return ret;
}

llvm::Value *LLVM::getHashRefValue(IRBuilder<> *builder, llvm::Value *hash_ref, llvm::Value *key)
{
	vector<llvm::Type *> arg_types;
	arg_types.push_back(union_ptr_type);
	arg_types.push_back(string_ptr_type);
	llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
	FunctionType *ftype = llvm::FunctionType::get(union_ptr_type, arg_types_ref, false);
	llvm::Constant *HashRef_get = module->getOrInsertFunction("HashRef_get", ftype);
	llvm::Value *result = builder->CreateCall2(HashRef_get, hash_ref, key, "HashRef_get");
	return result;
}

llvm::Value *LLVM::generateArrayRefAccessCode(IRBuilder<> *builder, llvm::Value *array_ref, llvm::Value *_idx)
{
	llvm::Value *boxed_idx_array = builder->CreateStructGEP(_idx, 1, "arrayref_body");
	llvm::Value *idx_array = generateCastCode(builder, Enum::Runtime::Array, boxed_idx_array);
	llvm::Value *idx = generateCastCode(builder, Enum::Runtime::Int, getArrayElement(builder, idx_array, ConstantInt::get(int_type, 0)));
	vector<llvm::Type *> arg_types;
	arg_types.push_back(union_ptr_type);
	arg_types.push_back(int_type);
	llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
	FunctionType *ftype = llvm::FunctionType::get(union_ptr_type, arg_types_ref, false);
	llvm::Constant *ArrayRef_get = module->getOrInsertFunction("ArrayRef_get", ftype);
	llvm::Value *result = builder->CreateCall2(ArrayRef_get, array_ref, idx, "ArrayRef_get");
	return result;
	//llvm::Value *boxed_idx_array = builder->CreateStructGEP(_idx, 1, "arrayref_body");
	//llvm::Value *idx_array = generateCastCode(builder, Enum::Runtime::Array, boxed_idx_array);
	//llvm::Value *idx = generateCastCode(builder, Enum::Runtime::Int, getArrayElement(builder, idx_array, ConstantInt::get(int_type, 0)));
	//llvm::Value *boxed_array = builder->CreateStructGEP(array_ref, 1, "arrayref_body");
	//llvm::Value *array = generateCastCode(builder, Enum::Runtime::Array, boxed_array);
	//llvm::Value *ret = getArrayElement(builder, array, idx);
	//cur_type = Enum::Runtime::Value;
	//return ret;
}

llvm::Value *LLVM::generateHashRefAccessCode(IRBuilder<> *builder, llvm::Value *hash_ref, llvm::Value *key_hash_ref)
{
	llvm::Value *key_hash = generateCastCode(builder, Enum::Runtime::Hash, builder->CreateStructGEP(key_hash_ref, 1, "hashref_body"));
	llvm::Value *keys = builder->CreateLoad(builder->CreateStructGEP(key_hash, 2, "keys"), "load_keys");
	llvm::Value *key_str_object = builder->CreateBitCast(builder->CreateLoad(builder->CreateGEP(keys, ConstantInt::get(int_type, 0), "zero_at_keys"), "load_key"), string_ptr_type, "bitcast");
	llvm::Value *ret = getHashRefValue(builder, hash_ref, key_str_object);
	//llvm::Value *idx = builder->CreateLoad(builder->CreateStructGEP(key_str_object, 3, "hash_idx"), "load_hash_idx");
	//llvm::Value *hash = generateCastCode(builder, Enum::Runtime::Hash, builder->CreateStructGEP(hash_ref, 1, "hashtable"));
	//llvm::Value *ret = getArrayElementBySimpleAccess(builder, hash, idx);
	cur_type = Enum::Runtime::Value;
	return ret;
}

char *LLVM::expandSpecialCharacter(const char *str)
{
	size_t len = strlen(str) + 1;
	char *ret = (char *)malloc(len);
	memset(ret, 0, len);
	size_t j = 0;
	for (size_t i = 0; i < len; i++) {
		switch (str[i]) {
		case '\\': {
			char ch = str[i + 1];
			if (ch == 't') {
				ret[j] = '\t';
				i++;
			} else if (ch == 'n') {
				ret[j] = '\n';
				i++;
			} else if (ch == 'r') {
				ret[j] = '\r';
				i++;
			} else {
				ret[j] = str[i];
			}
			j++;
			break;
		}
		default:
			ret[j] = str[i];
			j++;
			break;
		}
	}
	return ret;
}

llvm::Value *LLVM::generateValueCode(IRBuilder<> *builder, Node *node)
{
	using namespace TokenType;
	llvm::Value *ret = NULL;
	Token *tk = node->tk;
	switch (tk->info.kind) {
	case TokenKind::Operator:
		if (TYPE_match(node, BranchNode)) {
			ret = generateOperatorCode(builder, dynamic_cast<BranchNode *>(node));
		} else if (TYPE_match(node, SingleTermOperatorNode)) {
			ret = generateSingleTermOperatorCode(builder, dynamic_cast<SingleTermOperatorNode *>(node));
		}
		break;
	default:
		break;
	}
	if (TYPE_match(node, ListNode)) {
		ret = generateListCode(builder, dynamic_cast<ListNode *>(node));
	} else if (TYPE_match(node, FunctionCallNode)) {
		ret = generateFunctionCallCode(builder, dynamic_cast<FunctionCallNode *>(node));
	} else if (TYPE_match(node, DereferenceNode)) {
		ret = generateDereferenceCode(builder, dynamic_cast<DereferenceNode *>(node));
	} else if (TYPE_match(node, ArrayNode)) {
		ret = generateArrayAccessCode(builder, dynamic_cast<ArrayNode *>(node));
	} else if (TYPE_match(node, ArrayRefNode)) {
		ret = generateArrayRefCode(builder, dynamic_cast<ArrayRefNode *>(node));
	} else if (TYPE_match(node, HashNode)) {
		ret = generateHashAccessCode(builder, dynamic_cast<HashNode *>(node));
	} else if (TYPE_match(node, HashRefNode)) {
		ret = generateHashRefCode(builder, dynamic_cast<HashRefNode *>(node));
	}
	if (ret) return ret;
	const char *s = NULL;
	switch (tk->info.type) {
	case String:
		s = (const char *)expandSpecialCharacter(tk->data.c_str());
		//fall through
	case Key: case RawString: {
		if (!s) s = tk->data.c_str();
		vector<llvm::Type *> arg_types;
		arg_types.push_back(void_ptr_type);
		llvm::ArrayRef<llvm::Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
		llvm::Constant *f = module->getOrInsertFunction("new_String", ftype);
		llvm::Value *str = builder->CreateGlobalStringPtr(s);
		CallInst *result = builder->CreateCall(f, str, "string");
		ret = generateReceiveUnionValueCode(builder, result);
		cur_type = Enum::Runtime::String;
		break;
	}
	case ExecString:
		break;
	case Int: {
		int ivalue = atoi(tk->data.c_str());
		//llvm::AllocaInst *v = new AllocaInst(union_type, 0, "inserted_ivalue");
		//const Instruction &last_inst = entry_point->back();
		//BasicBlock::InstListType &list = entry_point->getInstList();
		//list.insert(list.end(), v);//inst);
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
		CodeGenerator::Value *var = lookupVariable(tk->data, tk);
		//if (tk->data == "$w") asm("int3");
		if (!var) {
			ret = builder->CreateAlloca(object_type, 0, tk->data.c_str());
			CodeGenerator::Value *v = (CodeGenerator::Value *)malloc(sizeof(CodeGenerator::Value));
			v->type = Enum::Runtime::Value;
			v->value = createNaNBoxingObject(builder, ret);
			setupVariable(builder, v, tk);
			cur_type = Enum::Runtime::Object;
		} else {
			switch (var->type) {
			case Enum::Runtime::ArrayRef:
				ret = var->value;
				break;
			case Enum::Runtime::HashRef:
				ret = var->value;
				break;
			case Enum::Runtime::BlessedObject:
				ret = var->value;
				break;
			default: {
				llvm::Value *object = generateCastCode(builder, Enum::Runtime::Object, var->value);
				ret = builder->CreateStructGEP(object, 1, "object_body");
				break;
			}
			}
			cur_type = var->type;
		}
		break;
	}
	case LocalVar: case LocalArrayVar: {
		ret = builder->CreateAlloca(object_type, 0, tk->data.c_str());
		CodeGenerator::Value *v = (CodeGenerator::Value *)malloc(sizeof(CodeGenerator::Value));
		v->type = Enum::Runtime::Object;
		v->value = createNaNBoxingObject(builder, ret);
		setupVariable(builder, v, tk);
		cur_type = Enum::Runtime::Object;
		break;
	}
	case GlobalArrayVar: case ArrayVar: {
		CodeGenerator::Value *var = lookupVariable(tk->data, tk);
		ret = var->value;
		cur_type = var->type;
		break;
	}
	case HashVar: {
		CodeGenerator::Value *var = lookupVariable(tk->data, tk);
		ret = var->value;
		cur_type = var->type;
		break;
	}
	case ArgumentArray:
		ret = createNaNBoxingArray(builder, getArgumentArray(builder));
		cur_type = Enum::Runtime::Array;
		break;
	case Default: {
		llvm::Value *result = builder->CreateCall(get_undef_value);
		ret = generateReceiveUnionValueCode(builder, result);
		cur_type = Enum::Runtime::Undefined;
		break;
	}
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

llvm::Value *LLVM::createArgument(IRBuilder<> *builder, Node *node)
{
	llvm::Value *ret = NULL;
	if (TYPE_match(node, ListNode)) {
		ret = generateCastCode(builder, Enum::Runtime::Array, generateListCode(builder, dynamic_cast<ListNode *>(node)));
	} else if (node->tk->info.type == TokenType::Comma) {
		vector<CodeGenerator::Value *> list;
		generateCommaCode(builder, dynamic_cast<BranchNode *>(node), &list);
		size_t size = list.size();
		llvm::Value *args = builder->CreateAlloca(union_ptr_type, ConstantInt::get(int_type, size), "args");
		for (size_t i = 0; i < size; i++) {
			CodeGenerator::Value *v = list.at(i);
			llvm::Value *value = v->value;
			Enum::Runtime::Type type = v->type;
			Token *tk = v->tk;
			llvm::Value *idx = ConstantInt::get(int_type, i);
			if (type == Enum::Runtime::Object || type == Enum::Runtime::Array) {
				if (tk->type == TokenType::Var || tk->type == TokenType::ArrayVar) {
					llvm::Value *elem = lookupVariable(tk->data, tk)->value;
					builder->CreateStore(elem, builder->CreateGEP(args, idx, "get_idx"));
					//builder->CreateStore(builder->CreateLoad(elem, "elem"), builder->CreateGEP(args, idx, "get_idx"));
				} else {
					builder->CreateStore(value, builder->CreateGEP(args, idx, "get_idx"));
					//builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
				}
			} else {
				builder->CreateStore(value, builder->CreateGEP(args, idx, "get_idx"));
				//builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
			}
		}
		ret = createTemporaryArray(builder, args, size);
	} else {
		llvm::Value *args = builder->CreateAlloca(union_ptr_type, ConstantInt::get(int_type, 1), "args");
		llvm::Value *value = generateValueCode(builder, node);
		llvm::Value *idx = ConstantInt::get(int_type, 0);
		if (cur_type == Enum::Runtime::Object || cur_type == Enum::Runtime::Array || cur_type == Enum::Runtime::Hash) {
			Token *tk = node->tk;
			if (tk->type == TokenType::Var || tk->type == TokenType::ArrayVar || tk->type == TokenType::HashVar) {
				llvm::Value *elem = lookupVariable(tk->data, tk)->value;
				builder->CreateStore(elem, builder->CreateGEP(args, idx, "get_idx"));
				//builder->CreateStore(builder->CreateLoad(elem, "elem"), builder->CreateGEP(args, idx, "get_idx"));
			} else {
				builder->CreateStore(value, builder->CreateGEP(args, idx, "get_idx"));
				//builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
			}
		} else {
			builder->CreateStore(value, builder->CreateGEP(args, idx, "get_idx"));
			//builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
		}
		ret = createTemporaryArray(builder, args, 1);
	}
	return ret;
}

llvm::Value *LLVM::createArgumentArray(IRBuilder<> *builder, FunctionCallNode *node)
{
	llvm::Value *ret = NULL;
	size_t size = node->args->size();
	if (size == 2 && node->args->at(0)->tk->info.type == TokenType::ShortCodeDereference) {
		llvm::Value *args = builder->CreateAlloca(union_ptr_type, ConstantInt::get(int_type, 1), "args");
		llvm::Value *idx = ConstantInt::get(int_type, 0);
		llvm::Value *value = generateCodeDereferenceCode(builder, dynamic_cast<DereferenceNode *>(node->args->at(0)), node->args->at(1));
		builder->CreateStore(value, builder->CreateGEP(args, idx, "get_idx"));
		//builder->CreateStore(builder->CreateLoad(value, "elem"), builder->CreateGEP(args, idx, "get_idx"));
		ret = createTemporaryArray(builder, args, 1);
	} else if (size == 2 && node->tk->data == "print") {
		node->tk->data = "print_with_handler";
		ret = createArgument(builder, node->args->at(1));
	} else {
		assert((size == 0 || size == 1) && "argument size error");
	}
	if (ret) return ret;
	if (!size) {
		llvm::Value *args = builder->CreateAlloca(union_ptr_type, ConstantInt::get(int_type, 1), "args");
		return createTemporaryArray(builder, args, 0);
	}
	Node *arg = node->args->at(0);
	return createArgument(builder, arg);
}

llvm::Value *LLVM::generateFunctionCallCode(IRBuilder<> *builder, FunctionCallNode *node)
{
	vector<llvm::Value *> values;
	vector<Enum::Runtime::Type> types;
	vector<Token *> tokens;
	llvm::Value *vargs = (node->args->size() > 0) ? createArgumentArray(builder, node) : NULL;
	llvm::Value *ret = NULL;
	cur_args = vargs;
	if (node->tk->type == TokenType::BuiltinFunc || node->tk->type == TokenType::Namespace) {
		string name = node->tk->data;
		Constant *func = getBuiltinFunction(builder, name);
		if (name == "shift" && !vargs) {
			/* shift of argument array */
			llvm::Value *elem = createNaNBoxingArray(builder, getArgumentArray(builder));
			llvm::Value *args = builder->CreateAlloca(union_ptr_type, ConstantInt::get(int_type, 1), "args");
			llvm::Value *idx = ConstantInt::get(int_type, 0);
			builder->CreateStore(elem, builder->CreateGEP(args, idx, "get_idx"));
			//builder->CreateStore(builder->CreateLoad(elem, "elem"), builder->CreateGEP(args, idx, "get_idx"));
			vargs = createTemporaryArray(builder, args, 1);
		}
		llvm::Value *result = NULL;
		if (name == "print_with_handler") {
			llvm::Value *handler = generateValueCode(builder, node->args->at(0));
			result = builder->CreateCall2(func, handler, vargs, "result");
		} else {
			result = builder->CreateCall(func, vargs, "result");
		}
		if (name == "print" || name == "say"   || name == "shift" ||
			name == "push"  || name == "bless" || name == "sqrt" ||
			name == "abs"   || name == "int"   || name == "rand" ||
			name == "sin"   || name == "cos"   || name == "atan2" ||
			name == "open"  || name == "chr"   || name == "binmode" || name == "close" ||
			name == "print_with_handler" || name == "Data::Dumper") {
			ret = generateReceiveUnionValueCode(builder, result);
		} else {
			ret = result;
		}
	} else {
		llvm::Value *func = fmgr.getFunction(cur_pkg_name.c_str(), node->tk->data.c_str());
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
	} else if (name == "print" || name == "say" || name == "shift" || name == "push" || name == "bless") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction(name, ftype);
		cur_type = Enum::Runtime::Value;
	} else if (name == "print_with_handler") {
		arg_types.push_back(union_ptr_type);
		arg_types.push_back(array_ptr_type);
		ArrayRef<Type*> arg_types_ref(arg_types);
		FunctionType *ftype = llvm::FunctionType::get(int_type, arg_types_ref, false);
		ret = module->getOrInsertFunction(name, ftype);
		cur_type = Enum::Runtime::Value;
	} else if (name == "Data::Dumper") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("Object_dumper", ftype);
		cur_type = Enum::Runtime::Value;
	} else if (name == "sqrt") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_sqrt", ftype);
		cur_type = Enum::Runtime::Double;
	} else if (name == "abs") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_abs", ftype);
		cur_type = Enum::Runtime::Value;
	} else if (name == "int") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_int", ftype);
		cur_type = Enum::Runtime::Int;
	} else if (name == "rand") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_rand", ftype);
		cur_type = Enum::Runtime::Double;
	} else if (name == "sin") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_sin", ftype);
		cur_type = Enum::Runtime::Double;
	} else if (name == "cos") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_cos", ftype);
		cur_type = Enum::Runtime::Double;
	} else if (name == "atan2") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_atan2", ftype);
		cur_type = Enum::Runtime::Double;
	} else if (name == "open") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_open", ftype);
		cur_type = Enum::Runtime::Int;
	} else if (name == "binmode") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_binmode", ftype);
		cur_type = Enum::Runtime::Int;
	} else if (name == "chr") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_chr", ftype);
		cur_type = Enum::Runtime::String;
	} else if (name == "close") {
		FunctionType *ftype = llvm::FunctionType::get(int_type, array_ptr_type, false);
		ret = module->getOrInsertFunction("_close", ftype);
		cur_type = Enum::Runtime::Int;
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
	llvm::Value *nan_boxing_ivalue = builder->CreateOr(builder->CreateOr(builder->CreateAnd(value, mask, "and"), nan, "or"), int_tag, "or");
	builder->CreateStore(nan_boxing_ivalue, builder->CreateBitCast(union_ptr, int_ptr_type, "union_to_int_ptr"));
	return union_ptr;
}

llvm::Value *LLVM::createNaNBoxingDouble(IRBuilder<> *builder, llvm::Value *value)
{
	llvm::Value *union_ptr = builder->CreateAlloca(union_type, 0, "double_ptr");
	builder->CreateStore(value, builder->CreateBitCast(union_ptr, double_ptr_type, "cast_to_double_ptr"));
	return union_ptr;
}

llvm::Value *LLVM::createNaNBoxingString(IRBuilder<> *builder, llvm::Value *_value)
{
	return createNaNBoxingPtr(builder, _value, STRING_TAG);
}

llvm::Value *LLVM::createNaNBoxingArray(IRBuilder<> *builder, llvm::Value *_value)
{
	return createNaNBoxingPtr(builder, _value, ARRAY_TAG);
}

llvm::Value *LLVM::createNaNBoxingArrayRef(IRBuilder<> *builder, llvm::Value *_value)
{
	return createNaNBoxingPtr(builder, _value, ARRAY_REF_TAG);
}

llvm::Value *LLVM::createNaNBoxingHashRef(IRBuilder<> *builder, llvm::Value *_value)
{
	return createNaNBoxingPtr(builder, _value, HASH_REF_TAG);
}

llvm::Value *LLVM::createNaNBoxingCodeRef(IRBuilder<> *builder, llvm::Value *_value)
{
	return createNaNBoxingPtr(builder, _value, CODE_REF_TAG);
}

llvm::Value *LLVM::createNaNBoxingObject(IRBuilder<> *builder, llvm::Value *_value)
{
	return createNaNBoxingPtr(builder, _value, OBJECT_TAG);
}

llvm::Value *LLVM::createNaNBoxingPtr(IRBuilder<> *builder, llvm::Value *_value, uint64_t ptr_tag)
{
	llvm::Value *union_ptr = builder->CreateAlloca(union_type, 0, "base_ptr");
	llvm::Value *value = builder->CreatePtrToInt(_value, int_type, "union_ptr_to_int");
	llvm::Value *nan = ConstantInt::get(int_type, NaN);
	llvm::Value *tag = ConstantInt::get(int_type, ptr_tag);
	llvm::Value *nan_boxing_value = builder->CreateOr(builder->CreateOr(value, nan, "or"), tag, "or");
	builder->CreateStore(nan_boxing_value, builder->CreateBitCast(union_ptr, int_ptr_type, "bitcast"));
	return union_ptr;
}

llvm::Value *LLVM::createArray(IRBuilder<> *builder, llvm::Value *list, size_t size)
{
	//llvm::Value *array = builder->CreateAlloca(array_type, 0, "array");
	llvm::Value *object = builder->CreateCall(fetch_object, "fetched_object");
	llvm::Value *array = builder->CreateBitCast(object, array_ptr_type, "cast_to_array_ptr");
	llvm::Value *array_type = builder->CreateStructGEP(array, 0, "array_type");
	llvm::Value *array_list = builder->CreateStructGEP(array, 1, "array_list");
	llvm::Value *array_size = builder->CreateStructGEP(array, 2, "array_size");
	builder->CreateStore(ConstantInt::get(int32_type, Enum::Runtime::Array), array_type);
	builder->CreateStore(list, array_list);
	builder->CreateStore(ConstantInt::get(int_type, size), array_size);
	return array;
}

llvm::Value *LLVM::createTemporaryArray(IRBuilder<> *builder, llvm::Value *list, size_t size)
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

llvm::Value *LLVM::createArrayRef(IRBuilder<> *builder, llvm::Value *boxed_array)
{
	llvm::Value *object = builder->CreateCall(fetch_object, "fetched_object");
	llvm::Value *array_ref = builder->CreateBitCast(object, array_ref_ptr_type, "cast_to_array_ref_ptr");
	//llvm::Value *array_ref = builder->CreateAlloca(array_ref_type, 0, "array_ref");
	llvm::Value *array_type = builder->CreateStructGEP(array_ref, 0, "array_ref_type");
	llvm::Value *array_body = builder->CreateStructGEP(array_ref, 1, "array_ref_body");
	builder->CreateStore(ConstantInt::get(int32_type, Enum::Runtime::ArrayRef), array_type);
	builder->CreateStore(builder->CreateLoad(boxed_array, "load_array_body"), array_body);
	return array_ref;
}

llvm::Value *LLVM::createHashRef(IRBuilder<> *builder, llvm::Value *boxed_hash)
{
	//llvm::Value *hash_ref = builder->CreateAlloca(hash_ref_type, 0, "hash_ref");
	llvm::Value *object = builder->CreateCall(fetch_object, "fetched_object");
	llvm::Value *hash_ref = builder->CreateBitCast(object, hash_ref_ptr_type, "cast_to_hash_ref_ptr");
	llvm::Value *hash_type = builder->CreateStructGEP(hash_ref, 0, "hash_ref_type");
	llvm::Value *hash_body = builder->CreateStructGEP(hash_ref, 1, "hash_ref_body");
	builder->CreateStore(ConstantInt::get(int32_type, Enum::Runtime::HashRef), hash_type);
	builder->CreateStore(builder->CreateLoad(boxed_hash, "load_hash_body"), hash_body);
	return hash_ref;
}

llvm::Value *LLVM::createCodeRef(IRBuilder<> *builder, llvm::Value *code)
{
	llvm::Value *code_ref = builder->CreateAlloca(code_ref_type, 0, "code_ref");
	llvm::Value *code_type = builder->CreateStructGEP(code_ref, 0, "code_ref_type");
	llvm::Value *code_body = builder->CreateStructGEP(code_ref, 1, "code_ref_body");
	builder->CreateStore(ConstantInt::get(int32_type, Enum::Runtime::CodeRef), code_type);
	builder->CreateStore(code, code_body);
	return code_ref;
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
