#include <stdio.h>

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
