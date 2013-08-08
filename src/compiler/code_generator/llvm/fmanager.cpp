#include <parser.hpp>
#include <codegen.hpp>

using namespace std;
using namespace llvm;
using namespace CodeGenerator;

FunctionManager::FunctionManager(void)
{
}

void FunctionManager::setFunction(const char *pkg_name, const char *func_name, llvm::Value *func)
{
	PackageMap::iterator pmap_it = pmap.find(string(pkg_name));
	MethodMap *mtd_map = NULL;
	if (pmap_it != pmap.end()) {
		mtd_map = (MethodMap *)pmap_it->second;
	} else {
		mtd_map = new MethodMap();
		pmap.insert(PackageMap::value_type(string(pkg_name), mtd_map));
	}
	mtd_map->insert(MethodMap::value_type(string(func_name), func));
}

llvm::Value *FunctionManager::getFunction(const char *pkg_name, const char *func_name)
{
	PackageMap::iterator pmap_it = pmap.find(string(pkg_name));
	if (pmap_it == pmap.end()) return NULL;
	MethodMap *mtd_map = pmap_it->second;
	MethodMap::iterator mtd_map_it = mtd_map->find(string(func_name));
	if (mtd_map_it == mtd_map->end()) return NULL;
	return mtd_map_it->second;
}
