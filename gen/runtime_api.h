#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

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

#define to_Int(o) o->v.ivalue
#define to_Double(o) o->v.dvalue
#define to_String(o) o->v.svalue
#define to_Object(o) (Object *)o->v.ovalue
#define to_Array(o) (ArrayObject *)o->v.ovalue
#define TYPE_CHECK(o, T) do {					\
		if (o->type != T) {						\
			assert(0 && "Type Error!\n");		\
		}										\
	} while (0)


void print(ArrayObject *array);

#define SET(param, target, a, b, op)			\
	switch (b->type) {							\
	case Int:									\
		target->type = Int;						\
		target->v.param = a op to_Int(b);		\
		break;									\
	case Double:								\
		target->type = Double;					\
		target->v.dvalue = a op to_Double(b);	\
		break;									\
	default:									\
		break;									\
	}

#define setResultByObjectObject(ret, a, b, op) do {	\
		switch (a->type) {							\
		case Int:									\
			SET(ivalue, ret, to_Int(a), b, op);		\
			break;									\
		case Double:								\
			ret->type = Double;						\
			SET(dvalue, ret, to_Double(a), b, op);	\
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
