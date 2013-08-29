#include <stdio.h>
#include <stdint.h>

#define NaN       (uint64_t)(0xFFF0000000000000)
#define Mask      (uint64_t)(0x00000000FFFFFFFF)
#define TYPE      (uint64_t)(0x000F000000000000)

#define IntTag    (uint64_t)(0x0001000000000000)
#define StringTag (uint64_t)(0x0002000000000000)
#define ArrayTag  (uint64_t)(0x0003000000000000)
#define HashTag   (uint64_t)(0x0004000000000000)
#define ObjectTag (uint64_t)(0x0005000000000000)

//#define INT_init(o, idata) o.ivalue = idata; o.bytes = ((idata & Mask) | NaN | IntTag)
typedef union {
	double d;
	void *o;
} VALUE;

VALUE f()
{
	//VALUE v;
	//double d = 1.234556677;
	//fprintf(stderr, "d's address = [%p]\n", d);
	//return (void *)((double *)&d);
//	fprintf(stderr, "v = [%p]\n", v);
//	return v;
	VALUE v;
	v.d = 1.234556677;
	int hoge;
	double v2;
	return v;
}

int main(void)
{
	VALUE v;
	VALUE v2;
	char *s = "hello world";
	fprintf(stderr, "s = [%p]\n", s);
	int i = -2;
	int j = 23;
	double d = 1.234556677;
	VALUE hoge = f();
	void *o = hoge.o;
	fprintf(stderr, "[%p]\n", o);
	fprintf(stderr, "[%f]\n", (hoge.d));
	//v = (void *)&d;
	//fprintf(stderr, "[%f]\n", d);
	//fprintf(stderr, "p = [%p]\n", i);
	//v = (double)(uint64_t)((i & Mask) | NaN | IntTag);
	//v2 = (void *)(uint64_t)((j & Mask) | NaN | IntTag);
	fprintf(stderr, "[%p]\n", ((uint64_t)s | NaN | StringTag));
	//int type = (((uint64_t)v & NaN) == NaN) * (((uint64_t)v & TYPE) >> 48);
	//fprintf(stderr, "%d\n", type);
	//fprintf(stderr, "%s\n", (char *)((uint64_t)v ^ (NaN | StringTag)));
	//int ivalue = (uint64_t)v ^ (NaN | IntTag);
	//fprintf(stderr, "ivalue = [%p]\n", v);
	//fprintf(stderr, "ivalue = [%d]\n", ivalue);
	//int ivalue2 = (intptr_t)v2;
	//v = f();
	//double dvalue = *(double *)v;
	//fprintf(stderr, "p = [%p]\n", ((intptr_t)v ^ ~Mask) ^ (NaN | IntTag));
	//int k = ((int)v ^ (NaN | IntTag));
	//fprintf(stderr, "k = [%p]\n", k);
	//double d2 = (double)k;//((intptr_t)v ^ (NaN | IntTag));
	//fprintf(stderr, "[%f]\n", d2);//(double)((intptr_t)v + 0));
	//int added_value = ivalue + ivalue2;
	//fprintf(stderr, "[%d]\n", added_value);
	//void *pointer = (void *)&added_value;
	//type = (((uint64_t)pointer & NaN) == NaN) * (((uint64_t)pointer & TYPE) >> 48);
	//fprintf(stderr, "type = [%d]\n", type);
	//fprintf(stderr, "%p\n", v);

	//STRING_init(v, s);
	//fprintf(stderr, "[%f]\n", dvalue);
	//fprintf(stderr, "[%f]\n", *(double *)v.dvalue);
	//fprintf(stderr, "[%s]\n", (char *)v);
	return 0;
}
