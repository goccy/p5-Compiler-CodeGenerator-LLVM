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
typedef void *VALUE;

int main(void)
{
	VALUE v;
	char *s = "hello world";
	int i = -123;
	double d = 1.234556677;
	v = (void *)&d;
	fprintf(stderr, "[%f]\n", d);
	//v = (void *)(uint64_t)((i & Mask) | NaN | IntTag);
	//v = (void *)((uint64_t)s | NaN | StringTag);
	int type = (((uint64_t)v & NaN) == NaN) * (((uint64_t)v & TYPE) >> 48);
	fprintf(stderr, "%d\n", type);
	//fprintf(stderr, "%s\n", (char *)((uint64_t)v ^ (NaN | StringTag)));
	//int ivalue = (intptr_t)v;
	double dvalue = *(double *)v;
	//fprintf(stderr, "[%d]\n", ivalue);
	//fprintf(stderr, "%p\n", v);

	//STRING_init(v, s);
	fprintf(stderr, "[%f]\n", dvalue);
	//fprintf(stderr, "[%f]\n", *(double *)v.dvalue);
	//fprintf(stderr, "[%s]\n", (char *)v);
	return 0;
}
