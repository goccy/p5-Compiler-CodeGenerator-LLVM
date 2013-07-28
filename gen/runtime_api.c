#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum {
	Int,
	Double,
	String,
	Array,
	Hash,
	BlessedObject,
	ObjectType,
	Unknown
} Type;

typedef struct _Value {
	long ivalue;
	double dvalue;
	char *svalue;
	void *ovalue;
} Value;

typedef struct _Object {
	int type;
	Value v;
} Object;

typedef struct _Array {
	int type;
	Object **list;
	size_t size;
} ArrayObject;

void print(ArrayObject *array);
void print_object(Object *o)
{
	switch (o->type) {
	case Int:
		printf("%ld", o->v.ivalue);
		break;
	case Double:
		printf("%lf", o->v.dvalue);
		//fprintf(stdout, "%lf", o->v.dvalue);
		break;
	case String:
		//fprintf(stdout, "%s", o->v.svalue);
		printf("%s", o->v.svalue);
		break;
	case Array: {
		ArrayObject *array = (ArrayObject *)o->v.ovalue;
		print(array);
		break;
	}
	case ObjectType:
		print_object((Object *)o->v.ovalue);
		break;
	default:
		break;
	}
}

void print(ArrayObject *array)
{
	size_t size = array->size;
	size_t i = 0;
	for (i = 0; i < size; i++) {
		Object *o = array->list[i];
		print_object(o);
	}
}

void say(ArrayObject *array)
{
	print(array);
	//fprintf(stdout, "\n");
	printf("\n");
}

Object *shift(ArrayObject *args)
{
	Object *ret = NULL;
	size_t size = args->size;
	if (size > 1) return NULL;
	if (size == 1) {
		Object *o = args->list[0];
		if (o->type != Array) {
			fprintf(stderr, "Type Error!: must be array at shift argument\n");
			return NULL;
		}
		ArrayObject *array = (ArrayObject *)o->v.ovalue;
		ret = array->list[0];
		array->size--;
		memmove(array->list, array->list + 1, array->size * sizeof(void *));
	} else {
		fprintf(stderr, "fetch from function argument\n");
	}
	return ret;
}

Object *push(ArrayObject *args)
{
	size_t size = args->size;
	Object *ret = NULL;
	if (size != 2) {
		fprintf(stderr, "Type Error!: near by push\n");
	} else {
		Object *array = args->list[0];
		Object *value = args->list[1];
		if (array->type != Array) {
			fprintf(stderr, "Type Error!: must be array at push 1 argument\n");
		}
		ArrayObject *base = (ArrayObject *)array->v.ovalue;
		void *tmp;
		if (!(tmp = malloc(sizeof(Object) * (base->size + 1)))) {
			fprintf(stderr, "ERROR!!: cannot allocated memory\n");
		} else {
			memcpy(tmp, base->list, sizeof(Object) * base->size);
			base->list = (Object **)tmp;
			base->list[base->size] = value;
			base->size++;
			ret = (Object *)malloc(sizeof(Object));
			ret->type = Int;
			ret->v.ivalue = base->size;
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

#define SET(param, target, value_a, value_b, op)		\
	switch (value_b->type) {							\
	case Int:											\
		target->type = Int;								\
		target->v.param = value_a op value_b->v.ivalue;	\
		break;											\
	case Double:										\
		target->type = Double;							\
		target->v.dvalue = value_a op value_b->v.dvalue;	\
		break;											\
	default:											\
		break;											\
	}

Object *Object_addObject(Object *_a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	Object *b = (Object *)_b->v.ovalue;
	switch (a->type) {
	case Int:
		SET(ivalue, ret, a->v.ivalue, b, +);
		break;
	case Double:
		ret->type = Double;
		SET(dvalue, ret, a->v.dvalue, b, +);
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_addInt(Object *_a, int b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	switch (a->type) {
	case Int:
		ret->type = Int;
		ret->v.ivalue = a->v.ivalue + b;
		break;
	case Double:
		ret->type = Double;
		ret->v.dvalue = a->v.dvalue + b;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_addInt2(int a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *b = (Object *)_b->v.ovalue;
	switch (b->type) {
	case Int:
		ret->type = Int;
		ret->v.ivalue = a + b->v.ivalue;
		break;
	case Double:
		ret->type = Double;
		ret->v.dvalue = a + b->v.dvalue;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_addDouble(Object *_a, double b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	ret->type = Double;
	switch (a->type) {
	case Int:
		ret->v.dvalue = a->v.ivalue + b;
		break;
	case Double:
		ret->v.dvalue = a->v.dvalue + b;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_addDouble2(double a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *b = (Object *)_b->v.ovalue;
	ret->type = Double;
	switch (b->type) {
	case Int:
		ret->v.dvalue = b->v.ivalue + a;
		break;
	case Double:
		ret->v.dvalue = b->v.dvalue + a;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_subObject(Object *_a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	Object *b = (Object *)_b->v.ovalue;
	switch (a->type) {
	case Int:
		SET(ivalue, ret, a->v.ivalue, b, -);
		break;
	case Double:
		ret->type = Double;
		SET(dvalue, ret, a->v.dvalue, b, -);
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_subInt(Object *_a, int b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	switch (a->type) {
	case Int:
		ret->type = Int;
		ret->v.ivalue = a->v.ivalue - b;
		break;
	case Double:
		ret->type = Double;
		ret->v.dvalue = a->v.dvalue - b;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_subInt2(int a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *b = (Object *)_b->v.ovalue;
	switch (b->type) {
	case Int:
		ret->type = Int;
		ret->v.ivalue = a - b->v.ivalue;
		break;
	case Double:
		ret->type = Double;
		ret->v.dvalue = a - b->v.dvalue;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_subDouble(Object *_a, double b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	ret->type = Double;
	switch (a->type) {
	case Int:
		ret->v.dvalue = a->v.ivalue - b;
		break;
	case Double:
		ret->v.dvalue = a->v.dvalue - b;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_subDouble2(double a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *b = (Object *)_b->v.ovalue;
	ret->type = Double;
	switch (b->type) {
	case Int:
		ret->v.dvalue = a - b->v.ivalue;
		break;
	case Double:
		ret->v.dvalue = a - b->v.dvalue;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_mulObject(Object *_a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	Object *b = (Object *)_b->v.ovalue;
	switch (a->type) {
	case Int:
		SET(ivalue, ret, a->v.ivalue, b, *);
		break;
	case Double:
		ret->type = Double;
		SET(dvalue, ret, a->v.dvalue, b, *);
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_mulInt(Object *_a, int b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	switch (a->type) {
	case Int:
		ret->type = Int;
		ret->v.ivalue = a->v.ivalue * b;
		break;
	case Double:
		ret->type = Double;
		ret->v.dvalue = a->v.dvalue * b;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_mulInt2(int a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *b = (Object *)_b->v.ovalue;
	switch (b->type) {
	case Int:
		ret->type = Int;
		ret->v.ivalue = a * b->v.ivalue;
		break;
	case Double:
		ret->type = Double;
		ret->v.dvalue = a * b->v.dvalue;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_mulDouble(Object *_a, double b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	ret->type = Double;
	switch (a->type) {
	case Int:
		ret->v.dvalue = a->v.ivalue * b;
		break;
	case Double:
		ret->v.dvalue = a->v.dvalue * b;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_mulDouble2(double a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *b = (Object *)_b->v.ovalue;
	ret->type = Double;
	switch (b->type) {
	case Int:
		ret->v.dvalue = a * b->v.ivalue;
		break;
	case Double:
		ret->v.dvalue = a * b->v.dvalue;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_divObject(Object *_a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	Object *b = (Object *)_b->v.ovalue;
	switch (a->type) {
	case Int:
		SET(ivalue, ret, a->v.ivalue, b, /);
		break;
	case Double:
		ret->type = Double;
		SET(dvalue, ret, a->v.dvalue, b, /);
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_divInt(Object *_a, int b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	switch (a->type) {
	case Int:
		ret->type = Int;
		ret->v.ivalue = a->v.ivalue / b;
		break;
	case Double:
		ret->type = Double;
		ret->v.dvalue = a->v.dvalue / b;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_divInt2(int a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *b = (Object *)_b->v.ovalue;
	switch (b->type) {
	case Int:
		ret->type = Int;
		ret->v.ivalue = a / b->v.ivalue;
		break;
	case Double:
		ret->type = Double;
		ret->v.dvalue = a / b->v.dvalue;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_divDouble(Object *_a, double b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *a = (Object *)_a->v.ovalue;
	ret->type = Double;
	switch (a->type) {
	case Int:
		ret->v.dvalue = a->v.ivalue / b;
		break;
	case Double:
		ret->v.dvalue = a->v.dvalue / b;
		break;
	default:
		break;
	}
	return ret;
}

Object *Object_divDouble2(double a, Object *_b)
{
	Object *ret = (Object *)malloc(sizeof(Object));
	Object *b = (Object *)_b->v.ovalue;
	ret->type = Double;
	switch (b->type) {
	case Int:
		ret->v.dvalue = a / b->v.ivalue;
		break;
	case Double:
		ret->v.dvalue = a / b->v.dvalue;
		break;
	default:
		break;
	}
	return ret;
}
