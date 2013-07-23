#define LLVM_ATTRIBUTE_READONLY

#include "llvm/IRBuilder.h"
#include "llvm/Module.h"
#include "llvm/LLVMContext.h"
#include "llvm/ValueSymbolTable.h"
//#include "llvm/IR/IRBuilder.h"
//#include "llvm/IR/LLVMContext.h"
//#include "llvm/IR/Module.h"
//#include "llvm/IR/ValueSymbolTable.h"

#include "llvm/Assembly/AssemblyAnnotationWriter.h"
#include "llvm/Support/raw_os_ostream.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Linker.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/Interpreter.h"
#include "llvm/ExecutionEngine/JIT.h"
#include "llvm/ExecutionEngine/GenericValue.h"
#include "llvm/Support/TargetSelect.h"

namespace Enum {
namespace Runtime {
typedef enum {
	Int,
	Double,
	String,
	Array,
	Hash,
	BlessedObject,
	Object,
	Unknown
} Type;
};
};

namespace Runtime {

//typedef union {
typedef struct _Value {
	int ivalue;
	double dvalue;
	char *svalue;
	void *ovalue;
} Value;

typedef struct _Object {
	Enum::Runtime::Type type;
	Value v;
} Object;

typedef struct _Array {
	Enum::Runtime::Type type;
	Object **list;
	size_t size;
} Array;

};

#define MAX_VARIABLE_DEFINITION_NUM 128

namespace CodeGenerator {

typedef struct _Value {
	Enum::Runtime::Type type;
	llvm::Value *value;
} Value;

typedef std::map<std::string, Value*> ValueMap;
typedef struct _ValueMapArray {
	ValueMap **list;
	size_t size;
} ValueMapArray;

typedef std::map<std::string, ValueMapArray*> FunctionMap;
class VariableManager {
public:
	FunctionMap fmap;

	VariableManager(void);
	void setVariable(const char *func_name, const char *var_name, size_t indent, Value *value);
	Value *getVariable(const char *func_name, const char *var_name, size_t indent);
};

class LLVM {
public:
	llvm::Module *module;
	Enum::Runtime::Type cur_type;
	llvm::Type *value_type;
	llvm::Type *value_ptr_type;
	llvm::Type *object_type;
	llvm::Type *object_ptr_type;
	llvm::Type *object_double_ptr_type;
	llvm::Type *array_type;
	llvm::Type *array_ptr_type;
	llvm::Function *cur_func;
	std::string cur_func_name;
	VariableManager vmgr;

	LLVM(void);
	void write(void);
	void createRuntimeTypes(void);
	void debug_run(AST *ast);
	const char *gen(AST *ast);
	llvm::Value *setLLVMValue(llvm::IRBuilder<> *builder, llvm::Value *runtime_object, Enum::Runtime::Type type, llvm::Value *value);
	llvm::Value *makeArgumentArray(llvm::IRBuilder<> *builder, llvm::Value *list, size_t size);
	void traverse(llvm::IRBuilder<> *builder, AST *ast);
	bool linkModule(llvm::Module *dest, std::string filename);
	void generateCode(llvm::IRBuilder<> *builder, Node *node);
	llvm::BasicBlock *generateBlockCode(llvm::IRBuilder<> *builder, llvm::BasicBlock *block, llvm::BasicBlock *merge_block, Node *node);
	void generateIfStmtCode(llvm::IRBuilder<> *builder, IfStmtNode *node);
	void generateElseStmtCode(llvm::IRBuilder<> *builder, ElseStmtNode *node);
	void generateForStmtCode(llvm::IRBuilder<> *builder, ForStmtNode *node);
	llvm::Value *generateAssignCode(llvm::IRBuilder<> *builder, BranchNode *node);
	llvm::Value *generateOperatorCode(llvm::IRBuilder<> *builder, BranchNode *node);
	llvm::Value *generateValueCode(llvm::IRBuilder<> *builder, Node *node);
	void generateFunctionCallCode(llvm::IRBuilder<> *builder, FunctionCallNode *node);
	llvm::Constant *getBuiltinFunction(llvm::IRBuilder<> *builder, std::string function_name);
};

};

//extern "C" void runtime(void);
