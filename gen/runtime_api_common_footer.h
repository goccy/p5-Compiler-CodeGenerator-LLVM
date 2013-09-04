UnionType print(ArrayObject *array);
void print_hash(FILE *fp, HashObject *hash);
void print_object(FILE *fp, UnionType o);
void _print_with_handler(FILE *fp, ArrayObject *array);
void dumper(UnionType o, size_t indent);
Object *fetch_object(void);
UnionType new_Hash(ArrayObject *array);
HashRefObject *dynamic_hash_ref_cast_code(UnionType *o);
ArrayRefObject *dynamic_array_ref_cast_code(UnionType *o);
UnionType new_Array(UnionType **list, size_t size);
UnionType new_ArrayRef(UnionType array);
UnionType new_IOHandler(const char *filename, const char *mode, FILE *fp);
UnionType new_String(char *str);
void make_object_pool(void);
PackageObject *get_pkg(char *pkg_name);
void Array_add(ArrayObject *array, UnionType *elem);
UnionType Hash_get(HashObject *hash, StringObject *key);
UnionType new_FFI(const char *name, void *ptr);
void store_method_by_pkg_name(char *pkg_name, char *mtd_name, Code code);
void add_base_name(char *pkg_name, char *base_name);

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
