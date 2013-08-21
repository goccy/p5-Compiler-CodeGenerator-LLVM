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
	ArrayRef,
	Hash,
	HashRef,
	ObjectType,
	BlessedObjectType,
	CodeRef,
	IOHandler,
	Undefined
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
	void *slot1;
	void *slot2;
	void *slot3;
	void *slot4;
	void *slot5;
	void *slot6;
} Object;

typedef struct _Undef {
	int header;
} UndefObject;

typedef struct _String {
	int header;
	char *s;
	size_t len;
	unsigned long hash;
} StringObject;

typedef struct _Array {
	int type;
	Value *list;
	size_t size;
} ArrayObject;

typedef struct _ArrayRef {
	int type;
	Value v;
} ArrayRefObject;

typedef struct _Hash {
	int header;
	Value *table;
	StringObject **keys;
	size_t size;
} HashObject;

typedef struct _HashRef {
	int type;
	Value v; /* boxed HashObject */
} HashRefObject;

typedef UnionType(*Code)(ArrayObject*);

typedef struct _CodeRef {
	int header;
	Code code;
} CodeRefObject;

typedef struct _BlessedObject {
	int header;
	Value members; /* boxed HashObject */
	HashObject *mtds;
	const char *pkg_name;
} BlessedObject;

typedef struct _IOHandlerObject {
	int header;
	FILE *fp;
} IOHandlerObject;

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
#define UNDEF_TAG          (uint64_t)(0x000b000000000000)

#define HASH_TABLE_SIZE 512

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
#define UNDEF_init(data) (void *)((uint64_t)data | NaN | UNDEF_TAG)

#define to_Int(o) ((intptr_t)o)
#define to_Double(o) (*(double *)o)
#define to_String(o) (StringObject *)((uint64_t)o ^ (NaN | STRING_TAG))
#define to_Object(o) (Object *)((uint64_t)o ^ (NaN | OBJECT_TAG))
#define to_Array(o) (ArrayObject *)((uint64_t)o ^ (NaN | ARRAY_TAG))
#define to_ArrayRef(o) (ArrayRefObject *)((uint64_t)o ^ (NaN | ARRAY_REF_TAG))
#define to_Hash(o) (HashObject *)((uint64_t)o ^ (NaN | HASH_TAG))
#define to_HashRef(o) (HashRefObject *)((uint64_t)o ^ (NaN | HASH_REF_TAG))
#define to_CodeRef(o) (CodeRefObject *)((uint64_t)o ^ (NaN | CODE_REF_TAG))
#define to_BlessedObject(o) (BlessedObject *)((uint64_t)o ^ (NaN | BLESSED_OBJECT_TAG))
#define to_IOHandler(o) (IOHandlerObject *)((uint64_t)o ^ (NaN | IO_HANDLER_TAG))

#define TYPE_CHECK(o, T) do {					\
		if (TYPE(o) != T) {						\
			assert(0 && "Type Error!\n");		\
		}										\
	} while (0)

UnionType print(ArrayObject *array);
void print_hash(HashObject *hash);
void print_object(UnionType o);
void dumper(UnionType o, size_t indent);
Object *fetch_object(void);
UnionType new_Hash(ArrayObject *array);
HashRefObject *dynamic_hash_ref_cast_code(UnionType *o);
ArrayRefObject *dynamic_array_ref_cast_code(UnionType *o);
UnionType new_Array(UnionType *list, size_t size);
UnionType new_ArrayRef(UnionType array);
UnionType new_IOHandler(FILE *fp);

#define SET(ret, a, b, op) do {					\
		switch (TYPE(b->o)) {					\
		case Int: {								\
			int j = to_Int(b->o);				\
			int k = a op j;						\
			ret.o = INT_init(k);				\
			break;								\
		}										\
		case Double: {							\
			double d = a op b->d;				\
			ret.d = d;							\
			break;								\
		}										\
		default:								\
			break;								\
		}										\
	} while (0)

#define CMP_SET(ret, a, b, op) do {				\
		switch (TYPE(b->o)) {					\
		case Int: {								\
			int i = a op to_Int(b->o);			\
			ret.o = INT_init(i);				\
			break;								\
		}										\
		case Double: {							\
			double d = a op b->d;				\
			ret.o = INT_init((int)d);			\
			break;								\
		}										\
		default:								\
			break;								\
		}										\
	} while (0)

#define setResultByObjectObject(ret, a, b, op) do {	\
		switch (TYPE(a->o)) {						\
		case Int: {									\
			int i = to_Int(a->o);					\
			SET(ret, i, b, op);						\
			break;									\
		}											\
		case Double:								\
			SET(ret, a->d, b, op);					\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setCmpResultByObjectObject(ret, a, b, op) do {	\
		switch (TYPE(a->o)) {						\
		case Int:									\
			CMP_SET(ret, to_Int(a->o), b, op);		\
			break;									\
		case Double:								\
			CMP_SET(ret, a->d, b, op);				\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setResultByObjectInt(ret, a, b, op) do {	\
		switch (TYPE(a->o)) {						\
		case Int: {									\
			int i = (int)to_Int(a->o) op b;			\
			ret.o = INT_init(i);					\
			break;									\
		}											\
		case Double:								\
			ret.d = a->d op b;						\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setCmpResultByObjectInt(ret, a, b, op) do {	\
		switch (TYPE(a->o)) {						\
		case Int: {									\
			int i = (int)to_Int(a->o) op b;			\
			ret.o = INT_init(i);					\
			break;									\
		}											\
		case Double: {								\
			int i = a->d op b;						\
			ret.o = INT_init(i);					\
			break;									\
		}											\
		default:									\
			break;									\
		}											\
	} while (0)

#define setResultByIntObject(ret, a, b, op) do {	\
		switch (TYPE(b->o)) {						\
		case Int: {									\
			int i = a op (int)to_Int(b->o);			\
			ret.o = INT_init(i);					\
			break;									\
		}											\
		case Double:								\
			ret.d = (double)(int)a op b->d;			\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setCmpResultByIntObject(ret, a, b, op) do {	\
		switch (TYPE(b->o)) {						\
		case Int: {									\
			int i = a op (int)to_Int(b->o);			\
			ret.o = INT_init(i);					\
			break;									\
		}											\
		case Double: {								\
			int i = a op b->d;						\
			ret.o = INT_init(i);					\
			break;									\
		}											\
		default:									\
			break;									\
		}											\
	} while (0)

#define setResultByObjectDouble(ret, a, b, op) do {	\
		switch (TYPE(a->o)) {						\
		case Int:									\
			ret.d = (double)(int)to_Int(a->o) op b;	\
			break;									\
		case Double:								\
			ret.d = a->d op b;						\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setCmpResultByObjectDouble(ret, a, b, op) do {	\
		switch (TYPE(a->o)) {							\
		case Int: {										\
			int i = (double)(int)to_Int(a->o) op b;		\
			ret.o = INT_init(i);						\
			break;										\
		}												\
		case Double: {									\
			int i = a->d op b;							\
			ret.o = INT_init(i);						\
			break;										\
		}												\
		default:										\
			break;										\
		}												\
	} while (0)

#define setResultByDoubleObject(ret, a, b, op) do {	\
		switch (TYPE(b->o)) {						\
		case Int:									\
			ret.d = a op to_Int(b->o);				\
			break;									\
		case Double:								\
			ret.d = a op b->d;						\
			break;									\
		default:									\
			break;									\
		}											\
	} while (0)

#define setCmpResultByDoubleObject(ret, a, b, op) do {	\
		switch (TYPE(b->o)) {							\
		case Int: {										\
			int i = a op to_Int(b->o);					\
			ret.o = INT_init(i);						\
			break;										\
		}												\
		case Double: {									\
			int i = a op b->d;							\
			ret.o = INT_init(i);						\
			break;										\
		}												\
		default:										\
			break;										\
		}												\
	} while (0)
