#include "runtime_api_32.h"
#include "runtime_api_common.c"

void print_object(FILE *fp, UnionType o)
{
	if (!fp) fp = stdout;
	//fprintf(stderr, "type = [%d]\n", TYPE(o));
	switch (TYPE(o.o)) {
	case Int:
		fprintf(fp, "%d", to_Int(o.o));
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
		fprintf(fp, "ARRAY(%p)", to_Ptr(o.o));
		break;
	case Hash:
		print_hash(fp, to_Hash(o.o));
		break;
	case HashRef:
		fprintf(fp, "HASH(%p)", to_Ptr(o.o));
		break;
	case CodeRef:
		fprintf(fp, "CODE(%p)", to_Ptr(o.o));
		break;
	case ObjectType: {
		Object *object = to_Object(o.o);
		print_object(fp, object->v);
		break;
	}
	case BlessedObjectType:
		fprintf(fp, "%s=HASH(%p)", (to_BlessedObject(o.o))->pkg_name, to_Ptr(o.o));
		break;
	default:
		break;
	}
}

unsigned long long TYPE(uint64_t data)
{
	if (data >= UNDEF_TAG) {
		return Undefined;
	} else if (data >= FFI_TAG) {
		return FFI;
	} else if (data >= PACKAGE_TAG) {
		return Package;
	} else if (data >= IO_HANDLER_TAG) {
		return IOHandler;
	} else if (data >= CODE_REF_TAG) {
		return CodeRef;
	} else if (data >= BLESSED_OBJECT_TAG) {
		return BlessedObjectType;
	} else if (data >= OBJECT_TAG) {
		return ObjectType;
	} else if (data >= HASH_REF_TAG) {
		return HashRef;
	} else if (data >= HASH_TAG) {
		return Hash;
	} else if (data >= ARRAY_REF_TAG) {
		return ArrayRef;
	} else if (data >= ARRAY_TAG) {
		return Array;
	} else if (data >= STRING_TAG) {
		return String;
	} else if (data >= INT_TAG) {
		return Int;
	} else {
		return Double;
	}
}
