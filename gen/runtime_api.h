#include "runtime_api_common_header.h"

typedef union {
	double d;
	int i;
	char *s;
	void *a;
	void *o;
} UnionType;

#include "runtime_api_common_body.h"

#define NaN                (0xFFF0000000000000)
#define MASK               (0x00000000FFFFFFFF)
#define _TYPE              (0x000F000000000000)
#define INT_TAG            (uint64_t)(0x0001000000000000)
#define STRING_TAG         (uint64_t)(0x0002000000000000)
#define ARRAY_TAG          (uint64_t)(0x0003000000000000)
#define ARRAY_REF_TAG      (uint64_t)(0x0004000000000000)
#define HASH_TAG           (uint64_t)(0x0005000000000000)
#define HASH_REF_TAG       (uint64_t)(0x0006000000000000)
#define OBJECT_TAG         (uint64_t)(0x0007000000000000)
#define BLESSED_OBJECT_TAG (uint64_t)(0x0008000000000000)
#define CODE_REF_TAG       (uint64_t)(0x0009000000000000)
#define IO_HANDLER_TAG     (uint64_t)(0x000a000000000000)
#define PACKAGE_TAG        (uint64_t)(0x000b000000000000)
#define FFI_TAG            (uint64_t)(0x000c000000000000)
#define UNDEF_TAG          (uint64_t)(0x000d000000000000)

#define TYPE(data) ((((uint64_t)data & NaN) == NaN) * (((uint64_t)data & _TYPE) >> 48))

#define INT_init(data) (void *)(uint64_t)((data & MASK) | NaN | INT_TAG)
#define DOUBLE_init(data) (void *)&data
#define STRING_init(data) (void *)((uint64_t)data | NaN | STRING_TAG)
#define ARRAY_init(data) (void *)((uint64_t)data | NaN | ARRAY_TAG)
#define ARRAY_REF_init(data) (void *)((uint64_t)data | NaN | ARRAY_REF_TAG)
#define HASH_init(data) (void *)((uint64_t)data | NaN | HASH_TAG)
#define HASH_REF_init(data) (void *)((uint64_t)data | NaN | HASH_REF_TAG)
#define OBJECT_init(data) (void *)((uint64_t)data | NaN | OBJECT_TAG)
#define CODE_REF_init(data) (void *)((uint64_t)data | NaN | CODE_REF_TAG)
#define BLESSED_OBJECT_init(data) (void *)((uint64_t)data | NaN | BLESSED_OBJECT_TAG)
#define IO_HANDLER_init(data) (void *)((uint64_t)data | NaN | IO_HANDLER_TAG)
#define PACKAGE_init(data) (void *)((uint64_t)data | NaN | PACKAGE_TAG)
#define FFI_init(data) (void *)((uint64_t)data | NaN | FFI_TAG)
#define UNDEF_init(data) (void *)((uint64_t)data | NaN | UNDEF_TAG)

#define to_Int(o) ((intptr_t)o)
#define to_Double(o) (*(double *)o)
#define to_String(o) (StringObject *)((uint64_t)o ^ (NaN | STRING_TAG))
#define to_Object(o) (Object *)((uint64_t)o ^ (NaN | OBJECT_TAG))
#define to_Array(o) (ArrayObject *)((uint64_t)o ^ (NaN | ARRAY_TAG))
#define to_ArrayRef(o) (ArrayRefObject *)((uint64_t)o ^ (NaN | ARRAY_REF_TAG))
#define to_Hash(o) (HashObject *)((uint64_t)o ^ (NaN | HASH_TAG))
#define to_Package(o) (PackageObject *)((uint64_t)o ^ (NaN | PACKAGE_TAG))
#define to_HashRef(o) (HashRefObject *)((uint64_t)o ^ (NaN | HASH_REF_TAG))
#define to_CodeRef(o) (CodeRefObject *)((uint64_t)o ^ (NaN | CODE_REF_TAG))
#define to_BlessedObject(o) (BlessedObject *)((uint64_t)o ^ (NaN | BLESSED_OBJECT_TAG))
#define to_IOHandler(o) (IOHandlerObject *)((uint64_t)o ^ (NaN | IO_HANDLER_TAG))
#define to_FFI(o) (FFIObject *)((uint64_t)o ^ (NaN | FFI_TAG))

#define TYPE_CHECK(o, T) do {					\
		if (TYPE(o) != T) {						\
			fprintf(stderr, "type = [%lu]\n", TYPE(o));	\
			assert(0 && "Type Error!\n");		\
		}										\
	} while (0)

#include "runtime_api_common_footer.h"
