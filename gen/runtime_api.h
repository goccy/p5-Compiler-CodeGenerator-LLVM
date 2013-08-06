#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdint.h>

typedef enum {
	Double,
	Int,
	String,
	Array,
	Hash,
	ObjectType,
	BlessedObject,
	Unknown
} Type;

typedef union {
	double d;
	int i;
	char *s;
	void *a;
	void *o;
} UnionType;

typedef UnionType Value;

typedef struct _Object {
	int type;
	Value v;
} Object;

typedef struct _Array {
	int type;
	Value *list;
	size_t size;
} ArrayObject;

#define NaN       (0xFFF0000000000000)
#define MASK      (0x00000000FFFFFFFF)
#define _TYPE      (0x000F000000000000)
#define INT_TAG    (uint64_t)(0x0001000000000000)
#define STRING_TAG (uint64_t)(0x0002000000000000)
#define ARRAY_TAG  (uint64_t)(0x0003000000000000)
#define HASH_TAG   (uint64_t)(0x0004000000000000)
#define OBJECT_TAG (uint64_t)(0x0005000000000000)

#define TYPE(data) ((((uint64_t)data & NaN) == NaN) * (((uint64_t)data & _TYPE) >> 48))

#define INT_init(data) (void *)(uint64_t)((data & MASK) | NaN | INT_TAG)
#define DOUBLE_init(data) (void *)&data
#define STRING_init(data) (void *)((uint64_t)data | NaN | STRING_TAG)
#define ARRAY_init(data) (void *)((uint64_t)data | NaN | ARRAY_TAG)
#define HASH_init(data) (void *)((uint64_t)data | NaN | HASH_TAG)
#define OBJECT_init(data) (void *)((uint64_t)data | NaN | OBJECT_TAG)

#define to_Int(o) ((intptr_t)o)
#define to_Double(o) (*(double *)o)
#define to_String(o) (char *)((uint64_t)o ^ (NaN | STRING_TAG))
#define to_Object(o) (Object *)((uint64_t)o ^ (NaN | OBJECT_TAG))
#define to_Array(o) (ArrayObject *)((uint64_t)o ^ (NaN | ARRAY_TAG))
#define TYPE_CHECK(o, T) do {					\
		if (TYPE(o) != T) {						\
			assert(0 && "Type Error!\n");		\
		}										\
	} while (0)

void print(ArrayObject *array);

double g_d = 0;
#define SET(ret, a, b, op) do {						\
		switch (TYPE(b.o)) {							\
		case Int: {									\
			int i = a op to_Int(b.o);					\
			ret.o = INT_init(i);					\
			break;									\
		}											\
		case Double: {								\
			double d = (double)(int)a op to_Double(b.o);	\
			ret.d = d;										\
			break;									\
		}											\
		default:									\
			break;									\
		}											\
	} while (0)

#define setResultByObjectObject(ret, a, b, op) do {	\
		switch (TYPE(a.o)) {							\
		case Int:									\
			SET(ret, to_Int(a.o), b, op);				\
			break;									\
		case Double:								\
			SET(ret, to_Double(a.o), b, op);			\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setResultByObjectInt(ret, a, b, op) do {	\
		switch (a->type) {							\
		case Int:									\
			ret->type = Int;						\
			ret->v.ivalue = to_Int(a) op b;			\
			break;									\
		case Double:								\
			ret->type = Double;						\
			ret->v.dvalue = to_Double(a) op b;		\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setResultByIntObject(ret, a, b, op) do {	\
		switch (b->type) {							\
		case Int:									\
			ret->type = Int;						\
			ret->v.ivalue = a op to_Int(b);			\
			break;									\
		case Double:								\
			ret->type = Double;						\
			ret->v.dvalue = a op to_Double(b);		\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setResultByObjectDouble(ret, a, b, op) do {	\
		ret->type = Double;							\
		switch (a->type) {							\
		case Int:									\
			ret->v.dvalue = to_Int(a) op b;			\
			break;									\
		case Double:								\
			ret->v.dvalue = to_Double(a) op b;		\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setResultByDoubleObject(ret, a, b, op) do {	\
		ret->type = Double;							\
		switch (b->type) {							\
		case Int:									\
			ret->v.dvalue = a op to_Int(b);			\
			break;									\
		case Double:								\
			ret->v.dvalue = a op to_Double(b);		\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)
