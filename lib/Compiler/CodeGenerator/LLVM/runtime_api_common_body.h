typedef UnionType Value;

typedef struct _Object {
	int type;
	Value v;
	void *slot1;
	void *slot2;
	void *slotru3;
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
	//Value *list;
	Value **list;
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

typedef struct _Package {
	int header;
	Value *table;
	StringObject **keys;
	size_t size;
	ArrayObject *isa;
	const char *name;
} PackageObject;

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
	PackageObject *mtds;
	const char *pkg_name;
} BlessedObject;

typedef struct _IOHandlerObject {
	int header;
	FILE *fp;
	const char *filename;
	const char *mode;
} IOHandlerObject;

typedef struct _FFIObject {
	int header;
	Value members; /* boxed HashObject */
	PackageObject *mtds;
	const char *pkg_name;
	void *ptr;
} FFIObject;

#define HASH_TABLE_SIZE 512

extern UnionType undef;
extern UnionType *base_hash_table;
extern HashObject *pkg_map;
extern int count;
extern Object **object_pool;
