#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <stdint.h>
#include <stdarg.h>
#include <math.h>

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
	Package,
	FFI,
	Undefined
} Type;
