#include <stdio.h>

typedef enum {
	Int,
	Double,
	String,
	Array,
	Hash,
	BlessedObject,
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

void print(ArrayObject *array)
{
	size_t size = array->size;
	int i = 0;
	for (i = 0; i < size; i++) {
		Object *o = array->list[i];
		switch (o->type) {
		case Int:
			fprintf(stdout, "%ld", o->v.ivalue);
			break;
		case Double:
			fprintf(stdout, "%lf", o->v.dvalue);
			break;
		case String:
			fprintf(stdout, "%s", o->v.svalue);
			break;
		default:
			break;
		}
	}
}

void say(ArrayObject *array)
{
	print(array);
	fprintf(stdout, "\n");
}
