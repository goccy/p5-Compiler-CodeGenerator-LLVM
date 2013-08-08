#include "runtime_api.h"
UnionType u;

void print_object(UnionType _o)
{
	void *o = _o.o;
	switch (TYPE(o)) {
	case Int:
		printf("%d", to_Int(o));
		break;
	case Double:
		fprintf(stderr, "%f", _o.d);
		break;
	case String:
		printf("%s", to_String(o));
		break;
	case Array:
		print(to_Array(o));
		break;
	case ObjectType: {
		Object *object = to_Object(o);
		print_object(object->v);
		break;
	}
	default:
		break;
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
	printf("\n");
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
