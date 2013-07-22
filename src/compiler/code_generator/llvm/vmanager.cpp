#include <parser.hpp>
#include <codegen.hpp>

using namespace std;
using namespace llvm;
using namespace CodeGenerator;

VariableManager::VariableManager(void)
{
}

void VariableManager::setVariable(const char *func_name, const char *var_name, size_t indent, CodeGenerator::Value *value)
{
	FunctionMap::iterator fmap_it = fmap.find(string(func_name));
	ValueMapArray *vmap_list = NULL;
	if (fmap_it != fmap.end()) {
		vmap_list = (ValueMapArray *)fmap_it->second;
	} else {
		vmap_list = new ValueMapArray();
		vmap_list->list = (CodeGenerator::ValueMap **)malloc(sizeof(CodeGenerator::ValueMap *) * MAX_VARIABLE_DEFINITION_NUM);
		vmap_list->size = MAX_VARIABLE_DEFINITION_NUM;
		for (size_t i = 0; i < MAX_VARIABLE_DEFINITION_NUM; i++) {
			vmap_list->list[i] = new CodeGenerator::ValueMap();
		}
		fmap.insert(FunctionMap::value_type(string(func_name), vmap_list));
	}
	if (indent < vmap_list->size) {
		ValueMap *vmap = vmap_list->list[indent];
		vmap->insert(ValueMap::value_type(string(var_name), value));
	} else {
		assert(0 && "TODO: MAX_VARIABLE_DEFINITION_NUM");
	}
}

CodeGenerator::Value *VariableManager::getVariable(const char *func_name, const char *var_name, size_t indent)
{
	FunctionMap::iterator fmap_it = fmap.find(string(func_name));
	if (fmap_it == fmap.end()) assert(0 && "ERROR!: variable is not defined");
	ValueMapArray *vmap_list = fmap_it->second;
	if (indent >= MAX_VARIABLE_DEFINITION_NUM) assert(0 && "ERROR!: indent size is too large");
	CodeGenerator::ValueMap *vmap = vmap_list->list[indent];
	CodeGenerator::ValueMap::iterator vmap_it = vmap->find(string(var_name));
	if (vmap_it == vmap->end()) assert(0 && "ERROR!: variable is not defined");
	return vmap_it->second;
}
