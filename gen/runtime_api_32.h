#include "runtime_api_common_header.h"

typedef union {
	double d;
	uint64_t o;
} UnionType;

#include "runtime_api_common_body.h"

#define NaN                (uint64_t)(0x7FF8000000000000)
#define INT_TAG            (uint64_t)(0xfffffff100000000)
#define STRING_TAG         (uint64_t)(0xfffffff200000000)
#define ARRAY_TAG          (uint64_t)(0xfffffff300000000)
#define ARRAY_REF_TAG      (uint64_t)(0xfffffff400000000)
#define HASH_TAG           (uint64_t)(0xfffffff500000000)
#define HASH_REF_TAG       (uint64_t)(0xfffffff600000000)
#define OBJECT_TAG         (uint64_t)(0xfffffff700000000)
#define BLESSED_OBJECT_TAG (uint64_t)(0xfffffff800000000)
#define CODE_REF_TAG       (uint64_t)(0xfffffff900000000)
#define IO_HANDLER_TAG     (uint64_t)(0xfffffffa00000000)
#define PACKAGE_TAG        (uint64_t)(0xfffffffb00000000)
#define FFI_TAG            (uint64_t)(0xfffffffc00000000)
#define UNDEF_TAG          (uint64_t)(0xfffffffd00000000)

unsigned long long TYPE(uint64_t data);

#define INT_init(data) ((uint32_t)data | INT_TAG)
#define STRING_init(data) ((uint64_t)data | STRING_TAG)
#define ARRAY_init(data) ((uint64_t)data | ARRAY_TAG)
#define ARRAY_REF_init(data) ((uint64_t)data | ARRAY_REF_TAG)
#define HASH_init(data) ((uint64_t)data | HASH_TAG)
#define HASH_REF_init(data) ((uint64_t)data | HASH_REF_TAG)
#define OBJECT_init(data) ((uint64_t)data | OBJECT_TAG)
#define CODE_REF_init(data) ((uint64_t)data | CODE_REF_TAG)
#define BLESSED_OBJECT_init(data) ((uint64_t)data | BLESSED_OBJECT_TAG)
#define IO_HANDLER_init(data) ((uint64_t)data | IO_HANDLER_TAG)
#define PACKAGE_init(data) ((uint64_t)data | PACKAGE_TAG)
#define FFI_init(data) ((uint64_t)data | FFI_TAG)
#define UNDEF_init(data) ((uint64_t)data | UNDEF_TAG)

#define to_Ptr(o) (void *)(o & (uint64_t)0xfffffff)
#define to_Int(o) ((intptr_t)o)
#define to_String(o) (StringObject *)to_Ptr(o)
#define to_Object(o) (Object *)to_Ptr(o)
#define to_Array(o) (ArrayObject *)to_Ptr(o)
#define to_ArrayRef(o) (ArrayRefObject *)to_Ptr(o)
#define to_Hash(o) (HashObject *)to_Ptr(o)
#define to_Package(o) (PackageObject *)to_Ptr(o)
#define to_HashRef(o) (HashRefObject *)to_Ptr(o)
#define to_CodeRef(o) (CodeRefObject *)to_Ptr(o)
#define to_BlessedObject(o) (BlessedObject *)to_Ptr(o)
#define to_IOHandler(o) (IOHandlerObject *)to_Ptr(o)
#define to_FFI(o) (FFIObject *)to_Ptr(o)

#define TYPE_CHECK(o, T) do {								\
		if (TYPE(o) != T) {									\
			fprintf(stderr, "type = [%llu]\n", TYPE(o));	\
			assert(0 && "Type Error!\n");					\
		}													\
	} while (0)

#include "runtime_api_common_footer.h"
