#include "runtime_api.h"
#include "runtime_api_common.c"

void print_object(FILE *fp, UnionType o)
{
	if (!fp) fp = stdout;
	//fprintf(stderr, "type = [%d]\n", TYPE(o));
	switch (TYPE(o.o)) {
	case Int:
		fprintf(fp, "%d", (int)to_Int(o.o));
		break;
	case Double:
		fprintf(fp, "%f", o.d);
		break;
	case String:
		fprintf(fp, "%s", (to_String(o.o))->s);
		break;
	case Array:
		if (fp != stdout) {
			_print_with_handler(fp, to_Array(o.o));
		} else {
			print(to_Array(o.o));
		}
		break;
	case ArrayRef:
		fprintf(fp, "ARRAY(%p)", o.o);
		break;
	case Hash:
		print_hash(fp, to_Hash(o.o));
		break;
	case HashRef:
		fprintf(fp, "HASH(%p)", o.o);
		break;
	case CodeRef:
		fprintf(fp, "CODE(%p)", o.o);
		break;
	case ObjectType: {
		Object *object = to_Object(o.o);
		print_object(fp, object->v);
		break;
	}
	case BlessedObjectType:
		fprintf(fp, "%s=HASH(%p)", (to_BlessedObject(o.o))->pkg_name, o.o);
		break;
	default:
		break;
	}
}
