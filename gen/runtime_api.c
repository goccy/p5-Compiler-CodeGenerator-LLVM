#include "runtime_api.h"
UnionType u;

void print_object(UnionType _o)
{
	void *o = _o.o;
	//fprintf(stderr, "type = [%d]\n", TYPE(o));
	switch (TYPE(o)) {
	case Int:
		fprintf(stdout, "%d", to_Int(o));
		break;
	case Double:
		fprintf(stdout, "%f", _o.d);
		break;
	case String:
		fprintf(stdout, "%s", (to_String(o))->s);
		break;
	case Array:
		print(to_Array(o));
		break;
	case ArrayRef:
		fprintf(stdout, "ARRAY(%p)", o);
		break;
	case Hash:
		print_hash(to_Hash(o));
		break;
	case HashRef:
		fprintf(stdout, "HASH(%p)", o);
		break;
	case CodeRef:
		fprintf(stdout, "CODE(%p)", o);
		break;
	case ObjectType: {
		Object *object = to_Object(o);
		print_object(object->v);
		break;
	}
	case BlessedObjectType:
		fprintf(stdout, "%s=HASH(%p)", (to_BlessedObject(o))->pkg_name, o);
		break;
	default:
		break;
	}
}

void print_hash(HashObject *hash)
{
	size_t key_n = hash->size;
	size_t i = 0;
	for (i = 0; i < key_n; i++) {
		StringObject *key = hash->keys[i];
		fprintf(stdout, "%s", key->s);
		print_object(hash->table[key->hash]);
	}
}

void print(ArrayObject *array)
{
	size_t size = array->size;
	size_t i = 0;
	for (i = 0; i < size; i++) {
		print_object(array->list[i]);
	}
}

void say(ArrayObject *array)
{
	print(array);
	fprintf(stdout, "\n");
}

void debug_print(UnionType o)
{
	fprintf(stderr, "===== debug_print ======\n");
	print_object(o);
	fprintf(stderr, "=============\n");
}

UnionType shift(ArrayObject *args)
{
	UnionType ret;
	size_t size = args->size;
	if (size > 1) return ret;
	if (size == 1) {
		UnionType o = args->list[0];
		TYPE_CHECK(o.o, Array);
		ArrayObject *array = to_Array(o.o);
		ret = array->list[0];
		array->size--;
		memmove(array->list, array->list + 1, array->size * sizeof(Value));
	} else {
		fprintf(stderr, "fetch from function argument\n");
	}
	return ret;
}

UnionType push(ArrayObject *args)
{
	size_t size = args->size;
	UnionType ret;
	if (size != 2) {
		fprintf(stderr, "Type Error!: near by push\n");
	} else {
		UnionType array = args->list[0];
		UnionType value = args->list[1];
		TYPE_CHECK(array.o, Array);
		ArrayObject *base = to_Array(array.o);
		void *tmp;
		if (!(tmp = malloc(sizeof(Value) * (base->size + 1)))) {
			fprintf(stderr, "ERROR!!: cannot allocated memory\n");
		} else {
			memcpy(tmp, base->list, sizeof(Value) * base->size);
			base->list = (UnionType *)tmp;
			base->list[base->size] = value;
			base->size++;
			ret.o = INT_init(base->size);
		}
	}
	return ret;
}

/*
Object *map(ArrayObject *args)
{
	Object *block = args->list[0];
	Object *array = args->list[1];
	Object *ret;
	for (i = 0; i < size; i++) {
		Object *map_arg = array->list[0];
		Function *map_func = (Function *)block->o.value;
		ret->list[i] = map_func(map_arg);
	}
	ret->type = Array;
	ret->v.ovalue = mapped_array;
	return ret;
}
*/

UnionType undef;
void new_Undef(void)
{
	UndefObject *o = (UndefObject *)calloc(sizeof(UndefObject), 1);
	undef.o = UNDEF_init(o);
}

UnionType *base_hash_table;
void init_table(void)
{
	UnionType *table = (UnionType *)calloc(sizeof(UnionType), HASH_TABLE_SIZE);
	size_t i;
	for (i = 0; i < HASH_TABLE_SIZE; i++) {
		table[i] = undef;
	}
	base_hash_table = table;
}

HashObject *pkg_map;

void init_package_map(void)
{
	HashObject *hash = (HashObject *)calloc(sizeof(HashObject), 1);
	hash->table = (UnionType *)calloc(sizeof(UnionType), HASH_TABLE_SIZE);
	memcpy(hash->table, base_hash_table, sizeof(UnionType) * HASH_TABLE_SIZE);
	hash->keys = (StringObject **)calloc(sizeof(void *), HASH_TABLE_SIZE);
	pkg_map = hash;
}

void global_init(void)
{
	new_Undef();
	init_table();
	init_package_map();
}

/**
 * An implementation of the djb2 hash function by Dan Bernstein.
 */
unsigned long make_hash(char* _str, size_t len)
{
	char* str = _str;
	unsigned long hash = 5381;
	while (len--) {
		/* hash * 33 + c */
		hash = ((hash << 5) + hash) + *str++;
	}
	return hash;
}

UnionType new_String(char *str)
{
	UnionType ret;
	StringObject *o = (StringObject *)calloc(sizeof(StringObject), 1);
	o->header = String;
	o->s = str;
	o->len = strlen(str);
	o->hash = make_hash(str, o->len) % HASH_TABLE_SIZE;
	ret.o = STRING_init(o);
	return ret;
}

void _unshift(ArrayObject *base, char *pkg_name)
{
	UnionType *tmp;
	if (!(tmp = malloc(sizeof(Value) * (base->size + 1)))) {
		fprintf(stderr, "ERROR!!: cannot allocated memory\n");
	} else {
		memcpy(tmp + 1, base->list, base->size * sizeof(Value));
		base->list = (UnionType *)tmp;
		base->list[0] = new_String(pkg_name);
		base->size++;
	}
}

void _make_method_argument(ArrayObject *base, BlessedObject *self)
{
	//fprintf(stderr, "call _make_method_argument\n");
	UnionType *tmp;
	if (!(tmp = malloc(sizeof(Value) * (base->size + 1)))) {
		fprintf(stderr, "ERROR!!: cannot allocated memory\n");
	} else {
		memcpy(tmp + 1, base->list, base->size * sizeof(Value));
		base->list = (UnionType *)tmp;
		UnionType elem;
		elem.o = BLESSED_OBJECT_init(self);
		base->list[0] = elem;
		base->size++;
	}
}


void Hash_add(HashObject *hash, StringObject *key, UnionType elem)
{
	size_t size = hash->size;
	hash->table[key->hash] = elem;
	hash->keys[size + 1] = key;
	hash->size++;
}

UnionType Hash_get(HashObject *hash, StringObject *key)
{
	return hash->table[key->hash];
}

UnionType bless(ArrayObject *args)
{
	UnionType ret;
	if (args->size != 2) {
		fprintf(stderr, "ERROR!: bless function must be required two argument\n");
	}
	UnionType self = args->list[0];
	UnionType class = args->list[1];
	BlessedObject *blessed = (BlessedObject *)calloc(sizeof(BlessedObject), 1);
	TYPE_CHECK(self.o, HashRef);
	class = (TYPE(class.o) == ObjectType) ? (to_Object(class.o))->v : class;
	TYPE_CHECK(class.o, String);
	const char *pkg_name = (const char *)(to_String(class.o))->s;
	HashRefObject *hash_ref = to_HashRef(self.o);
	HashObject *hash = to_Hash(hash_ref->v.o);
	//fprintf(stderr, "table = [%p]\n", hash->table);
	//fprintf(stderr, "hash_ref = [%p]\n", hash_ref);
	blessed->members = self;
	blessed->pkg_name = pkg_name;
	UnionType s = new_String((char *)pkg_name);
	UnionType mtds = Hash_get(pkg_map, to_String(s.o));
	TYPE_CHECK(mtds.o, Hash);
	blessed->mtds = to_Hash(mtds.o);
	ret.o = BLESSED_OBJECT_init(blessed);
	return ret;
}

Object *fetch_object(void)
{
	return (Object *)calloc(sizeof(Object), 1);
}

HashObject *get_pkg(char *pkg_name)
{
	HashObject *ret = NULL;
	UnionType _key = new_String(pkg_name);
	StringObject *key = to_String(_key.o);
	UnionType pkg = Hash_get(pkg_map, key);
	if (TYPE(pkg.o) == Hash) return to_Hash(pkg.o);
	HashObject *hash = (HashObject *)calloc(sizeof(HashObject), 1);
	hash->table = (UnionType *)calloc(sizeof(UnionType), HASH_TABLE_SIZE);
	memcpy(hash->table, base_hash_table, sizeof(UnionType) * HASH_TABLE_SIZE);
	hash->keys = (StringObject **)calloc(sizeof(void *), HASH_TABLE_SIZE);
	UnionType value;
	value.o = HASH_init(hash);
	Hash_add(pkg_map, key, value);
	return hash;
}

void store_method_by_pkg_name(char *pkg_name, char *mtd_name, Code code)
{
	//fprintf(stderr, "pkg_name = [%s]\n", pkg_name);
	//fprintf(stderr, "mtd_name = [%s]\n", mtd_name);
	//fprintf(stderr, "code = [%p]\n", code);
	HashObject *pkg = get_pkg(pkg_name);
	//fprintf(stderr, "pkg = [%p]\n", pkg);
	UnionType _mtd_name = new_String(mtd_name);
	CodeRefObject *o = (CodeRefObject *)calloc(sizeof(CodeRefObject), 1);
	o->code = code;
	UnionType code_ref;
	code_ref.o = CODE_REF_init(o);
	Hash_add(pkg, to_String(_mtd_name.o), code_ref);
}

Code get_method_by_name(BlessedObject *self, char *mtd_name)
{
	//fprintf(stderr, "call get_method_by_name\n");
	HashObject *mtds = self->mtds;
	UnionType str = new_String(mtd_name);
	StringObject *s = to_String(str.o);
	UnionType mtd = mtds->table[s->hash];
	TYPE_CHECK(mtd.o, CodeRef);
	CodeRefObject *code_ref = to_CodeRef(mtd.o);
	return code_ref->code;
}

UnionType new_Hash(ArrayObject *array)
{
	UnionType ret;
	HashObject *hash = (HashObject *)calloc(sizeof(HashObject), 1);
	hash->table = (UnionType *)calloc(sizeof(UnionType), HASH_TABLE_SIZE);
	memcpy(hash->table, base_hash_table, sizeof(UnionType) * HASH_TABLE_SIZE);
	hash->keys = (StringObject **)calloc(sizeof(void *), HASH_TABLE_SIZE);
	size_t size = array->size;
	int key_n = 0;
	size_t i = 0;
	UnionType *list = array->list;
	for (i = 0; i < size; i += 2, key_n++) {
		StringObject *key = to_String(list[i].o);
		UnionType value = list[i + 1];
		if (TYPE(value.o) == ObjectType) {
			//Object is allocated stack.
			//must be cast
			Object *o = to_Object(value.o);
			value = o->v;
		}
		if (TYPE(value.o) == Double) {
			hash->table[key->hash].d = value.d;
		} else {
			hash->table[key->hash].o = value.o;
		}
		hash->keys[key_n] = key;
	}
	hash->size = key_n;
	ret.o = HASH_init(hash);
	return ret;
}

UnionType Hash_to_array(HashObject *hash)
{
	UnionType ret;
	ArrayObject *array = (ArrayObject *)calloc(sizeof(ArrayObject), 1);
	size_t key_n = hash->size;
	size_t array_size = key_n * 2;
	array->list = (UnionType *)calloc(sizeof(UnionType), array_size);
	array->size = array_size;
	size_t i = 0;
	for (i = 0; i < key_n; i++) {
		StringObject *key = hash->keys[i];
		UnionType boxed_key;
		boxed_key.o = STRING_init(key);
		array->list[i * 2] = boxed_key;
		array->list[i * 2 + 1] = hash->table[key->hash];
	}
	ret.o = ARRAY_init(array);
	return ret;
}

HashRefObject *dynamic_hash_ref_cast_code(UnionType *o)
{
	HashRefObject *ret = NULL;
	switch (TYPE(o->o)) {
	case HashRef:
		ret = to_HashRef(o->o);
		break;
	case ObjectType: {
		Object *object = to_Object(o->o);
		TYPE_CHECK(object->v.o, HashRef);
		ret = to_HashRef(object->v.o);
		break;
	}
	case BlessedObjectType: {
		BlessedObject *blessed = to_BlessedObject(o->o);
		ret = to_HashRef(blessed->members.o);
		break;
	}
	default:
		//fprintf(stderr, "type = [%d]\n", TYPE(o->o));
		break;
	}
	return ret;
}

Object *new_Object(void)
{
	return (Object *)malloc(sizeof(Object));
}

UnionType Object_addObject(UnionType *a, UnionType *b)
{
	UnionType ret;
	setResultByObjectObject(ret, a, b, +);
	return ret;
}

UnionType Object_subObject(UnionType *a, UnionType *b)
{
	UnionType ret;
	setResultByObjectObject(ret, a, b, -);
	return ret;
}

UnionType Object_mulObject(UnionType *a, UnionType *b)
{
	UnionType ret;
	setResultByObjectObject(ret, a, b, *);
	return ret;
}

UnionType Object_divObject(UnionType *a, UnionType *b)
{
	UnionType ret;
	setResultByObjectObject(ret, a, b, /);
	return ret;
}

UnionType Object_eqObject(UnionType *a, UnionType *b)
{
	UnionType ret;
	setCmpResultByObjectObject(ret, a, b, ==);
	return ret;
}

UnionType Object_neObject(UnionType *a, UnionType *b)
{
	UnionType ret;
	setCmpResultByObjectObject(ret, a, b, !=);
	return ret;
}

UnionType Object_gtObject(UnionType *a, UnionType *b)
{
	UnionType ret;
	setCmpResultByObjectObject(ret, a, b, >);
	return ret;
}

UnionType Object_ltObject(UnionType *a, UnionType *b)
{
	UnionType ret;
	setCmpResultByObjectObject(ret, a, b, <);
	return ret;
}

UnionType Object_addInt(UnionType *a, int b)
{
	UnionType ret;
	setResultByObjectInt(ret, a, b, +);
	return ret;
}

UnionType Object_subInt(UnionType *a, int b)
{
	UnionType ret;
	setResultByObjectInt(ret, a, b, -);
	return ret;
}

UnionType Object_mulInt(UnionType *a, int b)
{
	UnionType ret;
	setResultByObjectInt(ret, a, b, *);
	return ret;
}

UnionType Object_divInt(UnionType *a, int b)
{
	UnionType ret;
	setResultByObjectInt(ret, a, b, /);
	return ret;
}

UnionType Object_eqInt(UnionType *a, int b)
{
	UnionType ret;
	setCmpResultByObjectInt(ret, a, b, ==);
	return ret;
}

UnionType Object_neInt(UnionType *a, int b)
{
	UnionType ret;
	setCmpResultByObjectInt(ret, a, b, !=);
	return ret;
}

UnionType Object_gtInt(UnionType *a, int b)
{
	UnionType ret;
	setCmpResultByObjectInt(ret, a, b, >);
	return ret;
}

UnionType Object_ltInt(UnionType *a, int b)
{
	UnionType ret;
	setCmpResultByObjectInt(ret, a, b, <);
	return ret;
}

UnionType Object_addInt2(int a, UnionType *b)
{
	UnionType ret;
	setResultByIntObject(ret, a, b, +);
	return ret;
}

UnionType Object_subInt2(int a, UnionType *b)
{
	UnionType ret;
	setResultByIntObject(ret, a, b, -);
	return ret;
}

UnionType Object_mulInt2(int a, UnionType *b)
{
	UnionType ret;
	setResultByIntObject(ret, a, b, *);
	return ret;
}

UnionType Object_divInt2(int a, UnionType *b)
{
	UnionType ret;
	setResultByIntObject(ret, a, b, /);
	return ret;
}

UnionType Object_eqInt2(int a, UnionType *b)
{
	UnionType ret;
	setCmpResultByIntObject(ret, a, b, ==);
	return ret;
}

UnionType Object_neInt2(int a, UnionType *b)
{
	UnionType ret;
	setCmpResultByIntObject(ret, a, b, !=);
	return ret;
}

UnionType Object_gtInt2(int a, UnionType *b)
{
	UnionType ret;
	setCmpResultByIntObject(ret, a, b, >);
	return ret;
}

UnionType Object_ltInt2(int a, UnionType *b)
{
	UnionType ret;
	setCmpResultByIntObject(ret, a, b, <);
	return ret;
}

UnionType Object_addDouble(UnionType *a, double b)
{
	UnionType ret;
	setResultByObjectDouble(ret, a, b, +);
	return ret;
}

UnionType Object_subDouble(UnionType *a, double b)
{
	UnionType ret;
	setResultByObjectDouble(ret, a, b, -);
	return ret;
}

UnionType Object_mulDouble(UnionType *a, double b)
{
	UnionType ret;
	setResultByObjectDouble(ret, a, b, *);
	return ret;
}

UnionType Object_divDouble(UnionType *a, double b)
{
	UnionType ret;
	setResultByObjectDouble(ret, a, b, /);
	return ret;
}

UnionType Object_eqDouble(UnionType *a, double b)
{
	UnionType ret;
	setCmpResultByObjectDouble(ret, a, b, ==);
	return ret;
}

UnionType Object_neDouble(UnionType *a, double b)
{
	UnionType ret;
	setCmpResultByObjectDouble(ret, a, b, !=);
	return ret;
}

UnionType Object_gtDouble(UnionType *a, double b)
{
	UnionType ret;
	setCmpResultByObjectDouble(ret, a, b, >);
	return ret;
}

UnionType Object_ltDouble(UnionType *a, double b)
{
	UnionType ret;
	setCmpResultByObjectDouble(ret, a, b, <);
	return ret;
}

UnionType Object_addDouble2(double a, UnionType *b)
{
	UnionType ret;
	setResultByDoubleObject(ret, a, b, +);
	return ret;
}

UnionType Object_subDouble2(double a, UnionType *b)
{
	UnionType ret;
	setResultByDoubleObject(ret, a, b, +);
	return ret;
}

UnionType Object_mulDouble2(double a, UnionType *b)
{
	UnionType ret;
	setResultByDoubleObject(ret, a, b, *);
	return ret;
}

UnionType Object_divDouble2(double a, UnionType *b)
{
	UnionType ret;
	setResultByDoubleObject(ret, a, b, /);
	return ret;
}

UnionType Object_eqDouble2(double a, UnionType *b)
{
	UnionType ret;
	setCmpResultByDoubleObject(ret, a, b, ==);
	return ret;
}

UnionType Object_neDouble2(double a, UnionType *b)
{
	UnionType ret;
	setCmpResultByDoubleObject(ret, a, b, !=);
	return ret;
}

UnionType Object_gtDouble2(double a, UnionType *b)
{
	UnionType ret;
	setCmpResultByDoubleObject(ret, a, b, >);
	return ret;
}

UnionType Object_ltDouble2(double a, UnionType *b)
{
	UnionType ret;
	setCmpResultByDoubleObject(ret, a, b, <);
	return ret;
}

int Object_isTrue(UnionType a)
{
	int ret = 0;
	void *o = a.o;
	switch (TYPE(o)) {
	case Int:
		ret = (to_Int(o) != 0);
		break;
	case Double:
		ret = (a.d != 0);
		break;
	default:
		break;
	}
	return ret;
}
