#include <parser.hpp>
#include <codegen.hpp>

#ifdef __cplusplus
extern "C" {
#endif
#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"
#define new_Array() (AV*)sv_2mortal((SV*)newAV())
#define new_Hash() (HV*)sv_2mortal((SV*)newHV())
#define new_String(s, len) sv_2mortal(newSVpv(s, len))
#define new_Int(u) sv_2mortal(newSVuv(u))
#define new_Ref(sv) sv_2mortal(newRV_inc((SV*)sv))
#define set(e) SvREFCNT_inc(e)
#define get_value(hash, key) *hv_fetchs(hash, key, strlen(key))
#ifdef __cplusplus
};
#endif

extern AST *sv_to_ast(pTHX_ SV *ast_);

typedef CodeGenerator::LLVM* Compiler_CodeGenerator_LLVM;

MODULE = Compiler::CodeGenerator::LLVM PACKAGE = Compiler::CodeGenerator::LLVM
PROTOTYPES: DISABLE

Compiler_CodeGenerator_LLVM
new(classname)
	char *classname
CODE:
{
	CodeGenerator::LLVM *code_generator = new CodeGenerator::LLVM();
	RETVAL = code_generator;
}
OUTPUT:
	RETVAL

SV *
generate(self, ast_)
    Compiler_CodeGenerator_LLVM self
    SV *ast_
CODE:
{
	AST *ast = sv_to_ast(aTHX_ ast_); 
	const char *llvm_ir = self->gen(ast);
	RETVAL = set(new_String(llvm_ir, strlen(llvm_ir)));
}
OUTPUT:
    RETVAL

void
debug_run(self, ast_)
    Compiler_CodeGenerator_LLVM self
    SV *ast_
CODE:
{
	AST *ast = sv_to_ast(aTHX_ ast_); 
	self->debug_run(ast);
}

void
set_library_paths(self, paths_)
    Compiler_CodeGenerator_LLVM self
    AV *paths_
CODE:
{
	int path_num = av_len(paths_);
	if (path_num < 0) return;
	std::vector<const char *> library_paths;
	for (int i = 0; i <= path_num; i++) {
		SV *path_ = (SV *)*av_fetch(paths_, i, FALSE);
		const char *p = SvPVX(path_);
		size_t len = strlen(p) + 1;
		const char *path = (const char *)malloc(len);
		memcpy((void *)path, (void *)p, len);
		library_paths.push_back(path);
	}
	self->set_library_paths(&library_paths);
}
