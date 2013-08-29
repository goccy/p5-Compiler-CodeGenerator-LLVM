; ModuleID = 'LLVMIR'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sbuf = type { i8*, i32 }
%struct.__sFILEX = type opaque
%union.UnionType = type { double }
%struct._Hash = type { i32, %union.UnionType*, %struct._String**, i64 }
%struct._String = type { i32, i8*, i64, i64 }
%struct._Object = type { i32, %union.UnionType, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._Array = type { i32, %union.UnionType**, i64 }
%struct._IOHandlerObject = type { i32, %struct.__sFILE*, i8*, i8* }
%struct._Undef = type { i32 }
%struct._HashRef = type { i32, %union.UnionType }
%struct._ArrayRef = type { i32, %union.UnionType }
%struct._BlessedObject = type { i32, %union.UnionType, %struct._Hash*, i8* }
%struct._CodeRef = type { i32, i64 (%struct._Array*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%Object = type { i32, %union.UnionType }
%ArrayObject = type { i32, %union.UnionType**, i64 }
%StringObject = type { i32, i8*, i64, i64 }
%HashObject = type { i32, %union.UnionType*, i8**, i64 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [15 x i8] c"type = [%llu]\0A\00", align 1
@__func__._open = private unnamed_addr constant [6 x i8] c"_open\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"gen/runtime_api.c\00", align 1
@.str2 = private unnamed_addr constant [21 x i8] c"0 && \22Type Error!\5Cn\22\00", align 1
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str8 = private unnamed_addr constant [26 x i8] c"ERROR: file open error!!\0A\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"argument size = [%zu]\0A\00", align 1
@.str10 = private unnamed_addr constant [34 x i8] c"0 && \22Sorry, still not supported\22\00", align 1
@__func__._binmode = private unnamed_addr constant [9 x i8] c"_binmode\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str13 = private unnamed_addr constant [30 x i8] c"ERROR: could not reopen [%s]\0A\00", align 1
@__func__._chr = private unnamed_addr constant [5 x i8] c"_chr\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@__func__._close = private unnamed_addr constant [7 x i8] c"_close\00", align 1
@__func__._abs = private unnamed_addr constant [5 x i8] c"_abs\00", align 1
@.str15 = private unnamed_addr constant [36 x i8] c"0 && \22Type Error!!! abs's argument\22\00", align 1
@__func__._int = private unnamed_addr constant [5 x i8] c"_int\00", align 1
@__func__._sin = private unnamed_addr constant [5 x i8] c"_sin\00", align 1
@__func__._cos = private unnamed_addr constant [5 x i8] c"_cos\00", align 1
@undef = common global %union.UnionType zeroinitializer, align 8
@__stdoutp = external global %struct.__sFILE*
@.str16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"  '%s' => \00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str22 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@.str24 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str27 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str29 = private unnamed_addr constant [10 x i8] c"ARRAY(%p)\00", align 1
@.str30 = private unnamed_addr constant [9 x i8] c"HASH(%p)\00", align 1
@.str31 = private unnamed_addr constant [9 x i8] c"CODE(%p)\00", align 1
@.str32 = private unnamed_addr constant [12 x i8] c"%s=HASH(%p)\00", align 1
@.str33 = private unnamed_addr constant [26 x i8] c"===== debug_print ======\0A\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"=============\0A\00", align 1
@__func__.shift = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str35 = private unnamed_addr constant [30 x i8] c"fetch from function argument\0A\00", align 1
@.str36 = private unnamed_addr constant [34 x i8] c"ERROR!!: cannot allocated memory\0A\00", align 1
@.str37 = private unnamed_addr constant [27 x i8] c"Type Error!: near by push\0A\00", align 1
@__func__.push = private unnamed_addr constant [5 x i8] c"push\00", align 1
@__func__.HashRef_get = private unnamed_addr constant [12 x i8] c"HashRef_get\00", align 1
@.str38 = private unnamed_addr constant [33 x i8] c"0 && \22Type Error!: Unknown Type\22\00", align 1
@__func__.ArrayRef_get = private unnamed_addr constant [13 x i8] c"ArrayRef_get\00", align 1
@base_hash_table = common global %union.UnionType* null, align 8
@pkg_map = common global %struct._Hash* null, align 8
@.str39 = private unnamed_addr constant [54 x i8] c"ERROR!: bless function must be required two argument\0A\00", align 1
@__func__.bless = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@count = global i32 0, align 4
@object_pool = common global %struct._Object** null, align 8
@__func__.get_method_by_name = private unnamed_addr constant [19 x i8] c"get_method_by_name\00", align 1
@__func__.dynamic_blessed_object_cast_code = private unnamed_addr constant [33 x i8] c"dynamic_blessed_object_cast_code\00", align 1
@.str40 = private unnamed_addr constant [23 x i8] c"called expandVariable\0A\00", align 1
@.str41 = private unnamed_addr constant [12 x i8] c"buf = [%s]\0A\00", align 1
@u = common global %union.UnionType zeroinitializer, align 8
@0 = private unnamed_addr constant [2 x i8] c"a\00"
@1 = private unnamed_addr constant [2 x i8] c"b\00"
@global_value = common global %union.UnionType zeroinitializer, align 8
@2 = private unnamed_addr constant [2 x i8] c"a\00"
@3 = private unnamed_addr constant [2 x i8] c"b\00"
@4 = private unnamed_addr constant [2 x i8] c"c\00"
@5 = private unnamed_addr constant [2 x i8] c"a\00"
@global_value1 = common global %union.UnionType zeroinitializer, align 8

; Function Attrs: nounwind ssp uwtable
define i64 @_open(%struct._Array* %args) #0 {
entry:
  %retval.i = alloca %union.UnionType, align 8
  %filename.addr.i = alloca i8*, align 8
  %mode.addr.i = alloca i8*, align 8
  %fp.addr.i = alloca %struct.__sFILE*, align 8
  %ret.i = alloca %union.UnionType, align 8
  %o.i = alloca %struct._IOHandlerObject*, align 8
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %size = alloca i64, align 8
  %_handler = alloca %union.UnionType*, align 8
  %_type = alloca %union.UnionType*, align 8
  %_filename = alloca %union.UnionType*, align 8
  %io_type = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %mode = alloca i8*, align 8
  %fp = alloca %struct.__sFILE*, align 8
  %coerce = alloca %union.UnionType, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64* %size, align 8
  %cmp = icmp eq i64 %2, 3
  br i1 %cmp, label %do.body, label %if.else67

do.body:                                          ; preds = %entry
  %3 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %3, i32 0, i32 1
  %4 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %4 to %union.UnionType**
  %5 = load %union.UnionType** %arrayidx1, align 8
  store %union.UnionType* %5, %union.UnionType** %_handler, align 8
  %6 = load %struct._Array** %args.addr, align 8
  %list2 = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list2, align 8
  %arrayidx3 = getelementptr inbounds %union.UnionType** %7, i64 1
  %8 = load %union.UnionType** %arrayidx3, align 8
  store %union.UnionType* %8, %union.UnionType** %_type, align 8
  %9 = load %struct._Array** %args.addr, align 8
  %list4 = getelementptr inbounds %struct._Array* %9, i32 0, i32 1
  %10 = load %union.UnionType*** %list4, align 8
  %arrayidx5 = getelementptr inbounds %union.UnionType** %10, i64 2
  %11 = load %union.UnionType** %arrayidx5, align 8
  store %union.UnionType* %11, %union.UnionType** %_filename, align 8
  %12 = load %union.UnionType** %_type, align 8
  %o = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o, align 8
  %14 = ptrtoint i8* %13 to i64
  %and = and i64 %14, -4503599627370496
  %cmp6 = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp6 to i32
  %conv7 = sext i32 %conv to i64
  %15 = load %union.UnionType** %_type, align 8
  %o8 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o8, align 8
  %17 = ptrtoint i8* %16 to i64
  %and9 = and i64 %17, 4222124650659840
  %shr = lshr i64 %and9, 48
  %mul = mul i64 %conv7, %shr
  %cmp10 = icmp ne i64 %mul, 2
  br i1 %cmp10, label %if.then12, label %do.body22

if.then12:                                        ; preds = %do.body
  %18 = load %struct.__sFILE** @__stderrp, align 8
  %19 = load %union.UnionType** %_type, align 8
  %o13 = bitcast %union.UnionType* %19 to i8**
  %20 = load i8** %o13, align 8
  %21 = ptrtoint i8* %20 to i64
  %and14 = and i64 %21, -4503599627370496
  %cmp15 = icmp eq i64 %and14, -4503599627370496
  %conv16 = zext i1 %cmp15 to i32
  %conv17 = sext i32 %conv16 to i64
  %22 = load %union.UnionType** %_type, align 8
  %o18 = bitcast %union.UnionType* %22 to i8**
  %23 = load i8** %o18, align 8
  %24 = ptrtoint i8* %23 to i64
  %and19 = and i64 %24, 4222124650659840
  %shr20 = lshr i64 %and19, 48
  %mul21 = mul i64 %conv17, %shr20
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul21)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 15, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.body22:                                        ; preds = %do.body
  %25 = load %union.UnionType** %_filename, align 8
  %o23 = bitcast %union.UnionType* %25 to i8**
  %26 = load i8** %o23, align 8
  %27 = ptrtoint i8* %26 to i64
  %and24 = and i64 %27, -4503599627370496
  %cmp25 = icmp eq i64 %and24, -4503599627370496
  %conv26 = zext i1 %cmp25 to i32
  %conv27 = sext i32 %conv26 to i64
  %28 = load %union.UnionType** %_filename, align 8
  %o28 = bitcast %union.UnionType* %28 to i8**
  %29 = load i8** %o28, align 8
  %30 = ptrtoint i8* %29 to i64
  %and29 = and i64 %30, 4222124650659840
  %shr30 = lshr i64 %and29, 48
  %mul31 = mul i64 %conv27, %shr30
  %cmp32 = icmp ne i64 %mul31, 2
  br i1 %cmp32, label %if.then34, label %do.end46

if.then34:                                        ; preds = %do.body22
  %31 = load %struct.__sFILE** @__stderrp, align 8
  %32 = load %union.UnionType** %_filename, align 8
  %o35 = bitcast %union.UnionType* %32 to i8**
  %33 = load i8** %o35, align 8
  %34 = ptrtoint i8* %33 to i64
  %and36 = and i64 %34, -4503599627370496
  %cmp37 = icmp eq i64 %and36, -4503599627370496
  %conv38 = zext i1 %cmp37 to i32
  %conv39 = sext i32 %conv38 to i64
  %35 = load %union.UnionType** %_filename, align 8
  %o40 = bitcast %union.UnionType* %35 to i8**
  %36 = load i8** %o40, align 8
  %37 = ptrtoint i8* %36 to i64
  %and41 = and i64 %37, 4222124650659840
  %shr42 = lshr i64 %and41, 48
  %mul43 = mul i64 %conv39, %shr42
  %call44 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul43)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end46:                                         ; preds = %do.body22
  %38 = load %union.UnionType** %_type, align 8
  %o47 = bitcast %union.UnionType* %38 to i8**
  %39 = load i8** %o47, align 8
  %40 = ptrtoint i8* %39 to i64
  %xor = xor i64 %40, -3940649673949184
  %41 = inttoptr i64 %xor to %struct._String*
  %s = getelementptr inbounds %struct._String* %41, i32 0, i32 1
  %42 = load i8** %s, align 8
  store i8* %42, i8** %io_type, align 8
  %43 = load %union.UnionType** %_filename, align 8
  %o48 = bitcast %union.UnionType* %43 to i8**
  %44 = load i8** %o48, align 8
  %45 = ptrtoint i8* %44 to i64
  %xor49 = xor i64 %45, -3940649673949184
  %46 = inttoptr i64 %xor49 to %struct._String*
  %s50 = getelementptr inbounds %struct._String* %46, i32 0, i32 1
  %47 = load i8** %s50, align 8
  store i8* %47, i8** %filename, align 8
  store i8* getelementptr inbounds ([1 x i8]* @.str3, i32 0, i32 0), i8** %mode, align 8
  %48 = load i8** %io_type, align 8
  %call51 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i64 1)
  %tobool = icmp ne i32 %call51, 0
  br i1 %tobool, label %if.else, label %if.then52

if.then52:                                        ; preds = %do.end46
  store i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i8** %mode, align 8
  br label %if.end57

if.else:                                          ; preds = %do.end46
  %49 = load i8** %io_type, align 8
  %call53 = call i32 @strncmp(i8* %49, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i64 1)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i8** %mode, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then55, %if.then52
  store %struct.__sFILE* null, %struct.__sFILE** %fp, align 8
  %50 = load i8** %filename, align 8
  %51 = load i8** %mode, align 8
  %call58 = call %struct.__sFILE* @"\01_fopen"(i8* %50, i8* %51)
  store %struct.__sFILE* %call58, %struct.__sFILE** %fp, align 8
  %cmp59 = icmp eq %struct.__sFILE* %call58, null
  br i1 %cmp59, label %if.then61, label %if.end69

if.then61:                                        ; preds = %if.end57
  %52 = load %struct.__sFILE** @__stderrp, align 8
  %call62 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %52, i8* getelementptr inbounds ([26 x i8]* @.str8, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.else67:                                        ; preds = %entry
  %53 = load %struct.__sFILE** @__stderrp, align 8
  %54 = load i64* %size, align 8
  %call68 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %53, i8* getelementptr inbounds ([23 x i8]* @.str9, i32 0, i32 0), i64 %54)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 33, i8* getelementptr inbounds ([34 x i8]* @.str10, i32 0, i32 0)) #7
  unreachable

if.end69:                                         ; preds = %if.end57
  %55 = load %struct._Array** %args.addr, align 8
  %list64 = getelementptr inbounds %struct._Array* %55, i32 0, i32 1
  %56 = load %union.UnionType*** %list64, align 8
  %arrayidx652 = bitcast %union.UnionType** %56 to %union.UnionType**
  %57 = load %union.UnionType** %arrayidx652, align 8
  %58 = load i8** %filename, align 8
  %59 = load i8** %mode, align 8
  %60 = load %struct.__sFILE** %fp, align 8
  %61 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %61) #3
  %62 = bitcast i8** %filename.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %62) #3
  %63 = bitcast i8** %mode.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %63) #3
  %64 = bitcast %struct.__sFILE** %fp.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %64) #3
  %65 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %65) #3
  %66 = bitcast %struct._IOHandlerObject** %o.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %66) #3
  store i8* %58, i8** %filename.addr.i, align 8
  store i8* %59, i8** %mode.addr.i, align 8
  store %struct.__sFILE* %60, %struct.__sFILE** %fp.addr.i, align 8
  %67 = load i32* @count, align 4
  %inc.i.i = add nsw i32 %67, 1
  store i32 %inc.i.i, i32* @count, align 4
  %68 = load i32* @count, align 4
  %idxprom.i.i = sext i32 %68 to i64
  %69 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i.i = getelementptr inbounds %struct._Object** %69, i64 %idxprom.i.i
  %70 = load %struct._Object** %arrayidx.i.i, align 8
  %71 = bitcast %struct._Object* %70 to %struct._IOHandlerObject*
  store %struct._IOHandlerObject* %71, %struct._IOHandlerObject** %o.i, align 8
  %72 = load %struct.__sFILE** %fp.addr.i, align 8
  %73 = load %struct._IOHandlerObject** %o.i, align 8
  %fp1.i = getelementptr inbounds %struct._IOHandlerObject* %73, i32 0, i32 1
  store %struct.__sFILE* %72, %struct.__sFILE** %fp1.i, align 8
  %74 = load i8** %mode.addr.i, align 8
  %75 = load %struct._IOHandlerObject** %o.i, align 8
  %mode2.i = getelementptr inbounds %struct._IOHandlerObject* %75, i32 0, i32 3
  store i8* %74, i8** %mode2.i, align 8
  %76 = load i8** %filename.addr.i, align 8
  %77 = load %struct._IOHandlerObject** %o.i, align 8
  %filename3.i = getelementptr inbounds %struct._IOHandlerObject* %77, i32 0, i32 2
  store i8* %76, i8** %filename3.i, align 8
  %78 = load %struct._IOHandlerObject** %o.i, align 8
  %79 = ptrtoint %struct._IOHandlerObject* %78 to i64
  %or.i = or i64 %79, -4503599627370496
  %or4.i = or i64 %or.i, 2814749767106560
  %80 = inttoptr i64 %or4.i to i8*
  %o5.i = bitcast %union.UnionType* %ret.i to i8**
  store i8* %80, i8** %o5.i, align 8
  %81 = bitcast %union.UnionType* %retval.i to i8*
  %82 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i = bitcast %union.UnionType* %retval.i to double*
  %83 = bitcast double* %coerce.dive1.i to i64*
  %84 = load i64* %83, align 1
  %85 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %85) #3
  %86 = bitcast i8** %filename.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %86) #3
  %87 = bitcast i8** %mode.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %87) #3
  %88 = bitcast %struct.__sFILE** %fp.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %88) #3
  %89 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %89) #3
  %90 = bitcast %struct._IOHandlerObject** %o.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %90) #3
  %coerce.dive3 = bitcast %union.UnionType* %coerce to double*
  %91 = bitcast double* %coerce.dive3 to i64*
  store i64 %84, i64* %91, align 1
  %92 = bitcast %union.UnionType* %57 to i8*
  %93 = bitcast %union.UnionType* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 8, i32 8, i1 false)
  %o70 = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o70, align 8
  %94 = bitcast %union.UnionType* %retval to i8*
  %95 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 8, i32 8, i1 false)
  %coerce.dive714 = bitcast %union.UnionType* %retval to double*
  %96 = bitcast double* %coerce.dive714 to i64*
  %97 = load i64* %96, align 1
  ret i64 %97
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

declare i32 @strncmp(i8*, i8*, i64) #1

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind ssp uwtable
define i64 @new_IOHandler(i8* %filename, i8* %mode, %struct.__sFILE* %fp) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fp.addr = alloca %struct.__sFILE*, align 8
  %ret = alloca %union.UnionType, align 8
  %o = alloca %struct._IOHandlerObject*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %0 = load i32* @count, align 4
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, i32* @count, align 4
  %1 = load i32* @count, align 4
  %idxprom.i = sext i32 %1 to i64
  %2 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %2, i64 %idxprom.i
  %3 = load %struct._Object** %arrayidx.i, align 8
  %4 = bitcast %struct._Object* %3 to %struct._IOHandlerObject*
  store %struct._IOHandlerObject* %4, %struct._IOHandlerObject** %o, align 8
  %5 = load %struct.__sFILE** %fp.addr, align 8
  %6 = load %struct._IOHandlerObject** %o, align 8
  %fp1 = getelementptr inbounds %struct._IOHandlerObject* %6, i32 0, i32 1
  store %struct.__sFILE* %5, %struct.__sFILE** %fp1, align 8
  %7 = load i8** %mode.addr, align 8
  %8 = load %struct._IOHandlerObject** %o, align 8
  %mode2 = getelementptr inbounds %struct._IOHandlerObject* %8, i32 0, i32 3
  store i8* %7, i8** %mode2, align 8
  %9 = load i8** %filename.addr, align 8
  %10 = load %struct._IOHandlerObject** %o, align 8
  %filename3 = getelementptr inbounds %struct._IOHandlerObject* %10, i32 0, i32 2
  store i8* %9, i8** %filename3, align 8
  %11 = load %struct._IOHandlerObject** %o, align 8
  %12 = ptrtoint %struct._IOHandlerObject* %11 to i64
  %or = or i64 %12, -4503599627370496
  %or4 = or i64 %or, 2814749767106560
  %13 = inttoptr i64 %or4 to i8*
  %o5 = bitcast %union.UnionType* %ret to i8**
  store i8* %13, i8** %o5, align 8
  %14 = bitcast %union.UnionType* %retval to i8*
  %15 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %16 = bitcast double* %coerce.dive1 to i64*
  %17 = load i64* %16, align 1
  ret i64 %17
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind ssp uwtable
define i64 @_binmode(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %arg = alloca %union.UnionType, align 8
  %handler = alloca %struct._IOHandlerObject*, align 8
  %mode = alloca i8*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  %3 = bitcast %union.UnionType* %arg to i8*
  %4 = bitcast %union.UnionType* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %o = bitcast %union.UnionType* %arg to i8**
  %5 = load i8** %o, align 8
  %6 = ptrtoint i8* %5 to i64
  %and = and i64 %6, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %o2 = bitcast %union.UnionType* %arg to i8**
  %7 = load i8** %o2, align 8
  %8 = ptrtoint i8* %7 to i64
  %and3 = and i64 %8, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  %cmp4 = icmp eq i64 %mul, 7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %o6 = bitcast %union.UnionType* %arg to i8**
  %9 = load i8** %o6, align 8
  %10 = ptrtoint i8* %9 to i64
  %xor = xor i64 %10, -2533274790395904
  %11 = inttoptr i64 %xor to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %11, i32 0, i32 1
  %12 = bitcast %union.UnionType* %arg to i8*
  %13 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  br label %do.body

cond.false:                                       ; preds = %entry
  %14 = bitcast %union.UnionType* %arg to i8*
  %15 = bitcast %union.UnionType* %arg to i8*
  br label %do.body

do.body:                                          ; preds = %cond.true, %cond.false
  %o7 = bitcast %union.UnionType* %arg to i8**
  %16 = load i8** %o7, align 8
  %17 = ptrtoint i8* %16 to i64
  %and8 = and i64 %17, -4503599627370496
  %cmp9 = icmp eq i64 %and8, -4503599627370496
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %o12 = bitcast %union.UnionType* %arg to i8**
  %18 = load i8** %o12, align 8
  %19 = ptrtoint i8* %18 to i64
  %and13 = and i64 %19, 4222124650659840
  %shr14 = lshr i64 %and13, 48
  %mul15 = mul i64 %conv11, %shr14
  %cmp16 = icmp ne i64 %mul15, 10
  br i1 %cmp16, label %if.then, label %do.end

if.then:                                          ; preds = %do.body
  %20 = load %struct.__sFILE** @__stderrp, align 8
  %o18 = bitcast %union.UnionType* %arg to i8**
  %21 = load i8** %o18, align 8
  %22 = ptrtoint i8* %21 to i64
  %and19 = and i64 %22, -4503599627370496
  %cmp20 = icmp eq i64 %and19, -4503599627370496
  %conv21 = zext i1 %cmp20 to i32
  %conv22 = sext i32 %conv21 to i64
  %o23 = bitcast %union.UnionType* %arg to i8**
  %23 = load i8** %o23, align 8
  %24 = ptrtoint i8* %23 to i64
  %and24 = and i64 %24, 4222124650659840
  %shr25 = lshr i64 %and24, 48
  %mul26 = mul i64 %conv22, %shr25
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul26)
  call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8]* @__func__._binmode, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 44, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end:                                           ; preds = %do.body
  %o27 = bitcast %union.UnionType* %arg to i8**
  %25 = load i8** %o27, align 8
  %26 = ptrtoint i8* %25 to i64
  %xor28 = xor i64 %26, -1688849860263936
  %27 = inttoptr i64 %xor28 to %struct._IOHandlerObject*
  store %struct._IOHandlerObject* %27, %struct._IOHandlerObject** %handler, align 8
  store i8* null, i8** %mode, align 8
  %28 = load %struct._IOHandlerObject** %handler, align 8
  %mode29 = getelementptr inbounds %struct._IOHandlerObject* %28, i32 0, i32 3
  %29 = load i8** %mode29, align 8
  %call30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i64 2)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.else, label %if.then31

if.then31:                                        ; preds = %do.end
  store i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i8** %mode, align 8
  br label %if.end37

if.else:                                          ; preds = %do.end
  %30 = load %struct._IOHandlerObject** %handler, align 8
  %mode32 = getelementptr inbounds %struct._IOHandlerObject* %30, i32 0, i32 3
  %31 = load i8** %mode32, align 8
  %call33 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i64 2)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0), i8** %mode, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then35, %if.then31
  %32 = load %struct._IOHandlerObject** %handler, align 8
  %filename = getelementptr inbounds %struct._IOHandlerObject* %32, i32 0, i32 2
  %33 = load i8** %filename, align 8
  %34 = load i8** %mode, align 8
  %35 = load %struct._IOHandlerObject** %handler, align 8
  %fp = getelementptr inbounds %struct._IOHandlerObject* %35, i32 0, i32 1
  %36 = load %struct.__sFILE** %fp, align 8
  %call38 = call %struct.__sFILE* @"\01_freopen"(i8* %33, i8* %34, %struct.__sFILE* %36)
  %37 = load %struct._IOHandlerObject** %handler, align 8
  %fp39 = getelementptr inbounds %struct._IOHandlerObject* %37, i32 0, i32 1
  store %struct.__sFILE* %call38, %struct.__sFILE** %fp39, align 8
  %38 = load %struct._IOHandlerObject** %handler, align 8
  %fp40 = getelementptr inbounds %struct._IOHandlerObject* %38, i32 0, i32 1
  %39 = load %struct.__sFILE** %fp40, align 8
  %tobool41 = icmp ne %struct.__sFILE* %39, null
  br i1 %tobool41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %if.end37
  %40 = load %struct.__sFILE** @__stderrp, align 8
  %41 = load %struct._IOHandlerObject** %handler, align 8
  %filename43 = getelementptr inbounds %struct._IOHandlerObject* %41, i32 0, i32 2
  %42 = load i8** %filename43, align 8
  %call44 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %40, i8* getelementptr inbounds ([30 x i8]* @.str13, i32 0, i32 0), i8* %42)
  call void @exit(i32 1) #7
  unreachable

if.end45:                                         ; preds = %if.end37
  %o46 = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o46, align 8
  %43 = bitcast %union.UnionType* %retval to i8*
  %44 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %45 = bitcast double* %coerce.dive2 to i64*
  %46 = load i64* %45, align 1
  ret i64 %46
}

declare %struct.__sFILE* @"\01_freopen"(i8*, i8*, %struct.__sFILE*) #1

; Function Attrs: nounwind ssp uwtable
define i64 @_chr(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %arg = alloca %union.UnionType, align 8
  %ch = alloca i32, align 4
  %buf = alloca [8 x i8], align 1
  %ret = alloca %union.UnionType, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  %3 = bitcast %union.UnionType* %arg to i8*
  %4 = bitcast %union.UnionType* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %o = bitcast %union.UnionType* %arg to i8**
  %5 = load i8** %o, align 8
  %6 = ptrtoint i8* %5 to i64
  %and = and i64 %6, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %o2 = bitcast %union.UnionType* %arg to i8**
  %7 = load i8** %o2, align 8
  %8 = ptrtoint i8* %7 to i64
  %and3 = and i64 %8, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  %cmp4 = icmp eq i64 %mul, 7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %o6 = bitcast %union.UnionType* %arg to i8**
  %9 = load i8** %o6, align 8
  %10 = ptrtoint i8* %9 to i64
  %xor = xor i64 %10, -2533274790395904
  %11 = inttoptr i64 %xor to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %11, i32 0, i32 1
  %12 = bitcast %union.UnionType* %arg to i8*
  %13 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  br label %do.body

cond.false:                                       ; preds = %entry
  %14 = bitcast %union.UnionType* %arg to i8*
  %15 = bitcast %union.UnionType* %arg to i8*
  br label %do.body

do.body:                                          ; preds = %cond.true, %cond.false
  %o7 = bitcast %union.UnionType* %arg to i8**
  %16 = load i8** %o7, align 8
  %17 = ptrtoint i8* %16 to i64
  %and8 = and i64 %17, -4503599627370496
  %cmp9 = icmp eq i64 %and8, -4503599627370496
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %o12 = bitcast %union.UnionType* %arg to i8**
  %18 = load i8** %o12, align 8
  %19 = ptrtoint i8* %18 to i64
  %and13 = and i64 %19, 4222124650659840
  %shr14 = lshr i64 %and13, 48
  %mul15 = mul i64 %conv11, %shr14
  %cmp16 = icmp ne i64 %mul15, 1
  br i1 %cmp16, label %if.then, label %do.end

if.then:                                          ; preds = %do.body
  %20 = load %struct.__sFILE** @__stderrp, align 8
  %o18 = bitcast %union.UnionType* %arg to i8**
  %21 = load i8** %o18, align 8
  %22 = ptrtoint i8* %21 to i64
  %and19 = and i64 %22, -4503599627370496
  %cmp20 = icmp eq i64 %and19, -4503599627370496
  %conv21 = zext i1 %cmp20 to i32
  %conv22 = sext i32 %conv21 to i64
  %o23 = bitcast %union.UnionType* %arg to i8**
  %23 = load i8** %o23, align 8
  %24 = ptrtoint i8* %23 to i64
  %and24 = and i64 %24, 4222124650659840
  %shr25 = lshr i64 %and24, 48
  %mul26 = mul i64 %conv22, %shr25
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul26)
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._chr, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 65, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end:                                           ; preds = %do.body
  %o27 = bitcast %union.UnionType* %arg to i8**
  %25 = load i8** %o27, align 8
  %26 = ptrtoint i8* %25 to i64
  %conv28 = trunc i64 %26 to i32
  store i32 %conv28, i32* %ch, align 4
  %27 = bitcast [8 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 8, i32 1, i1 false)
  %arraydecay2 = bitcast [8 x i8]* %buf to i8*
  %28 = load i32* %ch, align 4
  %call29 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %arraydecay2, i32 0, i64 8, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), i32 %28)
  %arraydecay303 = bitcast [8 x i8]* %buf to i8*
  %call31 = call i64 @new_String(i8* %arraydecay303)
  %coerce.dive4 = bitcast %union.UnionType* %ret to double*
  %29 = bitcast double* %coerce.dive4 to i64*
  store i64 %call31, i64* %29, align 1
  %30 = bitcast %union.UnionType* %retval to i8*
  %31 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %coerce.dive325 = bitcast %union.UnionType* %retval to double*
  %32 = bitcast double* %coerce.dive325 to i64*
  %33 = load i64* %32, align 1
  ret i64 %33
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define i64 @new_String(i8* %str) #0 {
cond.end:
  %_str.addr.i = alloca i8*, align 8
  %len.addr.i = alloca i64, align 8
  %str.i = alloca i8*, align 8
  %hash.i = alloca i64, align 8
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %retval = alloca %union.UnionType, align 8
  %str.addr = alloca i8*, align 8
  %ret = alloca %union.UnionType, align 8
  %o = alloca %struct._String*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call i8* @calloc(i64 32, i64 1)
  %0 = bitcast i8* %call to %struct._String*
  store %struct._String* %0, %struct._String** %o, align 8
  %1 = load %struct._String** %o, align 8
  %header1 = bitcast %struct._String* %1 to i32*
  store i32 2, i32* %header1, align 4
  %2 = load i8** %str.addr, align 8
  %call1 = call i64 @strlen(i8* %2)
  %add = add i64 %call1, 1
  %3 = load %struct._String** %o, align 8
  %len = getelementptr inbounds %struct._String* %3, i32 0, i32 2
  store i64 %add, i64* %len, align 8
  %4 = load %struct._String** %o, align 8
  %len2 = getelementptr inbounds %struct._String* %4, i32 0, i32 2
  %5 = load i64* %len2, align 8
  %call3 = call i8* @malloc(i64 %5)
  %6 = load %struct._String** %o, align 8
  %s = getelementptr inbounds %struct._String* %6, i32 0, i32 1
  store i8* %call3, i8** %s, align 8
  %7 = load %struct._String** %o, align 8
  %s4 = getelementptr inbounds %struct._String* %7, i32 0, i32 1
  %8 = load i8** %s4, align 8
  %9 = load %struct._String** %o, align 8
  %s9 = getelementptr inbounds %struct._String* %9, i32 0, i32 1
  %10 = load i8** %s9, align 8
  %11 = load i8** %str.addr, align 8
  %12 = load %struct._String** %o, align 8
  %len10 = getelementptr inbounds %struct._String* %12, i32 0, i32 2
  %13 = load i64* %len10, align 8
  %14 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %14) #3
  %15 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %15) #3
  %16 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %16) #3
  store i8* %10, i8** %__dest.addr.i, align 8
  store i8* %11, i8** %__src.addr.i, align 8
  store i64 %13, i64* %__len.addr.i, align 8
  %17 = load i8** %__dest.addr.i, align 8
  %18 = load i8** %__src.addr.i, align 8
  %19 = load i64* %__len.addr.i, align 8
  %20 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %17, i8* %18, i64 %19, i64 -1) #3
  %21 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %21) #3
  %22 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %22) #3
  %23 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %23) #3
  %24 = load i8** %str.addr, align 8
  %25 = load %struct._String** %o, align 8
  %len12 = getelementptr inbounds %struct._String* %25, i32 0, i32 2
  %26 = load i64* %len12, align 8
  %27 = bitcast i8** %_str.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %27)
  %28 = bitcast i64* %len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %28)
  %29 = bitcast i8** %str.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %29)
  %30 = bitcast i64* %hash.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %30)
  store i8* %24, i8** %_str.addr.i, align 8
  store i64 %26, i64* %len.addr.i, align 8
  %31 = load i8** %_str.addr.i, align 8
  store i8* %31, i8** %str.i, align 8
  store i64 5381, i64* %hash.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %cond.end
  %32 = load i64* %len.addr.i, align 8
  %dec.i = add i64 %32, -1
  store i64 %dec.i, i64* %len.addr.i, align 8
  %tobool.i = icmp ne i64 %32, 0
  br i1 %tobool.i, label %while.body.i, label %make_hash.exit

while.body.i:                                     ; preds = %while.cond.i
  %33 = load i64* %hash.i, align 8
  %shl.i = shl i64 %33, 5
  %34 = load i64* %hash.i, align 8
  %add.i = add i64 %shl.i, %34
  %35 = load i8** %str.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8* %35, i32 1
  store i8* %incdec.ptr.i, i8** %str.i, align 8
  %36 = load i8* %35, align 1
  %conv.i = sext i8 %36 to i64
  %add1.i = add i64 %add.i, %conv.i
  store i64 %add1.i, i64* %hash.i, align 8
  br label %while.cond.i

make_hash.exit:                                   ; preds = %while.cond.i
  %37 = load i64* %hash.i, align 8
  %38 = bitcast i8** %_str.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %38)
  %39 = bitcast i64* %len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %39)
  %40 = bitcast i8** %str.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %40)
  %41 = bitcast i64* %hash.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %41)
  %rem = urem i64 %37, 512
  %42 = load %struct._String** %o, align 8
  %hash = getelementptr inbounds %struct._String* %42, i32 0, i32 3
  store i64 %rem, i64* %hash, align 8
  %43 = load %struct._String** %o, align 8
  %44 = ptrtoint %struct._String* %43 to i64
  %or = or i64 %44, -4503599627370496
  %or14 = or i64 %or, 562949953421312
  %45 = inttoptr i64 %or14 to i8*
  %o15 = bitcast %union.UnionType* %ret to i8**
  store i8* %45, i8** %o15, align 8
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %48 = bitcast double* %coerce.dive2 to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @_close(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %arg = alloca %union.UnionType, align 8
  %handler = alloca %struct._IOHandlerObject*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  %3 = bitcast %union.UnionType* %arg to i8*
  %4 = bitcast %union.UnionType* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %o = bitcast %union.UnionType* %arg to i8**
  %5 = load i8** %o, align 8
  %6 = ptrtoint i8* %5 to i64
  %and = and i64 %6, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %o2 = bitcast %union.UnionType* %arg to i8**
  %7 = load i8** %o2, align 8
  %8 = ptrtoint i8* %7 to i64
  %and3 = and i64 %8, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  %cmp4 = icmp eq i64 %mul, 7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %o6 = bitcast %union.UnionType* %arg to i8**
  %9 = load i8** %o6, align 8
  %10 = ptrtoint i8* %9 to i64
  %xor = xor i64 %10, -2533274790395904
  %11 = inttoptr i64 %xor to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %11, i32 0, i32 1
  %12 = bitcast %union.UnionType* %arg to i8*
  %13 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  br label %do.body

cond.false:                                       ; preds = %entry
  %14 = bitcast %union.UnionType* %arg to i8*
  %15 = bitcast %union.UnionType* %arg to i8*
  br label %do.body

do.body:                                          ; preds = %cond.true, %cond.false
  %o7 = bitcast %union.UnionType* %arg to i8**
  %16 = load i8** %o7, align 8
  %17 = ptrtoint i8* %16 to i64
  %and8 = and i64 %17, -4503599627370496
  %cmp9 = icmp eq i64 %and8, -4503599627370496
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %o12 = bitcast %union.UnionType* %arg to i8**
  %18 = load i8** %o12, align 8
  %19 = ptrtoint i8* %18 to i64
  %and13 = and i64 %19, 4222124650659840
  %shr14 = lshr i64 %and13, 48
  %mul15 = mul i64 %conv11, %shr14
  %cmp16 = icmp ne i64 %mul15, 10
  br i1 %cmp16, label %if.then, label %do.end

if.then:                                          ; preds = %do.body
  %20 = load %struct.__sFILE** @__stderrp, align 8
  %o18 = bitcast %union.UnionType* %arg to i8**
  %21 = load i8** %o18, align 8
  %22 = ptrtoint i8* %21 to i64
  %and19 = and i64 %22, -4503599627370496
  %cmp20 = icmp eq i64 %and19, -4503599627370496
  %conv21 = zext i1 %cmp20 to i32
  %conv22 = sext i32 %conv21 to i64
  %o23 = bitcast %union.UnionType* %arg to i8**
  %23 = load i8** %o23, align 8
  %24 = ptrtoint i8* %23 to i64
  %and24 = and i64 %24, 4222124650659840
  %shr25 = lshr i64 %and24, 48
  %mul26 = mul i64 %conv22, %shr25
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul26)
  call void @__assert_rtn(i8* getelementptr inbounds ([7 x i8]* @__func__._close, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 78, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end:                                           ; preds = %do.body
  %o27 = bitcast %union.UnionType* %arg to i8**
  %25 = load i8** %o27, align 8
  %26 = ptrtoint i8* %25 to i64
  %xor28 = xor i64 %26, -1688849860263936
  %27 = inttoptr i64 %xor28 to %struct._IOHandlerObject*
  store %struct._IOHandlerObject* %27, %struct._IOHandlerObject** %handler, align 8
  %28 = load %struct._IOHandlerObject** %handler, align 8
  %fp = getelementptr inbounds %struct._IOHandlerObject* %28, i32 0, i32 1
  %29 = load %struct.__sFILE** %fp, align 8
  %call29 = call i32 @fclose(%struct.__sFILE* %29)
  %conv30 = zext i32 %call29 to i64
  %or = or i64 %conv30, -4503599627370496
  %or31 = or i64 %or, 281474976710656
  %30 = inttoptr i64 %or31 to i8*
  %o32 = bitcast %union.UnionType* %ret to i8**
  store i8* %30, i8** %o32, align 8
  %31 = bitcast %union.UnionType* %retval to i8*
  %32 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %33 = bitcast double* %coerce.dive2 to i64*
  %34 = load i64* %33, align 1
  ret i64 %34
}

declare i32 @fclose(%struct.__sFILE*) #1

; Function Attrs: nounwind ssp uwtable
define i64 @_sqrt(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %arg = alloca %union.UnionType, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  %3 = bitcast %union.UnionType* %arg to i8*
  %4 = bitcast %union.UnionType* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %o = bitcast %union.UnionType* %arg to i8**
  %5 = load i8** %o, align 8
  %6 = ptrtoint i8* %5 to i64
  %and = and i64 %6, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %o2 = bitcast %union.UnionType* %arg to i8**
  %7 = load i8** %o2, align 8
  %8 = ptrtoint i8* %7 to i64
  %and3 = and i64 %8, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  %cmp4 = icmp eq i64 %mul, 7
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %o6 = bitcast %union.UnionType* %arg to i8**
  %9 = load i8** %o6, align 8
  %10 = ptrtoint i8* %9 to i64
  %xor = xor i64 %10, -2533274790395904
  %11 = inttoptr i64 %xor to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %11, i32 0, i32 1
  %12 = bitcast %union.UnionType* %arg to i8*
  %13 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = bitcast %union.UnionType* %arg to i8*
  %15 = bitcast %union.UnionType* %arg to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %d = bitcast %union.UnionType* %arg to double*
  %16 = load double* %d, align 8
  %call = call double @sqrt(double %16) #5
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %call, double* %d7, align 8
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive2 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind readnone
declare double @sqrt(double) #4

; Function Attrs: nounwind ssp uwtable
define i64 @_abs(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %arg = alloca %union.UnionType*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  store %union.UnionType* %2, %union.UnionType** %arg, align 8
  %3 = load %union.UnionType** %arg, align 8
  %o = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o, align 8
  %5 = ptrtoint i8* %4 to i64
  %and = and i64 %5, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %6 = load %union.UnionType** %arg, align 8
  %o2 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o2, align 8
  %8 = ptrtoint i8* %7 to i64
  %and3 = and i64 %8, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %union.UnionType** %arg, align 8
  %o4 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o4, align 8
  %11 = ptrtoint i8* %10 to i64
  %conv5 = trunc i64 %11 to i32
  %call = call i32 @abs(i32 %conv5) #5
  %conv6 = zext i32 %call to i64
  %or = or i64 %conv6, -4503599627370496
  %or7 = or i64 %or, 281474976710656
  %12 = inttoptr i64 %or7 to i8*
  %o8 = bitcast %union.UnionType* %ret to i8**
  store i8* %12, i8** %o8, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %13 = load %union.UnionType** %arg, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %call10 = call double @fabs(double %14) #5
  %d11 = bitcast %union.UnionType* %ret to double*
  store double %call10, double* %d11, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._abs, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 105, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive2 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind ssp uwtable
define i64 @_int(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %arg = alloca %union.UnionType*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  store %union.UnionType* %2, %union.UnionType** %arg, align 8
  %3 = load %union.UnionType** %arg, align 8
  %o = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o, align 8
  %5 = ptrtoint i8* %4 to i64
  %and = and i64 %5, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %6 = load %union.UnionType** %arg, align 8
  %o2 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o2, align 8
  %8 = ptrtoint i8* %7 to i64
  %and3 = and i64 %8, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %union.UnionType** %arg, align 8
  %o4 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o4, align 8
  %o5 = bitcast %union.UnionType* %ret to i8**
  store i8* %10, i8** %o5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %11 = load %union.UnionType** %arg, align 8
  %d = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d, align 8
  %conv7 = fptosi double %12 to i32
  %conv8 = zext i32 %conv7 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %13 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %13, i8** %o10, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._int, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 123, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %14 = bitcast %union.UnionType* %retval to i8*
  %15 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %16 = bitcast double* %coerce.dive2 to i64*
  %17 = load i64* %16, align 1
  ret i64 %17
}

; Function Attrs: nounwind ssp uwtable
define i64 @_rand(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %random = alloca double, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %call = call i32 @rand()
  %conv = sitofp i32 %call to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  store double %div, double* %random, align 8
  %0 = load double* %random, align 8
  %d = bitcast %union.UnionType* %ret to double*
  store double %0, double* %d, align 8
  %1 = bitcast %union.UnionType* %retval to i8*
  %2 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %3 = bitcast double* %coerce.dive1 to i64*
  %4 = load i64* %3, align 1
  ret i64 %4
}

declare i32 @rand() #1

; Function Attrs: nounwind ssp uwtable
define i64 @_sin(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %arg = alloca %union.UnionType*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  store %union.UnionType* %2, %union.UnionType** %arg, align 8
  %3 = load %union.UnionType** %arg, align 8
  %o = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o, align 8
  %5 = ptrtoint i8* %4 to i64
  %and = and i64 %5, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %6 = load %union.UnionType** %arg, align 8
  %o2 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o2, align 8
  %8 = ptrtoint i8* %7 to i64
  %and3 = and i64 %8, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %union.UnionType** %arg, align 8
  %o4 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o4, align 8
  %11 = ptrtoint i8* %10 to i64
  %conv5 = sitofp i64 %11 to double
  %call = call double @sin(double %conv5) #5
  %d = bitcast %union.UnionType* %ret to double*
  store double %call, double* %d, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %12 = load %union.UnionType** %arg, align 8
  %d7 = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d7, align 8
  %call8 = call double @sin(double %13) #5
  %d9 = bitcast %union.UnionType* %ret to double*
  store double %call8, double* %d9, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._sin, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 149, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %14 = bitcast %union.UnionType* %retval to i8*
  %15 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %16 = bitcast double* %coerce.dive2 to i64*
  %17 = load i64* %16, align 1
  ret i64 %17
}

; Function Attrs: nounwind readnone
declare double @sin(double) #4

; Function Attrs: nounwind ssp uwtable
define i64 @_cos(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %arg = alloca %union.UnionType*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  store %union.UnionType* %2, %union.UnionType** %arg, align 8
  %3 = load %union.UnionType** %arg, align 8
  %o = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o, align 8
  %5 = ptrtoint i8* %4 to i64
  %and = and i64 %5, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %6 = load %union.UnionType** %arg, align 8
  %o2 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o2, align 8
  %8 = ptrtoint i8* %7 to i64
  %and3 = and i64 %8, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %union.UnionType** %arg, align 8
  %o4 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o4, align 8
  %11 = ptrtoint i8* %10 to i64
  %conv5 = sitofp i64 %11 to double
  %call = call double @cos(double %conv5) #5
  %d = bitcast %union.UnionType* %ret to double*
  store double %call, double* %d, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %12 = load %union.UnionType** %arg, align 8
  %d7 = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d7, align 8
  %call8 = call double @cos(double %13) #5
  %d9 = bitcast %union.UnionType* %ret to double*
  store double %call8, double* %d9, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._cos, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %14 = bitcast %union.UnionType* %retval to i8*
  %15 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %16 = bitcast double* %coerce.dive2 to i64*
  %17 = load i64* %16, align 1
  ret i64 %17
}

; Function Attrs: nounwind readnone
declare double @cos(double) #4

; Function Attrs: nounwind ssp uwtable
define i64 @_atan2(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %arg1 = alloca %union.UnionType*, align 8
  %arg2 = alloca %union.UnionType*, align 8
  %d1 = alloca double, align 8
  %d2 = alloca double, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %1 to %union.UnionType**
  %2 = load %union.UnionType** %arrayidx1, align 8
  store %union.UnionType* %2, %union.UnionType** %arg1, align 8
  %3 = load %struct._Array** %args.addr, align 8
  %list1 = getelementptr inbounds %struct._Array* %3, i32 0, i32 1
  %4 = load %union.UnionType*** %list1, align 8
  %arrayidx2 = getelementptr inbounds %union.UnionType** %4, i64 1
  %5 = load %union.UnionType** %arrayidx2, align 8
  store %union.UnionType* %5, %union.UnionType** %arg2, align 8
  %6 = load %union.UnionType** %arg1, align 8
  %o = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o, align 8
  %8 = ptrtoint i8* %7 to i64
  %and = and i64 %8, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv3 = sext i32 %conv to i64
  %9 = load %union.UnionType** %arg1, align 8
  %o4 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o4, align 8
  %11 = ptrtoint i8* %10 to i64
  %and5 = and i64 %11, 4222124650659840
  %shr = lshr i64 %and5, 48
  %mul = mul i64 %conv3, %shr
  %cmp6 = icmp eq i64 %mul, 1
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load %union.UnionType** %arg1, align 8
  %o8 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o8, align 8
  %14 = ptrtoint i8* %13 to i64
  %conv9 = sitofp i64 %14 to double
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load %union.UnionType** %arg1, align 8
  %d = bitcast %union.UnionType* %15 to double*
  %16 = load double* %d, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv9, %cond.true ], [ %16, %cond.false ]
  store double %cond, double* %d1, align 8
  %17 = load %union.UnionType** %arg2, align 8
  %o10 = bitcast %union.UnionType* %17 to i8**
  %18 = load i8** %o10, align 8
  %19 = ptrtoint i8* %18 to i64
  %and11 = and i64 %19, -4503599627370496
  %cmp12 = icmp eq i64 %and11, -4503599627370496
  %conv13 = zext i1 %cmp12 to i32
  %conv14 = sext i32 %conv13 to i64
  %20 = load %union.UnionType** %arg2, align 8
  %o15 = bitcast %union.UnionType* %20 to i8**
  %21 = load i8** %o15, align 8
  %22 = ptrtoint i8* %21 to i64
  %and16 = and i64 %22, 4222124650659840
  %shr17 = lshr i64 %and16, 48
  %mul18 = mul i64 %conv14, %shr17
  %cmp19 = icmp eq i64 %mul18, 1
  br i1 %cmp19, label %cond.true21, label %cond.false24

cond.true21:                                      ; preds = %cond.end
  %23 = load %union.UnionType** %arg2, align 8
  %o22 = bitcast %union.UnionType* %23 to i8**
  %24 = load i8** %o22, align 8
  %25 = ptrtoint i8* %24 to i64
  %conv23 = sitofp i64 %25 to double
  br label %cond.end26

cond.false24:                                     ; preds = %cond.end
  %26 = load %union.UnionType** %arg2, align 8
  %d25 = bitcast %union.UnionType* %26 to double*
  %27 = load double* %d25, align 8
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false24, %cond.true21
  %cond27 = phi double [ %conv23, %cond.true21 ], [ %27, %cond.false24 ]
  store double %cond27, double* %d2, align 8
  %28 = load double* %d1, align 8
  %29 = load double* %d2, align 8
  %call = call double @atan2(double %28, double %29) #5
  %d28 = bitcast %union.UnionType* %ret to double*
  store double %call, double* %d28, align 8
  %30 = bitcast %union.UnionType* %retval to i8*
  %31 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %32 = bitcast double* %coerce.dive2 to i64*
  %33 = load i64* %32, align 1
  ret i64 %33
}

; Function Attrs: nounwind readnone
declare double @atan2(double, double) #4

; Function Attrs: nounwind ssp uwtable
define void @new_Undef() #0 {
entry:
  %o = alloca %struct._Undef*, align 8
  %call = call i8* @calloc(i64 4, i64 1)
  %0 = bitcast i8* %call to %struct._Undef*
  store %struct._Undef* %0, %struct._Undef** %o, align 8
  %1 = load %struct._Undef** %o, align 8
  %2 = ptrtoint %struct._Undef* %1 to i64
  %or = or i64 %2, -4503599627370496
  %or1 = or i64 %or, 3096224743817216
  %3 = inttoptr i64 %or1 to i8*
  store i8* %3, i8** bitcast (%union.UnionType* @undef to i8**), align 8
  ret void
}

declare i8* @calloc(i64, i64) #1

; Function Attrs: nounwind ssp uwtable
define i64 @get_undef_value() #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %0 = bitcast %union.UnionType* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%union.UnionType* @undef to i8*), i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %1 = bitcast double* %coerce.dive1 to i64*
  %2 = load i64* %1, align 1
  ret i64 %2
}

; Function Attrs: nounwind ssp uwtable
define void @print_space(i64 %indent) #0 {
entry:
  %indent.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %indent, i64* %indent.addr, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64* %i, align 8
  %1 = load i64* %indent.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__sFILE** @__stdoutp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64* %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @print_message(i8* %s, i64 %indent) #0 {
entry:
  %indent.addr.i = alloca i64, align 8
  %i.i = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %indent.addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %indent, i64* %indent.addr, align 8
  %0 = load i64* %indent.addr, align 8
  %1 = bitcast i64* %indent.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %1) #3
  %2 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %2) #3
  store i64 %0, i64* %indent.addr.i, align 8
  store i64 0, i64* %i.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %3 = load i64* %i.i, align 8
  %4 = load i64* %indent.addr.i, align 8
  %cmp.i = icmp ult i64 %3, %4
  br i1 %cmp.i, label %for.body.i, label %print_space.exit

for.body.i:                                       ; preds = %for.cond.i
  %5 = load %struct.__sFILE** @__stdoutp, align 8
  %call.i = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0)) #3
  %6 = load i64* %i.i, align 8
  %inc.i = add i64 %6, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i

print_space.exit:                                 ; preds = %for.cond.i
  %7 = bitcast i64* %indent.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %7) #3
  %8 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %8) #3
  %9 = load %struct.__sFILE** @__stdoutp, align 8
  %10 = load i8** %s.addr, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %10)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @dump_hash_ref(%struct._HashRef* %ref, i64 %indent) #0 {
entry:
  %indent.addr.i2 = alloca i64, align 8
  %i.i = alloca i64, align 8
  %indent.addr.i.i = alloca i64, align 8
  %i.i.i = alloca i64, align 8
  %s.addr.i = alloca i8*, align 8
  %indent.addr.i = alloca i64, align 8
  %ref.addr = alloca %struct._HashRef*, align 8
  %indent.addr = alloca i64, align 8
  %hash = alloca %struct._Hash*, align 8
  %key_n = alloca i64, align 8
  %i = alloca i64, align 8
  %_key = alloca %struct._String*, align 8
  %key = alloca i8*, align 8
  %value = alloca %union.UnionType, align 8
  store %struct._HashRef* %ref, %struct._HashRef** %ref.addr, align 8
  store i64 %indent, i64* %indent.addr, align 8
  %0 = load %struct._HashRef** %ref.addr, align 8
  %v = getelementptr inbounds %struct._HashRef* %0, i32 0, i32 1
  %o = bitcast %union.UnionType* %v to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %xor = xor i64 %2, -3096224743817216
  %3 = inttoptr i64 %xor to %struct._Hash*
  store %struct._Hash* %3, %struct._Hash** %hash, align 8
  %4 = load %struct._Hash** %hash, align 8
  %size = getelementptr inbounds %struct._Hash* %4, i32 0, i32 3
  %5 = load i64* %size, align 8
  store i64 %5, i64* %key_n, align 8
  store i64 0, i64* %i, align 8
  %6 = load %struct.__sFILE** @__stdoutp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64* %i, align 8
  %8 = load i64* %key_n, align 8
  %cmp = icmp ult i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64* %i, align 8
  %10 = load %struct._Hash** %hash, align 8
  %keys = getelementptr inbounds %struct._Hash* %10, i32 0, i32 2
  %11 = load %struct._String*** %keys, align 8
  %arrayidx = getelementptr inbounds %struct._String** %11, i64 %9
  %12 = load %struct._String** %arrayidx, align 8
  store %struct._String* %12, %struct._String** %_key, align 8
  %13 = load %struct._String** %_key, align 8
  %s = getelementptr inbounds %struct._String* %13, i32 0, i32 1
  %14 = load i8** %s, align 8
  store i8* %14, i8** %key, align 8
  %15 = load %struct._String** %_key, align 8
  %hash1 = getelementptr inbounds %struct._String* %15, i32 0, i32 3
  %16 = load i64* %hash1, align 8
  %17 = load %struct._Hash** %hash, align 8
  %table = getelementptr inbounds %struct._Hash* %17, i32 0, i32 1
  %18 = load %union.UnionType** %table, align 8
  %arrayidx2 = getelementptr inbounds %union.UnionType* %18, i64 %16
  %19 = bitcast %union.UnionType* %value to i8*
  %20 = bitcast %union.UnionType* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = load i64* %indent.addr, align 8
  %22 = bitcast i64* %indent.addr.i2 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %22) #3
  %23 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %23) #3
  store i64 %21, i64* %indent.addr.i2, align 8
  store i64 0, i64* %i.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body
  %24 = load i64* %i.i, align 8
  %25 = load i64* %indent.addr.i2, align 8
  %cmp.i = icmp ult i64 %24, %25
  br i1 %cmp.i, label %for.body.i, label %print_space.exit

for.body.i:                                       ; preds = %for.cond.i
  %26 = load %struct.__sFILE** @__stdoutp, align 8
  %call.i3 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0)) #3
  %27 = load i64* %i.i, align 8
  %inc.i = add i64 %27, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i

print_space.exit:                                 ; preds = %for.cond.i
  %28 = bitcast i64* %indent.addr.i2 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %28) #3
  %29 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %29) #3
  %30 = load %struct.__sFILE** @__stdoutp, align 8
  %31 = load i8** %key, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([11 x i8]* @.str19, i32 0, i32 0), i8* %31)
  %32 = load i64* %indent.addr, align 8
  %33 = load %struct._String** %_key, align 8
  %len = getelementptr inbounds %struct._String* %33, i32 0, i32 2
  %34 = load i64* %len, align 8
  %add = add i64 %32, %34
  %add4 = add i64 %add, 7
  %coerce.dive1 = bitcast %union.UnionType* %value to double*
  %35 = bitcast double* %coerce.dive1 to i64*
  %36 = load i64* %35, align 1
  call void @dumper(i64 %36, i64 %add4)
  %37 = load i64* %i, align 8
  %add5 = add i64 %37, 1
  %38 = load i64* %key_n, align 8
  %cmp6 = icmp ne i64 %add5, %38
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %print_space.exit
  %39 = load %struct.__sFILE** @__stdoutp, align 8
  %call7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %39, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0))
  br label %for.inc

if.else:                                          ; preds = %print_space.exit
  %40 = load %struct.__sFILE** @__stdoutp, align 8
  %call8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %40, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %41 = load i64* %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i64* %indent.addr, align 8
  %tobool = icmp ne i64 %42, 0
  br i1 %tobool, label %if.then9, label %if.else10

if.then9:                                         ; preds = %for.end
  %43 = load i64* %indent.addr, align 8
  %44 = bitcast i8** %s.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %44) #3
  %45 = bitcast i64* %indent.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %45) #3
  store i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0), i8** %s.addr.i, align 8
  store i64 %43, i64* %indent.addr.i, align 8
  %46 = load i64* %indent.addr.i, align 8
  %47 = bitcast i64* %indent.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %47) #3
  %48 = bitcast i64* %i.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %48) #3
  store i64 %46, i64* %indent.addr.i.i, align 8
  store i64 0, i64* %i.i.i, align 8
  store i64 0, i64* %i.i.i, align 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %if.then9
  %49 = load i64* %i.i.i, align 8
  %50 = load i64* %indent.addr.i.i, align 8
  %cmp.i.i = icmp ult i64 %49, %50
  br i1 %cmp.i.i, label %for.body.i.i, label %print_message.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %51 = load %struct.__sFILE** @__stdoutp, align 8
  %call.i.i = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %51, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0)) #3
  %52 = load i64* %i.i.i, align 8
  %inc.i.i = add i64 %52, 1
  store i64 %inc.i.i, i64* %i.i.i, align 8
  br label %for.cond.i.i

print_message.exit:                               ; preds = %for.cond.i.i
  %53 = bitcast i64* %indent.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %53) #3
  %54 = bitcast i64* %i.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %54) #3
  %55 = load %struct.__sFILE** @__stdoutp, align 8
  %56 = load i8** %s.addr.i, align 8
  %call.i = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %55, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %56) #3
  %57 = bitcast i8** %s.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %57) #3
  %58 = bitcast i64* %indent.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %58) #3
  br label %if.end12

if.else10:                                        ; preds = %for.end
  %59 = load %struct.__sFILE** @__stdoutp, align 8
  %call11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %59, i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %print_message.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @dumper(i64 %o.coerce, i64 %indent) #0 {
entry:
  %o.addr.i = alloca %struct._String*, align 8
  %o = alloca %union.UnionType, align 8
  %indent.addr = alloca i64, align 8
  %coerce.dive1 = bitcast %union.UnionType* %o to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %o.coerce, i64* %0, align 1
  store i64 %indent, i64* %indent.addr, align 8
  %o1 = bitcast %union.UnionType* %o to i8**
  %1 = load i8** %o1, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %o3 = bitcast %union.UnionType* %o to i8**
  %3 = load i8** %o3, align 8
  %4 = ptrtoint i8* %3 to i64
  %and4 = and i64 %4, 4222124650659840
  %shr = lshr i64 %and4, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.bb
    i64 2, label %sw.bb6
    i64 6, label %sw.bb8
    i64 4, label %sw.bb11
    i64 11, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry, %entry
  %5 = load %struct.__sFILE** @__stdoutp, align 8
  %coerce.dive52 = bitcast %union.UnionType* %o to double*
  %6 = bitcast double* %coerce.dive52 to i64*
  %7 = load i64* %6, align 1
  call void @print_object(%struct.__sFILE* %5, i64 %7)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %o7 = bitcast %union.UnionType* %o to i8**
  %8 = load i8** %o7, align 8
  %9 = ptrtoint i8* %8 to i64
  %xor = xor i64 %9, -3940649673949184
  %10 = inttoptr i64 %xor to %struct._String*
  %11 = bitcast %struct._String** %o.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %11) #3
  store %struct._String* %10, %struct._String** %o.addr.i, align 8
  %12 = load %struct.__sFILE** @__stdoutp, align 8
  %13 = load %struct._String** %o.addr.i, align 8
  %s.i = getelementptr inbounds %struct._String* %13, i32 0, i32 1
  %14 = load i8** %s.i, align 8
  %call.i = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0), i8* %14) #3
  %15 = bitcast %struct._String** %o.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %15) #3
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %o9 = bitcast %union.UnionType* %o to i8**
  %16 = load i8** %o9, align 8
  %17 = ptrtoint i8* %16 to i64
  %xor10 = xor i64 %17, -2814749767106560
  %18 = inttoptr i64 %xor10 to %struct._HashRef*
  %19 = load i64* %indent.addr, align 8
  call void @dump_hash_ref(%struct._HashRef* %18, i64 %19)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %o12 = bitcast %union.UnionType* %o to i8**
  %20 = load i8** %o12, align 8
  %21 = ptrtoint i8* %20 to i64
  %xor13 = xor i64 %21, -3377699720527872
  %22 = inttoptr i64 %xor13 to %struct._ArrayRef*
  %23 = load i64* %indent.addr, align 8
  call void @dump_array_ref(%struct._ArrayRef* %22, i64 %23)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %24 = load %struct.__sFILE** @__stdoutp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @dump_array_ref(%struct._ArrayRef* %ref, i64 %indent) #0 {
entry:
  %indent.addr.i.i = alloca i64, align 8
  %i.i.i = alloca i64, align 8
  %s.addr.i = alloca i8*, align 8
  %indent.addr.i2 = alloca i64, align 8
  %indent.addr.i = alloca i64, align 8
  %i.i = alloca i64, align 8
  %ref.addr = alloca %struct._ArrayRef*, align 8
  %indent.addr = alloca i64, align 8
  %array = alloca %struct._Array*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %value = alloca %union.UnionType, align 8
  store %struct._ArrayRef* %ref, %struct._ArrayRef** %ref.addr, align 8
  store i64 %indent, i64* %indent.addr, align 8
  %0 = load %struct._ArrayRef** %ref.addr, align 8
  %v = getelementptr inbounds %struct._ArrayRef* %0, i32 0, i32 1
  %o = bitcast %union.UnionType* %v to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %xor = xor i64 %2, -3659174697238528
  %3 = inttoptr i64 %xor to %struct._Array*
  store %struct._Array* %3, %struct._Array** %array, align 8
  %4 = load %struct._Array** %array, align 8
  %size1 = getelementptr inbounds %struct._Array* %4, i32 0, i32 2
  %5 = load i64* %size1, align 8
  store i64 %5, i64* %size, align 8
  store i64 0, i64* %i, align 8
  %6 = load %struct.__sFILE** @__stdoutp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([3 x i8]* @.str23, i32 0, i32 0))
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64* %i, align 8
  %8 = load i64* %size, align 8
  %cmp = icmp ult i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64* %i, align 8
  %10 = load %struct._Array** %array, align 8
  %list = getelementptr inbounds %struct._Array* %10, i32 0, i32 1
  %11 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %11, i64 %9
  %12 = load %union.UnionType** %arrayidx, align 8
  %13 = bitcast %union.UnionType* %value to i8*
  %14 = bitcast %union.UnionType* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = load i64* %indent.addr, align 8
  %add = add i64 %15, 2
  %16 = bitcast i64* %indent.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %16) #3
  %17 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %17) #3
  store i64 %add, i64* %indent.addr.i, align 8
  store i64 0, i64* %i.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body
  %18 = load i64* %i.i, align 8
  %19 = load i64* %indent.addr.i, align 8
  %cmp.i = icmp ult i64 %18, %19
  br i1 %cmp.i, label %for.body.i, label %print_space.exit

for.body.i:                                       ; preds = %for.cond.i
  %20 = load %struct.__sFILE** @__stdoutp, align 8
  %call.i = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0)) #3
  %21 = load i64* %i.i, align 8
  %inc.i = add i64 %21, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i

print_space.exit:                                 ; preds = %for.cond.i
  %22 = bitcast i64* %indent.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %22) #3
  %23 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %23) #3
  %24 = load i64* %indent.addr, align 8
  %add2 = add i64 %24, 2
  %coerce.dive1 = bitcast %union.UnionType* %value to double*
  %25 = bitcast double* %coerce.dive1 to i64*
  %26 = load i64* %25, align 1
  call void @dumper(i64 %26, i64 %add2)
  %27 = load i64* %i, align 8
  %add3 = add i64 %27, 1
  %28 = load i64* %size, align 8
  %cmp4 = icmp ne i64 %add3, %28
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %print_space.exit
  %29 = load %struct.__sFILE** @__stdoutp, align 8
  %call5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0))
  br label %for.inc

if.else:                                          ; preds = %print_space.exit
  %30 = load %struct.__sFILE** @__stdoutp, align 8
  %call6 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %31 = load i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i64* %indent.addr, align 8
  %tobool = icmp ne i64 %32, 0
  br i1 %tobool, label %if.then7, label %if.else8

if.then7:                                         ; preds = %for.end
  %33 = load i64* %indent.addr, align 8
  %34 = bitcast i8** %s.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %34) #3
  %35 = bitcast i64* %indent.addr.i2 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %35) #3
  store i8* getelementptr inbounds ([2 x i8]* @.str24, i32 0, i32 0), i8** %s.addr.i, align 8
  store i64 %33, i64* %indent.addr.i2, align 8
  %36 = load i64* %indent.addr.i2, align 8
  %37 = bitcast i64* %indent.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %37) #3
  %38 = bitcast i64* %i.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %38) #3
  store i64 %36, i64* %indent.addr.i.i, align 8
  store i64 0, i64* %i.i.i, align 8
  store i64 0, i64* %i.i.i, align 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %if.then7
  %39 = load i64* %i.i.i, align 8
  %40 = load i64* %indent.addr.i.i, align 8
  %cmp.i.i = icmp ult i64 %39, %40
  br i1 %cmp.i.i, label %for.body.i.i, label %print_message.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %41 = load %struct.__sFILE** @__stdoutp, align 8
  %call.i.i = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0)) #3
  %42 = load i64* %i.i.i, align 8
  %inc.i.i = add i64 %42, 1
  store i64 %inc.i.i, i64* %i.i.i, align 8
  br label %for.cond.i.i

print_message.exit:                               ; preds = %for.cond.i.i
  %43 = bitcast i64* %indent.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %43) #3
  %44 = bitcast i64* %i.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %44) #3
  %45 = load %struct.__sFILE** @__stdoutp, align 8
  %46 = load i8** %s.addr.i, align 8
  %call.i3 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %45, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %46) #3
  %47 = bitcast i8** %s.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %47) #3
  %48 = bitcast i64* %indent.addr.i2 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %48) #3
  br label %if.end10

if.else8:                                         ; preds = %for.end
  %49 = load %struct.__sFILE** @__stdoutp, align 8
  %call9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %49, i8* getelementptr inbounds ([2 x i8]* @.str24, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %print_message.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @dump_string(%struct._String* %o) #0 {
entry:
  %o.addr = alloca %struct._String*, align 8
  store %struct._String* %o, %struct._String** %o.addr, align 8
  %0 = load %struct.__sFILE** @__stdoutp, align 8
  %1 = load %struct._String** %o.addr, align 8
  %s = getelementptr inbounds %struct._String* %1, i32 0, i32 1
  %2 = load i8** %s, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0), i8* %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @print_object(%struct.__sFILE* %fp, i64 %_o.coerce) #0 {
entry:
  %retval.i = alloca %union.UnionType, align 8
  %array.addr.i4 = alloca %struct._Array*, align 8
  %ret.i = alloca %union.UnionType, align 8
  %size.i5 = alloca i64, align 8
  %i.i6 = alloca i64, align 8
  %fp.addr.i = alloca %struct.__sFILE*, align 8
  %array.addr.i = alloca %struct._Array*, align 8
  %size.i = alloca i64, align 8
  %i.i = alloca i64, align 8
  %fp.addr = alloca %struct.__sFILE*, align 8
  %_o = alloca %union.UnionType, align 8
  %o = alloca i8*, align 8
  %coerce = alloca %union.UnionType, align 8
  %object = alloca %struct._Object*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %coerce.dive1 = bitcast %union.UnionType* %_o to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %_o.coerce, i64* %0, align 1
  %1 = load %struct.__sFILE** %fp.addr, align 8
  %tobool = icmp ne %struct.__sFILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE** @__stdoutp, align 8
  store %struct.__sFILE* %2, %struct.__sFILE** %fp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %o1 = bitcast %union.UnionType* %_o to i8**
  %3 = load i8** %o1, align 8
  store i8* %3, i8** %o, align 8
  %4 = load i8** %o, align 8
  %5 = ptrtoint i8* %4 to i64
  %and = and i64 %5, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %6 = load i8** %o, align 8
  %7 = ptrtoint i8* %6 to i64
  %and3 = and i64 %7, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
    i64 2, label %sw.bb6
    i64 3, label %sw.bb8
    i64 4, label %sw.bb17
    i64 5, label %sw.bb19
    i64 6, label %sw.bb21
    i64 9, label %sw.bb23
    i64 7, label %sw.bb25
    i64 8, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load %struct.__sFILE** %fp.addr, align 8
  %9 = load i8** %o, align 8
  %10 = ptrtoint i8* %9 to i64
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i64 %10)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %11 = load %struct.__sFILE** %fp.addr, align 8
  %d = bitcast %union.UnionType* %_o to double*
  %12 = load double* %d, align 8
  %call5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), double %12)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %13 = load %struct.__sFILE** %fp.addr, align 8
  %14 = load i8** %o, align 8
  %15 = ptrtoint i8* %14 to i64
  %xor = xor i64 %15, -3940649673949184
  %16 = inttoptr i64 %xor to %struct._String*
  %s = getelementptr inbounds %struct._String* %16, i32 0, i32 1
  %17 = load i8** %s, align 8
  %call7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %17)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %18 = load %struct.__sFILE** %fp.addr, align 8
  %19 = load %struct.__sFILE** @__stdoutp, align 8
  %cmp9 = icmp ne %struct.__sFILE* %18, %19
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.bb8
  %20 = load %struct.__sFILE** %fp.addr, align 8
  %21 = load i8** %o, align 8
  %22 = ptrtoint i8* %21 to i64
  %xor12 = xor i64 %22, -3659174697238528
  %23 = inttoptr i64 %xor12 to %struct._Array*
  %24 = bitcast %struct.__sFILE** %fp.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %24) #3
  %25 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %25) #3
  %26 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %26) #3
  %27 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %27) #3
  store %struct.__sFILE* %20, %struct.__sFILE** %fp.addr.i, align 8
  store %struct._Array* %23, %struct._Array** %array.addr.i, align 8
  %28 = load %struct._Array** %array.addr.i, align 8
  %size1.i = getelementptr inbounds %struct._Array* %28, i32 0, i32 2
  %29 = load i64* %size1.i, align 8
  store i64 %29, i64* %size.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.then11
  %30 = load i64* %i.i, align 8
  %31 = load i64* %size.i, align 8
  %cmp.i = icmp ult i64 %30, %31
  br i1 %cmp.i, label %for.inc.i, label %_print_with_handler.exit

for.inc.i:                                        ; preds = %for.cond.i
  %32 = load %struct.__sFILE** %fp.addr.i, align 8
  %33 = load i64* %i.i, align 8
  %34 = load %struct._Array** %array.addr.i, align 8
  %list.i = getelementptr inbounds %struct._Array* %34, i32 0, i32 1
  %35 = load %union.UnionType*** %list.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType** %35, i64 %33
  %36 = load %union.UnionType** %arrayidx.i, align 8
  %coerce.dive1.i = bitcast %union.UnionType* %36 to double*
  %37 = bitcast double* %coerce.dive1.i to i64*
  %38 = load i64* %37, align 1
  call void @print_object(%struct.__sFILE* %32, i64 %38) #3
  %39 = load i64* %i.i, align 8
  %inc.i = add i64 %39, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i

_print_with_handler.exit:                         ; preds = %for.cond.i
  %40 = bitcast %struct.__sFILE** %fp.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %40) #3
  %41 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %41) #3
  %42 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %42) #3
  %43 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %43) #3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb8
  %44 = load i8** %o, align 8
  %45 = ptrtoint i8* %44 to i64
  %xor13 = xor i64 %45, -3659174697238528
  %46 = inttoptr i64 %xor13 to %struct._Array*
  %47 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %47) #3
  %48 = bitcast %struct._Array** %array.addr.i4 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %48) #3
  %49 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %49) #3
  %50 = bitcast i64* %size.i5 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %50) #3
  %51 = bitcast i64* %i.i6 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %51) #3
  store %struct._Array* %46, %struct._Array** %array.addr.i4, align 8
  %52 = load %struct._Array** %array.addr.i4, align 8
  %size1.i7 = getelementptr inbounds %struct._Array* %52, i32 0, i32 2
  %53 = load i64* %size1.i7, align 8
  store i64 %53, i64* %size.i5, align 8
  store i64 0, i64* %i.i6, align 8
  store i64 0, i64* %i.i6, align 8
  br label %for.cond.i9

for.cond.i9:                                      ; preds = %for.inc.i14, %if.else
  %54 = load i64* %i.i6, align 8
  %55 = load i64* %size.i5, align 8
  %cmp.i8 = icmp ult i64 %54, %55
  br i1 %cmp.i8, label %for.inc.i14, label %print.exit

for.inc.i14:                                      ; preds = %for.cond.i9
  %56 = load %struct.__sFILE** @__stdoutp, align 8
  %57 = load i64* %i.i6, align 8
  %58 = load %struct._Array** %array.addr.i4, align 8
  %list.i10 = getelementptr inbounds %struct._Array* %58, i32 0, i32 1
  %59 = load %union.UnionType*** %list.i10, align 8
  %arrayidx.i11 = getelementptr inbounds %union.UnionType** %59, i64 %57
  %60 = load %union.UnionType** %arrayidx.i11, align 8
  %coerce.dive1.i12 = bitcast %union.UnionType* %60 to double*
  %61 = bitcast double* %coerce.dive1.i12 to i64*
  %62 = load i64* %61, align 1
  call void @print_object(%struct.__sFILE* %56, i64 %62) #3
  %63 = load i64* %i.i6, align 8
  %inc.i13 = add i64 %63, 1
  store i64 %inc.i13, i64* %i.i6, align 8
  br label %for.cond.i9

print.exit:                                       ; preds = %for.cond.i9
  %o.i = bitcast %union.UnionType* %ret.i to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o.i, align 8
  %64 = bitcast %union.UnionType* %retval.i to i8*
  %65 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 8, i32 8, i1 false) #3
  %coerce.dive22.i = bitcast %union.UnionType* %retval.i to double*
  %66 = bitcast double* %coerce.dive22.i to i64*
  %67 = load i64* %66, align 1
  %68 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %68) #3
  %69 = bitcast %struct._Array** %array.addr.i4 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %69) #3
  %70 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %70) #3
  %71 = bitcast i64* %size.i5 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %71) #3
  %72 = bitcast i64* %i.i6 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %72) #3
  %coerce.dive152 = bitcast %union.UnionType* %coerce to double*
  %73 = bitcast double* %coerce.dive152 to i64*
  store i64 %67, i64* %73, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %74 = load %struct.__sFILE** %fp.addr, align 8
  %75 = load i8** %o, align 8
  %call18 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %74, i8* getelementptr inbounds ([10 x i8]* @.str29, i32 0, i32 0), i8* %75)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %76 = load %struct.__sFILE** %fp.addr, align 8
  %77 = load i8** %o, align 8
  %78 = ptrtoint i8* %77 to i64
  %xor20 = xor i64 %78, -3096224743817216
  %79 = inttoptr i64 %xor20 to %struct._Hash*
  call void @print_hash(%struct.__sFILE* %76, %struct._Hash* %79)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %80 = load %struct.__sFILE** %fp.addr, align 8
  %81 = load i8** %o, align 8
  %call22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([9 x i8]* @.str30, i32 0, i32 0), i8* %81)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %82 = load %struct.__sFILE** %fp.addr, align 8
  %83 = load i8** %o, align 8
  %call24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %82, i8* getelementptr inbounds ([9 x i8]* @.str31, i32 0, i32 0), i8* %83)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %84 = load i8** %o, align 8
  %85 = ptrtoint i8* %84 to i64
  %xor26 = xor i64 %85, -2533274790395904
  %86 = inttoptr i64 %xor26 to %struct._Object*
  store %struct._Object* %86, %struct._Object** %object, align 8
  %87 = load %struct.__sFILE** %fp.addr, align 8
  %88 = load %struct._Object** %object, align 8
  %v = getelementptr inbounds %struct._Object* %88, i32 0, i32 1
  %coerce.dive273 = bitcast %union.UnionType* %v to double*
  %89 = bitcast double* %coerce.dive273 to i64*
  %90 = load i64* %89, align 1
  call void @print_object(%struct.__sFILE* %87, i64 %90)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %91 = load %struct.__sFILE** %fp.addr, align 8
  %92 = load i8** %o, align 8
  %93 = ptrtoint i8* %92 to i64
  %xor29 = xor i64 %93, -2251799813685248
  %94 = inttoptr i64 %xor29 to %struct._BlessedObject*
  %pkg_name = getelementptr inbounds %struct._BlessedObject* %94, i32 0, i32 3
  %95 = load i8** %pkg_name, align 8
  %96 = load i8** %o, align 8
  %call30 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %91, i8* getelementptr inbounds ([12 x i8]* @.str32, i32 0, i32 0), i8* %95, i8* %96)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %_print_with_handler.exit, %print.exit, %sw.bb28, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb6, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_dumper(%struct._Array* %a) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  store %struct._Array* %a, %struct._Array** %a.addr, align 8
  %0 = load %struct._Array** %a.addr, align 8
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Array** %a.addr, align 8
  %list = getelementptr inbounds %struct._Array* %2, i32 0, i32 1
  %3 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %3 to %union.UnionType**
  %4 = load %union.UnionType** %arrayidx1, align 8
  %coerce.dive2 = bitcast %union.UnionType* %4 to double*
  %5 = bitcast double* %coerce.dive2 to i64*
  %6 = load i64* %5, align 1
  call void @dumper(i64 %6, i64 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o, align 8
  %7 = bitcast %union.UnionType* %retval to i8*
  %8 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %coerce.dive13 = bitcast %union.UnionType* %retval to double*
  %9 = bitcast double* %coerce.dive13 to i64*
  %10 = load i64* %9, align 1
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define void @_print_with_handler(%struct.__sFILE* %fp, %struct._Array* %array) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %array.addr = alloca %struct._Array*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  %0 = load %struct._Array** %array.addr, align 8
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64* %i, align 8
  %3 = load i64* %size, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %4 = load %struct.__sFILE** %fp.addr, align 8
  %5 = load i64* %i, align 8
  %6 = load %struct._Array** %array.addr, align 8
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i64 %5
  %8 = load %union.UnionType** %arrayidx, align 8
  %coerce.dive1 = bitcast %union.UnionType* %8 to double*
  %9 = bitcast double* %coerce.dive1 to i64*
  %10 = load i64* %9, align 1
  call void @print_object(%struct.__sFILE* %4, i64 %10)
  %11 = load i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @print(%struct._Array* %array) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %array.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  %0 = load %struct._Array** %array.addr, align 8
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64* %i, align 8
  %3 = load i64* %size, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %4 = load %struct.__sFILE** @__stdoutp, align 8
  %5 = load i64* %i, align 8
  %6 = load %struct._Array** %array.addr, align 8
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i64 %5
  %8 = load %union.UnionType** %arrayidx, align 8
  %coerce.dive1 = bitcast %union.UnionType* %8 to double*
  %9 = bitcast double* %coerce.dive1 to i64*
  %10 = load i64* %9, align 1
  call void @print_object(%struct.__sFILE* %4, i64 %10)
  %11 = load i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o, align 8
  %12 = bitcast %union.UnionType* %retval to i8*
  %13 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %coerce.dive22 = bitcast %union.UnionType* %retval to double*
  %14 = bitcast double* %coerce.dive22 to i64*
  %15 = load i64* %14, align 1
  ret i64 %15
}

; Function Attrs: nounwind ssp uwtable
define void @print_hash(%struct.__sFILE* %fp, %struct._Hash* %hash) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 8
  %hash.addr = alloca %struct._Hash*, align 8
  %key_n = alloca i64, align 8
  %i = alloca i64, align 8
  %key = alloca %struct._String*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  store %struct._Hash* %hash, %struct._Hash** %hash.addr, align 8
  %0 = load %struct._Hash** %hash.addr, align 8
  %size = getelementptr inbounds %struct._Hash* %0, i32 0, i32 3
  %1 = load i64* %size, align 8
  store i64 %1, i64* %key_n, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64* %i, align 8
  %3 = load i64* %key_n, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %4 = load i64* %i, align 8
  %5 = load %struct._Hash** %hash.addr, align 8
  %keys = getelementptr inbounds %struct._Hash* %5, i32 0, i32 2
  %6 = load %struct._String*** %keys, align 8
  %arrayidx = getelementptr inbounds %struct._String** %6, i64 %4
  %7 = load %struct._String** %arrayidx, align 8
  store %struct._String* %7, %struct._String** %key, align 8
  %8 = load %struct.__sFILE** %fp.addr, align 8
  %9 = load %struct._String** %key, align 8
  %s = getelementptr inbounds %struct._String* %9, i32 0, i32 1
  %10 = load i8** %s, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %10)
  %11 = load %struct.__sFILE** %fp.addr, align 8
  %12 = load %struct._String** %key, align 8
  %hash1 = getelementptr inbounds %struct._String* %12, i32 0, i32 3
  %13 = load i64* %hash1, align 8
  %14 = load %struct._Hash** %hash.addr, align 8
  %table = getelementptr inbounds %struct._Hash* %14, i32 0, i32 1
  %15 = load %union.UnionType** %table, align 8
  %arrayidx2 = getelementptr inbounds %union.UnionType* %15, i64 %13
  %coerce.dive1 = bitcast %union.UnionType* %arrayidx2 to double*
  %16 = bitcast double* %coerce.dive1 to i64*
  %17 = load i64* %16, align 1
  call void @print_object(%struct.__sFILE* %11, i64 %17)
  %18 = load i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @print_with_handler(%union.UnionType* %_handler, %struct._Array* %array) #0 {
entry:
  %fp.addr.i = alloca %struct.__sFILE*, align 8
  %array.addr.i = alloca %struct._Array*, align 8
  %size.i = alloca i64, align 8
  %i.i = alloca i64, align 8
  %retval = alloca %union.UnionType, align 8
  %_handler.addr = alloca %union.UnionType*, align 8
  %array.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %fp = alloca %struct.__sFILE*, align 8
  store %union.UnionType* %_handler, %union.UnionType** %_handler.addr, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  %0 = load %union.UnionType** %_handler.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %xor = xor i64 %2, -1688849860263936
  %3 = inttoptr i64 %xor to %struct._IOHandlerObject*
  %fp1 = getelementptr inbounds %struct._IOHandlerObject* %3, i32 0, i32 1
  %4 = load %struct.__sFILE** %fp1, align 8
  store %struct.__sFILE* %4, %struct.__sFILE** %fp, align 8
  %5 = load %struct.__sFILE** %fp, align 8
  %6 = load %struct._Array** %array.addr, align 8
  %7 = bitcast %struct.__sFILE** %fp.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %7) #3
  %8 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8) #3
  %9 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %9) #3
  %10 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %10) #3
  store %struct.__sFILE* %5, %struct.__sFILE** %fp.addr.i, align 8
  store %struct._Array* %6, %struct._Array** %array.addr.i, align 8
  %11 = load %struct._Array** %array.addr.i, align 8
  %size1.i = getelementptr inbounds %struct._Array* %11, i32 0, i32 2
  %12 = load i64* %size1.i, align 8
  store i64 %12, i64* %size.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %13 = load i64* %i.i, align 8
  %14 = load i64* %size.i, align 8
  %cmp.i = icmp ult i64 %13, %14
  br i1 %cmp.i, label %for.inc.i, label %_print_with_handler.exit

for.inc.i:                                        ; preds = %for.cond.i
  %15 = load %struct.__sFILE** %fp.addr.i, align 8
  %16 = load i64* %i.i, align 8
  %17 = load %struct._Array** %array.addr.i, align 8
  %list.i = getelementptr inbounds %struct._Array* %17, i32 0, i32 1
  %18 = load %union.UnionType*** %list.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType** %18, i64 %16
  %19 = load %union.UnionType** %arrayidx.i, align 8
  %coerce.dive1.i = bitcast %union.UnionType* %19 to double*
  %20 = bitcast double* %coerce.dive1.i to i64*
  %21 = load i64* %20, align 1
  call void @print_object(%struct.__sFILE* %15, i64 %21) #3
  %22 = load i64* %i.i, align 8
  %inc.i = add i64 %22, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i

_print_with_handler.exit:                         ; preds = %for.cond.i
  %23 = bitcast %struct.__sFILE** %fp.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %23) #3
  %24 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %24) #3
  %25 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %25) #3
  %26 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %26) #3
  %o2 = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o2, align 8
  %27 = bitcast %union.UnionType* %retval to i8*
  %28 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %29 = bitcast double* %coerce.dive1 to i64*
  %30 = load i64* %29, align 1
  ret i64 %30
}

; Function Attrs: nounwind ssp uwtable
define i64 @say(%struct._Array* %array) #0 {
entry:
  %retval.i = alloca %union.UnionType, align 8
  %array.addr.i = alloca %struct._Array*, align 8
  %ret.i = alloca %union.UnionType, align 8
  %size.i = alloca i64, align 8
  %i.i = alloca i64, align 8
  %retval = alloca %union.UnionType, align 8
  %array.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %coerce = alloca %union.UnionType, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  %0 = load %struct._Array** %array.addr, align 8
  %1 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %1) #3
  %2 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %2) #3
  %3 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %3) #3
  %4 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %4) #3
  %5 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %5) #3
  store %struct._Array* %0, %struct._Array** %array.addr.i, align 8
  %6 = load %struct._Array** %array.addr.i, align 8
  %size1.i = getelementptr inbounds %struct._Array* %6, i32 0, i32 2
  %7 = load i64* %size1.i, align 8
  store i64 %7, i64* %size.i, align 8
  store i64 0, i64* %i.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %8 = load i64* %i.i, align 8
  %9 = load i64* %size.i, align 8
  %cmp.i = icmp ult i64 %8, %9
  br i1 %cmp.i, label %for.inc.i, label %print.exit

for.inc.i:                                        ; preds = %for.cond.i
  %10 = load %struct.__sFILE** @__stdoutp, align 8
  %11 = load i64* %i.i, align 8
  %12 = load %struct._Array** %array.addr.i, align 8
  %list.i = getelementptr inbounds %struct._Array* %12, i32 0, i32 1
  %13 = load %union.UnionType*** %list.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType** %13, i64 %11
  %14 = load %union.UnionType** %arrayidx.i, align 8
  %coerce.dive1.i = bitcast %union.UnionType* %14 to double*
  %15 = bitcast double* %coerce.dive1.i to i64*
  %16 = load i64* %15, align 1
  call void @print_object(%struct.__sFILE* %10, i64 %16) #3
  %17 = load i64* %i.i, align 8
  %inc.i = add i64 %17, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i

print.exit:                                       ; preds = %for.cond.i
  %o.i = bitcast %union.UnionType* %ret.i to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o.i, align 8
  %18 = bitcast %union.UnionType* %retval.i to i8*
  %19 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false) #3
  %coerce.dive22.i = bitcast %union.UnionType* %retval.i to double*
  %20 = bitcast double* %coerce.dive22.i to i64*
  %21 = load i64* %20, align 1
  %22 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %22) #3
  %23 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %23) #3
  %24 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %24) #3
  %25 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %25) #3
  %26 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %26) #3
  %coerce.dive1 = bitcast %union.UnionType* %coerce to double*
  %27 = bitcast double* %coerce.dive1 to i64*
  store i64 %21, i64* %27, align 1
  %28 = load %struct.__sFILE** @__stdoutp, align 8
  %call1 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o, align 8
  %29 = bitcast %union.UnionType* %retval to i8*
  %30 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 8, i1 false)
  %coerce.dive22 = bitcast %union.UnionType* %retval to double*
  %31 = bitcast double* %coerce.dive22 to i64*
  %32 = load i64* %31, align 1
  ret i64 %32
}

; Function Attrs: nounwind ssp uwtable
define void @debug_print(i64 %o.coerce) #0 {
entry:
  %o = alloca %union.UnionType, align 8
  %coerce.dive2 = bitcast %union.UnionType* %o to double*
  %0 = bitcast double* %coerce.dive2 to i64*
  store i64 %o.coerce, i64* %0, align 1
  %1 = load %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([26 x i8]* @.str33, i32 0, i32 0))
  %2 = load %struct.__sFILE** @__stdoutp, align 8
  %coerce.dive13 = bitcast %union.UnionType* %o to double*
  %3 = bitcast double* %coerce.dive13 to i64*
  %4 = load i64* %3, align 1
  call void @print_object(%struct.__sFILE* %2, i64 %4)
  %5 = load %struct.__sFILE** @__stderrp, align 8
  %call2 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([15 x i8]* @.str34, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @shift(%struct._Array* %args) #0 {
entry:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %size = alloca i64, align 8
  %o = alloca %union.UnionType, align 8
  %array = alloca %struct._Array*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64* %size, align 8
  %cmp = icmp ugt i64 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %union.UnionType* %retval to i8*
  %4 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64* %size, align 8
  %cmp2 = icmp eq i64 %5, 1
  br i1 %cmp2, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  %6 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %7 to %union.UnionType**
  %8 = load %union.UnionType** %arrayidx1, align 8
  %9 = bitcast %union.UnionType* %o to i8*
  %10 = bitcast %union.UnionType* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %o4 = bitcast %union.UnionType* %o to i8**
  %11 = load i8** %o4, align 8
  %12 = ptrtoint i8* %11 to i64
  %and = and i64 %12, -4503599627370496
  %cmp5 = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp5 to i32
  %conv6 = sext i32 %conv to i64
  %o7 = bitcast %union.UnionType* %o to i8**
  %13 = load i8** %o7, align 8
  %14 = ptrtoint i8* %13 to i64
  %and8 = and i64 %14, 4222124650659840
  %shr = lshr i64 %and8, 48
  %mul = mul i64 %conv6, %shr
  %cmp9 = icmp ne i64 %mul, 3
  br i1 %cmp9, label %if.then11, label %cond.false

if.then11:                                        ; preds = %do.body
  %15 = load %struct.__sFILE** @__stderrp, align 8
  %o12 = bitcast %union.UnionType* %o to i8**
  %16 = load i8** %o12, align 8
  %17 = ptrtoint i8* %16 to i64
  %and13 = and i64 %17, -4503599627370496
  %cmp14 = icmp eq i64 %and13, -4503599627370496
  %conv15 = zext i1 %cmp14 to i32
  %conv16 = sext i32 %conv15 to i64
  %o17 = bitcast %union.UnionType* %o to i8**
  %18 = load i8** %o17, align 8
  %19 = ptrtoint i8* %18 to i64
  %and18 = and i64 %19, 4222124650659840
  %shr19 = lshr i64 %and18, 48
  %mul20 = mul i64 %conv16, %shr19
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul20)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.shift, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 409, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

cond.false:                                       ; preds = %do.body
  %o22 = bitcast %union.UnionType* %o to i8**
  %20 = load i8** %o22, align 8
  %21 = ptrtoint i8* %20 to i64
  %xor = xor i64 %21, -3659174697238528
  %22 = inttoptr i64 %xor to %struct._Array*
  store %struct._Array* %22, %struct._Array** %array, align 8
  %23 = load %struct._Array** %array, align 8
  %list23 = getelementptr inbounds %struct._Array* %23, i32 0, i32 1
  %24 = load %union.UnionType*** %list23, align 8
  %arrayidx242 = bitcast %union.UnionType** %24 to %union.UnionType**
  %25 = load %union.UnionType** %arrayidx242, align 8
  %26 = bitcast %union.UnionType* %ret to i8*
  %27 = bitcast %union.UnionType* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false)
  %28 = load %struct._Array** %array, align 8
  %size25 = getelementptr inbounds %struct._Array* %28, i32 0, i32 2
  %29 = load i64* %size25, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %size25, align 8
  %30 = load %struct._Array** %array, align 8
  %list26 = getelementptr inbounds %struct._Array* %30, i32 0, i32 1
  %31 = load %union.UnionType*** %list26, align 8
  %32 = bitcast %union.UnionType** %31 to i8*
  %33 = load %struct._Array** %array, align 8
  %list35 = getelementptr inbounds %struct._Array* %33, i32 0, i32 1
  %34 = load %union.UnionType*** %list35, align 8
  %35 = bitcast %union.UnionType** %34 to i8*
  %36 = load %struct._Array** %array, align 8
  %list36 = getelementptr inbounds %struct._Array* %36, i32 0, i32 1
  %37 = load %union.UnionType*** %list36, align 8
  %add.ptr37 = getelementptr inbounds %union.UnionType** %37, i64 1
  %38 = bitcast %union.UnionType** %add.ptr37 to i8*
  %39 = load %struct._Array** %array, align 8
  %size38 = getelementptr inbounds %struct._Array* %39, i32 0, i32 2
  %40 = load i64* %size38, align 8
  %mul39 = mul i64 %40, 8
  %41 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %41) #3
  %42 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %42) #3
  %43 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %43) #3
  store i8* %35, i8** %__dest.addr.i, align 8
  store i8* %38, i8** %__src.addr.i, align 8
  store i64 %mul39, i64* %__len.addr.i, align 8
  %44 = load i8** %__dest.addr.i, align 8
  %45 = load i8** %__src.addr.i, align 8
  %46 = load i64* %__len.addr.i, align 8
  %47 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memmove_chk(i8* %44, i8* %45, i64 %46, i64 -1) #3
  %48 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %48) #3
  %49 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %49) #3
  %50 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %50) #3
  br label %if.end42

if.else:                                          ; preds = %if.end
  %51 = load %struct.__sFILE** @__stderrp, align 8
  %call41 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %51, i8* getelementptr inbounds ([30 x i8]* @.str35, i32 0, i32 0))
  br label %if.end42

if.end42:                                         ; preds = %cond.false, %if.else
  %52 = bitcast %union.UnionType* %retval to i8*
  %53 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 8, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end42, %if.then
  %coerce.dive3 = bitcast %union.UnionType* %retval to double*
  %54 = bitcast double* %coerce.dive3 to i64*
  %55 = load i64* %54, align 1
  ret i64 %55
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64(i8*, i1) #5

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8*, i8*, i64, i64) #6

; Function Attrs: nounwind ssp uwtable
define void @Array_grow(%struct._Array* %array, i64 %grow_size) #0 {
entry:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %array.addr = alloca %struct._Array*, align 8
  %grow_size.addr = alloca i64, align 8
  %tmp = alloca i8*, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %undef_ptr = alloca %union.UnionType*, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  store i64 %grow_size, i64* %grow_size.addr, align 8
  %0 = load %struct._Array** %array.addr, align 8
  %size2 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size2, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64* %grow_size.addr, align 8
  %mul = mul i64 8, %2
  %call = call i8* @malloc(i64 %mul)
  store i8* %call, i8** %tmp, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str36, i32 0, i32 0))
  br label %if.end21

if.else:                                          ; preds = %entry
  %4 = load %struct._Array** %array.addr, align 8
  %list = getelementptr inbounds %struct._Array* %4, i32 0, i32 1
  %5 = load %union.UnionType*** %list, align 8
  %tobool4 = icmp ne %union.UnionType** %5, null
  br i1 %tobool4, label %cond.false, label %if.end

cond.false:                                       ; preds = %if.else
  %6 = load i8** %tmp, align 8
  %7 = load i8** %tmp, align 8
  %8 = load %struct._Array** %array.addr, align 8
  %list9 = getelementptr inbounds %struct._Array* %8, i32 0, i32 1
  %9 = load %union.UnionType*** %list9, align 8
  %10 = bitcast %union.UnionType** %9 to i8*
  %11 = load i64* %size, align 8
  %mul10 = mul i64 8, %11
  %12 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %12) #3
  %13 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %13) #3
  %14 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %14) #3
  store i8* %7, i8** %__dest.addr.i, align 8
  store i8* %10, i8** %__src.addr.i, align 8
  store i64 %mul10, i64* %__len.addr.i, align 8
  %15 = load i8** %__dest.addr.i, align 8
  %16 = load i8** %__src.addr.i, align 8
  %17 = load i64* %__len.addr.i, align 8
  %18 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %15, i8* %16, i64 %17, i64 -1) #3
  %19 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %19) #3
  %20 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %20) #3
  %21 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %21) #3
  br label %if.end

if.end:                                           ; preds = %cond.false, %if.else
  %22 = load i8** %tmp, align 8
  %23 = bitcast i8* %22 to %union.UnionType**
  %24 = load %struct._Array** %array.addr, align 8
  %list12 = getelementptr inbounds %struct._Array* %24, i32 0, i32 1
  store %union.UnionType** %23, %union.UnionType*** %list12, align 8
  %25 = load i64* %size, align 8
  %conv = trunc i64 %25 to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32* %i, align 4
  %conv14 = sext i32 %26 to i64
  %27 = load i64* %grow_size.addr, align 8
  %cmp15 = icmp ule i64 %conv14, %27
  br i1 %cmp15, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %28 = load i32* @count, align 4
  %inc.i = add nsw i32 %28, 1
  store i32 %inc.i, i32* @count, align 4
  %29 = load i32* @count, align 4
  %idxprom.i = sext i32 %29 to i64
  %30 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %30, i64 %idxprom.i
  %31 = load %struct._Object** %arrayidx.i, align 8
  %32 = bitcast %struct._Object* %31 to %union.UnionType*
  store %union.UnionType* %32, %union.UnionType** %undef_ptr, align 8
  %33 = load i8** bitcast (%union.UnionType* @undef to i8**), align 8
  %34 = load %union.UnionType** %undef_ptr, align 8
  %o = bitcast %union.UnionType* %34 to i8**
  store i8* %33, i8** %o, align 8
  %35 = load %union.UnionType** %undef_ptr, align 8
  %36 = load i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct._Array** %array.addr, align 8
  %list19 = getelementptr inbounds %struct._Array* %37, i32 0, i32 1
  %38 = load %union.UnionType*** %list19, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %38, i64 %idxprom
  store %union.UnionType* %35, %union.UnionType** %arrayidx, align 8
  %39 = load i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i64* %grow_size.addr, align 8
  %41 = load %struct._Array** %array.addr, align 8
  %size20 = getelementptr inbounds %struct._Array* %41, i32 0, i32 2
  store i64 %40, i64* %size20, align 8
  br label %if.end21

if.end21:                                         ; preds = %for.end, %if.then
  ret void
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #6

; Function Attrs: nounwind ssp uwtable
define %struct._Object* @fetch_object() #0 {
entry:
  %0 = load i32* @count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @count, align 4
  %1 = load i32* @count, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._Object*** @object_pool, align 8
  %arrayidx = getelementptr inbounds %struct._Object** %2, i64 %idxprom
  %3 = load %struct._Object** %arrayidx, align 8
  ret %struct._Object* %3
}

; Function Attrs: nounwind ssp uwtable
define i64 @push(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %size = alloca i64, align 8
  %ret = alloca %union.UnionType, align 8
  %array = alloca %union.UnionType*, align 8
  %value = alloca %union.UnionType*, align 8
  %base = alloca %struct._Array*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64* %size, align 8
  %cmp = icmp ne i64 %2, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([27 x i8]* @.str37, i32 0, i32 0))
  br label %if.end31

do.body:                                          ; preds = %entry
  %4 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %4, i32 0, i32 1
  %5 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %5 to %union.UnionType**
  %6 = load %union.UnionType** %arrayidx1, align 8
  store %union.UnionType* %6, %union.UnionType** %array, align 8
  %7 = load %struct._Array** %args.addr, align 8
  %list2 = getelementptr inbounds %struct._Array* %7, i32 0, i32 1
  %8 = load %union.UnionType*** %list2, align 8
  %arrayidx3 = getelementptr inbounds %union.UnionType** %8, i64 1
  %9 = load %union.UnionType** %arrayidx3, align 8
  store %union.UnionType* %9, %union.UnionType** %value, align 8
  %10 = load %union.UnionType** %array, align 8
  %o = bitcast %union.UnionType* %10 to i8**
  %11 = load i8** %o, align 8
  %12 = ptrtoint i8* %11 to i64
  %and = and i64 %12, -4503599627370496
  %cmp4 = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp4 to i32
  %conv5 = sext i32 %conv to i64
  %13 = load %union.UnionType** %array, align 8
  %o6 = bitcast %union.UnionType* %13 to i8**
  %14 = load i8** %o6, align 8
  %15 = ptrtoint i8* %14 to i64
  %and7 = and i64 %15, 4222124650659840
  %shr = lshr i64 %and7, 48
  %mul = mul i64 %conv5, %shr
  %cmp8 = icmp ne i64 %mul, 3
  br i1 %cmp8, label %if.then10, label %do.end

if.then10:                                        ; preds = %do.body
  %16 = load %struct.__sFILE** @__stderrp, align 8
  %17 = load %union.UnionType** %array, align 8
  %o11 = bitcast %union.UnionType* %17 to i8**
  %18 = load i8** %o11, align 8
  %19 = ptrtoint i8* %18 to i64
  %and12 = and i64 %19, -4503599627370496
  %cmp13 = icmp eq i64 %and12, -4503599627370496
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = sext i32 %conv14 to i64
  %20 = load %union.UnionType** %array, align 8
  %o16 = bitcast %union.UnionType* %20 to i8**
  %21 = load i8** %o16, align 8
  %22 = ptrtoint i8* %21 to i64
  %and17 = and i64 %22, 4222124650659840
  %shr18 = lshr i64 %and17, 48
  %mul19 = mul i64 %conv15, %shr18
  %call20 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul19)
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__.push, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 449, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end:                                           ; preds = %do.body
  %23 = load %union.UnionType** %array, align 8
  %o21 = bitcast %union.UnionType* %23 to i8**
  %24 = load i8** %o21, align 8
  %25 = ptrtoint i8* %24 to i64
  %xor = xor i64 %25, -3659174697238528
  %26 = inttoptr i64 %xor to %struct._Array*
  store %struct._Array* %26, %struct._Array** %base, align 8
  %27 = load %struct._Array** %base, align 8
  %28 = load %struct._Array** %base, align 8
  %size22 = getelementptr inbounds %struct._Array* %28, i32 0, i32 2
  %29 = load i64* %size22, align 8
  %add = add i64 %29, 1
  call void @Array_grow(%struct._Array* %27, i64 %add)
  %30 = load %union.UnionType** %value, align 8
  %31 = load %struct._Array** %base, align 8
  %size23 = getelementptr inbounds %struct._Array* %31, i32 0, i32 2
  %32 = load i64* %size23, align 8
  %33 = load %struct._Array** %base, align 8
  %list24 = getelementptr inbounds %struct._Array* %33, i32 0, i32 1
  %34 = load %union.UnionType*** %list24, align 8
  %arrayidx25 = getelementptr inbounds %union.UnionType** %34, i64 %32
  store %union.UnionType* %30, %union.UnionType** %arrayidx25, align 8
  %35 = load %struct._Array** %base, align 8
  %size26 = getelementptr inbounds %struct._Array* %35, i32 0, i32 2
  %36 = load i64* %size26, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %size26, align 8
  %37 = load %struct._Array** %base, align 8
  %size27 = getelementptr inbounds %struct._Array* %37, i32 0, i32 2
  %38 = load i64* %size27, align 8
  %and28 = and i64 %38, 4294967295
  %or = or i64 %and28, -4503599627370496
  %or29 = or i64 %or, 281474976710656
  %39 = inttoptr i64 %or29 to i8*
  %o30 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o30, align 8
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.then
  %40 = bitcast %union.UnionType* %retval to i8*
  %41 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %42 = bitcast double* %coerce.dive2 to i64*
  %43 = load i64* %42, align 1
  ret i64 %43
}

; Function Attrs: nounwind ssp uwtable
define i64 @new_HashRef(i64 %hash.coerce) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %hash = alloca %union.UnionType, align 8
  %ret = alloca %union.UnionType, align 8
  %o = alloca %struct._HashRef*, align 8
  %coerce.dive1 = bitcast %union.UnionType* %hash to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %hash.coerce, i64* %0, align 1
  %1 = load i32* @count, align 4
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, i32* @count, align 4
  %2 = load i32* @count, align 4
  %idxprom.i = sext i32 %2 to i64
  %3 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %3, i64 %idxprom.i
  %4 = load %struct._Object** %arrayidx.i, align 8
  %5 = bitcast %struct._Object* %4 to %struct._HashRef*
  store %struct._HashRef* %5, %struct._HashRef** %o, align 8
  %6 = load %struct._HashRef** %o, align 8
  %v = getelementptr inbounds %struct._HashRef* %6, i32 0, i32 1
  %7 = bitcast %union.UnionType* %v to i8*
  %8 = bitcast %union.UnionType* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = load %struct._HashRef** %o, align 8
  %10 = ptrtoint %struct._HashRef* %9 to i64
  %or = or i64 %10, -4503599627370496
  %or1 = or i64 %or, 1688849860263936
  %11 = inttoptr i64 %or1 to i8*
  %o2 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o2, align 8
  %12 = bitcast %union.UnionType* %retval to i8*
  %13 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %coerce.dive32 = bitcast %union.UnionType* %retval to double*
  %14 = bitcast double* %coerce.dive32 to i64*
  %15 = load i64* %14, align 1
  ret i64 %15
}

; Function Attrs: nounwind ssp uwtable
define i64 @new_ArrayRef(i64 %array.coerce) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %array = alloca %union.UnionType, align 8
  %ret = alloca %union.UnionType, align 8
  %o = alloca %struct._ArrayRef*, align 8
  %coerce.dive1 = bitcast %union.UnionType* %array to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %array.coerce, i64* %0, align 1
  %1 = load i32* @count, align 4
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, i32* @count, align 4
  %2 = load i32* @count, align 4
  %idxprom.i = sext i32 %2 to i64
  %3 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %3, i64 %idxprom.i
  %4 = load %struct._Object** %arrayidx.i, align 8
  %5 = bitcast %struct._Object* %4 to %struct._ArrayRef*
  store %struct._ArrayRef* %5, %struct._ArrayRef** %o, align 8
  %6 = load %struct._ArrayRef** %o, align 8
  %v = getelementptr inbounds %struct._ArrayRef* %6, i32 0, i32 1
  %7 = bitcast %union.UnionType* %v to i8*
  %8 = bitcast %union.UnionType* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = load %struct._ArrayRef** %o, align 8
  %10 = ptrtoint %struct._ArrayRef* %9 to i64
  %or = or i64 %10, -4503599627370496
  %or1 = or i64 %or, 1125899906842624
  %11 = inttoptr i64 %or1 to i8*
  %o2 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o2, align 8
  %12 = bitcast %union.UnionType* %retval to i8*
  %13 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %coerce.dive32 = bitcast %union.UnionType* %retval to double*
  %14 = bitcast double* %coerce.dive32 to i64*
  %15 = load i64* %14, align 1
  ret i64 %15
}

; Function Attrs: nounwind ssp uwtable
define %union.UnionType* @HashRef_get(%union.UnionType* %o, %struct._String* %key) #0 {
entry:
  %retval.i = alloca %union.UnionType, align 8
  %hash.i = alloca %union.UnionType, align 8
  %ret.i = alloca %union.UnionType, align 8
  %o.i = alloca %struct._HashRef*, align 8
  %o.addr = alloca %union.UnionType*, align 8
  %key.addr = alloca %struct._String*, align 8
  %ret = alloca %union.UnionType*, align 8
  %ref = alloca %struct._HashRef*, align 8
  %hash = alloca %struct._Hash*, align 8
  %ref10 = alloca %struct._HashRef*, align 8
  %hash11 = alloca %struct._Hash*, align 8
  %array = alloca %struct._Array, align 8
  %hash_ref = alloca %union.UnionType, align 8
  %agg.tmp = alloca %union.UnionType, align 8
  %ref25 = alloca %struct._HashRef*, align 8
  %hash28 = alloca %struct._Hash*, align 8
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 8
  store %struct._String* %key, %struct._String** %key.addr, align 8
  store %union.UnionType* @undef, %union.UnionType** %ret, align 8
  %0 = load %union.UnionType** %o.addr, align 8
  %o1 = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o1, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %3 = load %union.UnionType** %o.addr, align 8
  %o3 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o3, align 8
  %5 = ptrtoint i8* %4 to i64
  %and4 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and4, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.default [
    i64 6, label %sw.bb
    i64 7, label %sw.bb9
    i64 8, label %sw.bb9
    i64 1, label %sw.bb18
    i64 0, label %sw.bb18
    i64 11, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %union.UnionType** %o.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %xor = xor i64 %8, -2814749767106560
  %9 = inttoptr i64 %xor to %struct._HashRef*
  store %struct._HashRef* %9, %struct._HashRef** %ref, align 8
  %10 = load %struct._HashRef** %ref, align 8
  %v = getelementptr inbounds %struct._HashRef* %10, i32 0, i32 1
  %o6 = bitcast %union.UnionType* %v to i8**
  %11 = load i8** %o6, align 8
  %12 = ptrtoint i8* %11 to i64
  %xor7 = xor i64 %12, -3096224743817216
  %13 = inttoptr i64 %xor7 to %struct._Hash*
  store %struct._Hash* %13, %struct._Hash** %hash, align 8
  %14 = load %struct._String** %key.addr, align 8
  %hash8 = getelementptr inbounds %struct._String* %14, i32 0, i32 3
  %15 = load i64* %hash8, align 8
  %16 = load %struct._Hash** %hash, align 8
  %table = getelementptr inbounds %struct._Hash* %16, i32 0, i32 1
  %17 = load %union.UnionType** %table, align 8
  %arrayidx = getelementptr inbounds %union.UnionType* %17, i64 %15
  store %union.UnionType* %arrayidx, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry
  %18 = load %union.UnionType** %o.addr, align 8
  %call = call %struct._HashRef* @dynamic_hash_ref_cast_code(%union.UnionType* %18)
  store %struct._HashRef* %call, %struct._HashRef** %ref10, align 8
  %19 = load %struct._HashRef** %ref10, align 8
  %v12 = getelementptr inbounds %struct._HashRef* %19, i32 0, i32 1
  %o13 = bitcast %union.UnionType* %v12 to i8**
  %20 = load i8** %o13, align 8
  %21 = ptrtoint i8* %20 to i64
  %xor14 = xor i64 %21, -3096224743817216
  %22 = inttoptr i64 %xor14 to %struct._Hash*
  store %struct._Hash* %22, %struct._Hash** %hash11, align 8
  %23 = load %struct._String** %key.addr, align 8
  %hash15 = getelementptr inbounds %struct._String* %23, i32 0, i32 3
  %24 = load i64* %hash15, align 8
  %25 = load %struct._Hash** %hash11, align 8
  %table16 = getelementptr inbounds %struct._Hash* %25, i32 0, i32 1
  %26 = load %union.UnionType** %table16, align 8
  %arrayidx17 = getelementptr inbounds %union.UnionType* %26, i64 %24
  store %union.UnionType* %arrayidx17, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry, %entry, %entry
  %size = getelementptr inbounds %struct._Array* %array, i32 0, i32 2
  store i64 0, i64* %size, align 8
  %list = getelementptr inbounds %struct._Array* %array, i32 0, i32 1
  store %union.UnionType** null, %union.UnionType*** %list, align 8
  %call19 = call i64 @new_Hash(%struct._Array* %array)
  %coerce.dive1 = bitcast %union.UnionType* %agg.tmp to double*
  %27 = bitcast double* %coerce.dive1 to i64*
  store i64 %call19, i64* %27, align 1
  %coerce.dive202 = bitcast %union.UnionType* %agg.tmp to double*
  %28 = bitcast double* %coerce.dive202 to i64*
  %29 = load i64* %28, align 1
  %30 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %30) #3
  %31 = bitcast %union.UnionType* %hash.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %31) #3
  %32 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %32) #3
  %33 = bitcast %struct._HashRef** %o.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %33) #3
  %coerce.dive1.i = bitcast %union.UnionType* %hash.i to double*
  %34 = bitcast double* %coerce.dive1.i to i64*
  store i64 %29, i64* %34, align 1
  %35 = load i32* @count, align 4
  %inc.i.i = add nsw i32 %35, 1
  store i32 %inc.i.i, i32* @count, align 4
  %36 = load i32* @count, align 4
  %idxprom.i.i = sext i32 %36 to i64
  %37 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i.i = getelementptr inbounds %struct._Object** %37, i64 %idxprom.i.i
  %38 = load %struct._Object** %arrayidx.i.i, align 8
  %39 = bitcast %struct._Object* %38 to %struct._HashRef*
  store %struct._HashRef* %39, %struct._HashRef** %o.i, align 8
  %40 = load %struct._HashRef** %o.i, align 8
  %v.i = getelementptr inbounds %struct._HashRef* %40, i32 0, i32 1
  %41 = bitcast %union.UnionType* %v.i to i8*
  %42 = bitcast %union.UnionType* %hash.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 8, i1 false) #3
  %43 = load %struct._HashRef** %o.i, align 8
  %44 = ptrtoint %struct._HashRef* %43 to i64
  %or.i = or i64 %44, -4503599627370496
  %or1.i = or i64 %or.i, 1688849860263936
  %45 = inttoptr i64 %or1.i to i8*
  %o2.i = bitcast %union.UnionType* %ret.i to i8**
  store i8* %45, i8** %o2.i, align 8
  %46 = bitcast %union.UnionType* %retval.i to i8*
  %47 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false) #3
  %coerce.dive32.i = bitcast %union.UnionType* %retval.i to double*
  %48 = bitcast double* %coerce.dive32.i to i64*
  %49 = load i64* %48, align 1
  %50 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %50) #3
  %51 = bitcast %union.UnionType* %hash.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %51) #3
  %52 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %52) #3
  %53 = bitcast %struct._HashRef** %o.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %53) #3
  %coerce.dive223 = bitcast %union.UnionType* %hash_ref to double*
  %54 = bitcast double* %coerce.dive223 to i64*
  store i64 %49, i64* %54, align 1
  %o23 = bitcast %union.UnionType* %hash_ref to i8**
  %55 = load i8** %o23, align 8
  %56 = load %union.UnionType** %o.addr, align 8
  %o24 = bitcast %union.UnionType* %56 to i8**
  store i8* %55, i8** %o24, align 8
  %o26 = bitcast %union.UnionType* %hash_ref to i8**
  %57 = load i8** %o26, align 8
  %58 = ptrtoint i8* %57 to i64
  %xor27 = xor i64 %58, -2814749767106560
  %59 = inttoptr i64 %xor27 to %struct._HashRef*
  store %struct._HashRef* %59, %struct._HashRef** %ref25, align 8
  %60 = load %struct._HashRef** %ref25, align 8
  %v29 = getelementptr inbounds %struct._HashRef* %60, i32 0, i32 1
  %o30 = bitcast %union.UnionType* %v29 to i8**
  %61 = load i8** %o30, align 8
  %62 = ptrtoint i8* %61 to i64
  %xor31 = xor i64 %62, -3096224743817216
  %63 = inttoptr i64 %xor31 to %struct._Hash*
  store %struct._Hash* %63, %struct._Hash** %hash28, align 8
  %64 = load %struct._String** %key.addr, align 8
  %65 = load %struct._Hash** %hash28, align 8
  %keys = getelementptr inbounds %struct._Hash* %65, i32 0, i32 2
  %66 = load %struct._String*** %keys, align 8
  %arrayidx324 = bitcast %struct._String** %66 to %struct._String**
  store %struct._String* %64, %struct._String** %arrayidx324, align 8
  %67 = load %struct._Hash** %hash28, align 8
  %size33 = getelementptr inbounds %struct._Hash* %67, i32 0, i32 3
  store i64 1, i64* %size33, align 8
  %68 = load %struct._String** %key.addr, align 8
  %hash34 = getelementptr inbounds %struct._String* %68, i32 0, i32 3
  %69 = load i64* %hash34, align 8
  %70 = load %struct._Hash** %hash28, align 8
  %table35 = getelementptr inbounds %struct._Hash* %70, i32 0, i32 1
  %71 = load %union.UnionType** %table35, align 8
  %arrayidx36 = getelementptr inbounds %union.UnionType* %71, i64 %69
  store %union.UnionType* %arrayidx36, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %72 = load %struct.__sFILE** @__stderrp, align 8
  %73 = load %union.UnionType** %o.addr, align 8
  %o37 = bitcast %union.UnionType* %73 to i8**
  %74 = load i8** %o37, align 8
  %75 = ptrtoint i8* %74 to i64
  %and38 = and i64 %75, -4503599627370496
  %cmp39 = icmp eq i64 %and38, -4503599627370496
  %conv40 = zext i1 %cmp39 to i32
  %conv41 = sext i32 %conv40 to i64
  %76 = load %union.UnionType** %o.addr, align 8
  %o42 = bitcast %union.UnionType* %76 to i8**
  %77 = load i8** %o42, align 8
  %78 = ptrtoint i8* %77 to i64
  %and43 = and i64 %78, 4222124650659840
  %shr44 = lshr i64 %and43, 48
  %mul45 = mul i64 %conv41, %shr44
  %call46 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %72, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul45)
  call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.HashRef_get, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 520, i8* getelementptr inbounds ([33 x i8]* @.str38, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb9, %sw.bb
  %79 = load %union.UnionType** %ret, align 8
  ret %union.UnionType* %79
}

; Function Attrs: nounwind ssp uwtable
define %struct._HashRef* @dynamic_hash_ref_cast_code(%union.UnionType* %o) #0 {
entry:
  %o.addr = alloca %union.UnionType*, align 8
  %ret = alloca %struct._HashRef*, align 8
  %object = alloca %struct._Object*, align 8
  %blessed = alloca %struct._BlessedObject*, align 8
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 8
  store %struct._HashRef* null, %struct._HashRef** %ret, align 8
  %0 = load %union.UnionType** %o.addr, align 8
  %o1 = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o1, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %3 = load %union.UnionType** %o.addr, align 8
  %o3 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o3, align 8
  %5 = ptrtoint i8* %4 to i64
  %and4 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and4, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.default [
    i64 6, label %sw.bb
    i64 7, label %sw.bb6
    i64 8, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %union.UnionType** %o.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %xor = xor i64 %8, -2814749767106560
  %9 = inttoptr i64 %xor to %struct._HashRef*
  store %struct._HashRef* %9, %struct._HashRef** %ret, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %10 = load %union.UnionType** %o.addr, align 8
  %o7 = bitcast %union.UnionType* %10 to i8**
  %11 = load i8** %o7, align 8
  %12 = ptrtoint i8* %11 to i64
  %xor8 = xor i64 %12, -2533274790395904
  %13 = inttoptr i64 %xor8 to %struct._Object*
  store %struct._Object* %13, %struct._Object** %object, align 8
  %14 = load %struct._Object** %object, align 8
  %v = getelementptr inbounds %struct._Object* %14, i32 0, i32 1
  %call = call %struct._HashRef* @dynamic_hash_ref_cast_code(%union.UnionType* %v)
  store %struct._HashRef* %call, %struct._HashRef** %ret, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %15 = load %union.UnionType** %o.addr, align 8
  %o10 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o10, align 8
  %17 = ptrtoint i8* %16 to i64
  %xor11 = xor i64 %17, -2251799813685248
  %18 = inttoptr i64 %xor11 to %struct._BlessedObject*
  store %struct._BlessedObject* %18, %struct._BlessedObject** %blessed, align 8
  %19 = load %struct._BlessedObject** %blessed, align 8
  %members = getelementptr inbounds %struct._BlessedObject* %19, i32 0, i32 1
  %o12 = bitcast %union.UnionType* %members to i8**
  %20 = load i8** %o12, align 8
  %21 = ptrtoint i8* %20 to i64
  %xor13 = xor i64 %21, -2814749767106560
  %22 = inttoptr i64 %xor13 to %struct._HashRef*
  store %struct._HashRef* %22, %struct._HashRef** %ret, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %23 = load %struct.__sFILE** @__stderrp, align 8
  %24 = load %union.UnionType** %o.addr, align 8
  %o14 = bitcast %union.UnionType* %24 to i8**
  %25 = load i8** %o14, align 8
  %26 = ptrtoint i8* %25 to i64
  %and15 = and i64 %26, -4503599627370496
  %cmp16 = icmp eq i64 %and15, -4503599627370496
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = sext i32 %conv17 to i64
  %27 = load %union.UnionType** %o.addr, align 8
  %o19 = bitcast %union.UnionType* %27 to i8**
  %28 = load i8** %o19, align 8
  %29 = ptrtoint i8* %28 to i64
  %and20 = and i64 %29, 4222124650659840
  %shr21 = lshr i64 %and20, 48
  %mul22 = mul i64 %conv18, %shr21
  %call23 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul22)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb6, %sw.bb
  %30 = load %struct._HashRef** %ret, align 8
  ret %struct._HashRef* %30
}

; Function Attrs: nounwind ssp uwtable
define i64 @new_Hash(%struct._Array* %array) #0 {
cond.end:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %retval = alloca %union.UnionType, align 8
  %array.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %hash = alloca %struct._Hash*, align 8
  %size = alloca i64, align 8
  %key_n = alloca i32, align 4
  %i = alloca i64, align 8
  %list = alloca %union.UnionType**, align 8
  %key = alloca %struct._String*, align 8
  %value = alloca %union.UnionType*, align 8
  %o29 = alloca %struct._Object*, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  %call = call i8* @calloc(i64 32, i64 1)
  %0 = bitcast i8* %call to %struct._Hash*
  store %struct._Hash* %0, %struct._Hash** %hash, align 8
  %call1 = call i8* @calloc(i64 8, i64 512)
  %1 = bitcast i8* %call1 to %union.UnionType*
  %2 = load %struct._Hash** %hash, align 8
  %table = getelementptr inbounds %struct._Hash* %2, i32 0, i32 1
  store %union.UnionType* %1, %union.UnionType** %table, align 8
  %3 = load %struct._Hash** %hash, align 8
  %table2 = getelementptr inbounds %struct._Hash* %3, i32 0, i32 1
  %4 = load %union.UnionType** %table2, align 8
  %5 = bitcast %union.UnionType* %4 to i8*
  %6 = load %struct._Hash** %hash, align 8
  %table6 = getelementptr inbounds %struct._Hash* %6, i32 0, i32 1
  %7 = load %union.UnionType** %table6, align 8
  %8 = bitcast %union.UnionType* %7 to i8*
  %9 = load %union.UnionType** @base_hash_table, align 8
  %10 = bitcast %union.UnionType* %9 to i8*
  %11 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %11) #3
  %12 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %12) #3
  %13 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %13) #3
  store i8* %8, i8** %__dest.addr.i, align 8
  store i8* %10, i8** %__src.addr.i, align 8
  store i64 4096, i64* %__len.addr.i, align 8
  %14 = load i8** %__dest.addr.i, align 8
  %15 = load i8** %__src.addr.i, align 8
  %16 = load i64* %__len.addr.i, align 8
  %17 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %14, i8* %15, i64 %16, i64 -1) #3
  %18 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %18) #3
  %19 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %19) #3
  %20 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %20) #3
  %call8 = call i8* @calloc(i64 8, i64 512)
  %21 = bitcast i8* %call8 to %struct._String**
  %22 = load %struct._Hash** %hash, align 8
  %keys = getelementptr inbounds %struct._Hash* %22, i32 0, i32 2
  store %struct._String** %21, %struct._String*** %keys, align 8
  %23 = load %struct._Array** %array.addr, align 8
  %size9 = getelementptr inbounds %struct._Array* %23, i32 0, i32 2
  %24 = load i64* %size9, align 8
  store i64 %24, i64* %size, align 8
  store i32 0, i32* %key_n, align 4
  store i64 0, i64* %i, align 8
  %25 = load %struct._Array** %array.addr, align 8
  %list10 = getelementptr inbounds %struct._Array* %25, i32 0, i32 1
  %26 = load %union.UnionType*** %list10, align 8
  store %union.UnionType** %26, %union.UnionType*** %list, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %27 = load i64* %i, align 8
  %28 = load i64* %size, align 8
  %cmp11 = icmp ult i64 %27, %28
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64* %i, align 8
  %30 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %30, i64 %29
  %31 = load %union.UnionType** %arrayidx, align 8
  %o = bitcast %union.UnionType* %31 to i8**
  %32 = load i8** %o, align 8
  %33 = ptrtoint i8* %32 to i64
  %xor = xor i64 %33, -3940649673949184
  %34 = inttoptr i64 %xor to %struct._String*
  store %struct._String* %34, %struct._String** %key, align 8
  %35 = load %struct._String** %key, align 8
  %36 = load i32* %key_n, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct._Hash** %hash, align 8
  %keys12 = getelementptr inbounds %struct._Hash* %37, i32 0, i32 2
  %38 = load %struct._String*** %keys12, align 8
  %arrayidx13 = getelementptr inbounds %struct._String** %38, i64 %idxprom
  store %struct._String* %35, %struct._String** %arrayidx13, align 8
  %39 = load i64* %i, align 8
  %add = add i64 %39, 1
  %40 = load i64* %size, align 8
  %cmp14 = icmp ult i64 %add, %40
  br i1 %cmp14, label %cond.true15, label %cond.end19

cond.true15:                                      ; preds = %for.body
  %41 = load i64* %i, align 8
  %add16 = add i64 %41, 1
  %42 = load %union.UnionType*** %list, align 8
  %arrayidx17 = getelementptr inbounds %union.UnionType** %42, i64 %add16
  %43 = load %union.UnionType** %arrayidx17, align 8
  br label %cond.end19

cond.end19:                                       ; preds = %for.body, %cond.true15
  %cond20 = phi %union.UnionType* [ %43, %cond.true15 ], [ null, %for.body ]
  store %union.UnionType* %cond20, %union.UnionType** %value, align 8
  %44 = load %union.UnionType** %value, align 8
  %tobool = icmp ne %union.UnionType* %44, null
  br i1 %tobool, label %if.end, label %for.inc

if.end:                                           ; preds = %cond.end19
  %45 = load %union.UnionType** %value, align 8
  %o21 = bitcast %union.UnionType* %45 to i8**
  %46 = load i8** %o21, align 8
  %47 = ptrtoint i8* %46 to i64
  %and = and i64 %47, -4503599627370496
  %cmp22 = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp22 to i32
  %conv23 = sext i32 %conv to i64
  %48 = load %union.UnionType** %value, align 8
  %o24 = bitcast %union.UnionType* %48 to i8**
  %49 = load i8** %o24, align 8
  %50 = ptrtoint i8* %49 to i64
  %and25 = and i64 %50, 4222124650659840
  %shr = lshr i64 %and25, 48
  %mul = mul i64 %conv23, %shr
  %cmp26 = icmp eq i64 %mul, 7
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end
  %51 = load %union.UnionType** %value, align 8
  %o30 = bitcast %union.UnionType* %51 to i8**
  %52 = load i8** %o30, align 8
  %53 = ptrtoint i8* %52 to i64
  %xor31 = xor i64 %53, -2533274790395904
  %54 = inttoptr i64 %xor31 to %struct._Object*
  store %struct._Object* %54, %struct._Object** %o29, align 8
  %55 = load %struct._Object** %o29, align 8
  %v = getelementptr inbounds %struct._Object* %55, i32 0, i32 1
  store %union.UnionType* %v, %union.UnionType** %value, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end
  %56 = load %union.UnionType** %value, align 8
  %o33 = bitcast %union.UnionType* %56 to i8**
  %57 = load i8** %o33, align 8
  %58 = ptrtoint i8* %57 to i64
  %and34 = and i64 %58, -4503599627370496
  %cmp35 = icmp eq i64 %and34, -4503599627370496
  %conv36 = zext i1 %cmp35 to i32
  %conv37 = sext i32 %conv36 to i64
  %59 = load %union.UnionType** %value, align 8
  %o38 = bitcast %union.UnionType* %59 to i8**
  %60 = load i8** %o38, align 8
  %61 = ptrtoint i8* %60 to i64
  %and39 = and i64 %61, 4222124650659840
  %shr40 = lshr i64 %and39, 48
  %mul41 = mul i64 %conv37, %shr40
  %cmp42 = icmp eq i64 %mul41, 0
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end32
  %62 = load %union.UnionType** %value, align 8
  %d = bitcast %union.UnionType* %62 to double*
  %63 = load double* %d, align 8
  %64 = load %struct._String** %key, align 8
  %hash45 = getelementptr inbounds %struct._String* %64, i32 0, i32 3
  %65 = load i64* %hash45, align 8
  %66 = load %struct._Hash** %hash, align 8
  %table46 = getelementptr inbounds %struct._Hash* %66, i32 0, i32 1
  %67 = load %union.UnionType** %table46, align 8
  %arrayidx47 = getelementptr inbounds %union.UnionType* %67, i64 %65
  %d48 = bitcast %union.UnionType* %arrayidx47 to double*
  store double %63, double* %d48, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end32
  %68 = load %union.UnionType** %value, align 8
  %o49 = bitcast %union.UnionType* %68 to i8**
  %69 = load i8** %o49, align 8
  %70 = load %struct._String** %key, align 8
  %hash50 = getelementptr inbounds %struct._String* %70, i32 0, i32 3
  %71 = load i64* %hash50, align 8
  %72 = load %struct._Hash** %hash, align 8
  %table51 = getelementptr inbounds %struct._Hash* %72, i32 0, i32 1
  %73 = load %union.UnionType** %table51, align 8
  %arrayidx52 = getelementptr inbounds %union.UnionType* %73, i64 %71
  %o53 = bitcast %union.UnionType* %arrayidx52 to i8**
  store i8* %69, i8** %o53, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then44, %if.else, %cond.end19
  %74 = load i64* %i, align 8
  %add55 = add i64 %74, 2
  store i64 %add55, i64* %i, align 8
  %75 = load i32* %key_n, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %key_n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load i32* %key_n, align 4
  %conv56 = sext i32 %76 to i64
  %77 = load %struct._Hash** %hash, align 8
  %size57 = getelementptr inbounds %struct._Hash* %77, i32 0, i32 3
  store i64 %conv56, i64* %size57, align 8
  %78 = load %struct._Hash** %hash, align 8
  %79 = ptrtoint %struct._Hash* %78 to i64
  %or = or i64 %79, -4503599627370496
  %or58 = or i64 %or, 1407374883553280
  %80 = inttoptr i64 %or58 to i8*
  %o59 = bitcast %union.UnionType* %ret to i8**
  store i8* %80, i8** %o59, align 8
  %81 = bitcast %union.UnionType* %retval to i8*
  %82 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %83 = bitcast double* %coerce.dive1 to i64*
  %84 = load i64* %83, align 1
  ret i64 %84
}

; Function Attrs: nounwind ssp uwtable
define %union.UnionType* @Array_get(%struct._Array* %array, i32 %idx) #0 {
entry:
  %array.addr = alloca %struct._Array*, align 8
  %idx.addr = alloca i32, align 4
  %size = alloca i64, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct._Array** %array.addr, align 8
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  %2 = load i64* %size, align 8
  %3 = load i32* %idx.addr, align 4
  %conv = sext i32 %3 to i64
  %cmp = icmp ule i64 %2, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._Array** %array.addr, align 8
  %5 = load i32* %idx.addr, align 4
  %add = add nsw i32 %5, 1
  %conv3 = sext i32 %add to i64
  call void @Array_grow(%struct._Array* %4, i64 %conv3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32* %idx.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._Array** %array.addr, align 8
  %list = getelementptr inbounds %struct._Array* %7, i32 0, i32 1
  %8 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %8, i64 %idxprom
  %9 = load %union.UnionType** %arrayidx, align 8
  ret %union.UnionType* %9
}

; Function Attrs: nounwind ssp uwtable
define %union.UnionType* @ArrayRef_get(%union.UnionType* %o, i32 %idx) #0 {
entry:
  %retval.i30 = alloca %union.UnionType, align 8
  %array.i31 = alloca %union.UnionType, align 8
  %ret.i32 = alloca %union.UnionType, align 8
  %o.i33 = alloca %struct._ArrayRef*, align 8
  %array.addr.i17 = alloca %struct._Array*, align 8
  %idx.addr.i18 = alloca i32, align 4
  %size.i19 = alloca i64, align 8
  %retval.i = alloca %union.UnionType, align 8
  %list.addr.i = alloca %union.UnionType**, align 8
  %size.addr.i = alloca i64, align 8
  %ret.i = alloca %union.UnionType, align 8
  %array.i = alloca %struct._Array*, align 8
  %array.addr.i4 = alloca %struct._Array*, align 8
  %idx.addr.i5 = alloca i32, align 4
  %size.i6 = alloca i64, align 8
  %array.addr.i = alloca %struct._Array*, align 8
  %idx.addr.i = alloca i32, align 4
  %size.i = alloca i64, align 8
  %o.addr = alloca %union.UnionType*, align 8
  %idx.addr = alloca i32, align 4
  %ret = alloca %union.UnionType*, align 8
  %ref = alloca %struct._ArrayRef*, align 8
  %array = alloca %struct._Array*, align 8
  %ref9 = alloca %struct._ArrayRef*, align 8
  %array11 = alloca %struct._Array*, align 8
  %boxed_array = alloca %union.UnionType, align 8
  %array_ref = alloca %union.UnionType, align 8
  %array21 = alloca %struct._Array*, align 8
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store %union.UnionType* @undef, %union.UnionType** %ret, align 8
  %0 = load %union.UnionType** %o.addr, align 8
  %o1 = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o1, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %3 = load %union.UnionType** %o.addr, align 8
  %o3 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o3, align 8
  %5 = ptrtoint i8* %4 to i64
  %and4 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and4, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.default [
    i64 4, label %sw.bb
    i64 7, label %sw.bb8
    i64 1, label %sw.bb16
    i64 0, label %sw.bb16
    i64 11, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %union.UnionType** %o.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %xor = xor i64 %8, -3377699720527872
  %9 = inttoptr i64 %xor to %struct._ArrayRef*
  store %struct._ArrayRef* %9, %struct._ArrayRef** %ref, align 8
  %10 = load %struct._ArrayRef** %ref, align 8
  %v = getelementptr inbounds %struct._ArrayRef* %10, i32 0, i32 1
  %o6 = bitcast %union.UnionType* %v to i8**
  %11 = load i8** %o6, align 8
  %12 = ptrtoint i8* %11 to i64
  %xor7 = xor i64 %12, -3659174697238528
  %13 = inttoptr i64 %xor7 to %struct._Array*
  store %struct._Array* %13, %struct._Array** %array, align 8
  %14 = load %struct._Array** %array, align 8
  %15 = load i32* %idx.addr, align 4
  %16 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %16) #3
  %17 = bitcast i32* %idx.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %17) #3
  %18 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %18) #3
  store %struct._Array* %14, %struct._Array** %array.addr.i, align 8
  store i32 %15, i32* %idx.addr.i, align 4
  %19 = load %struct._Array** %array.addr.i, align 8
  %size1.i = getelementptr inbounds %struct._Array* %19, i32 0, i32 2
  %20 = load i64* %size1.i, align 8
  store i64 %20, i64* %size.i, align 8
  %21 = load i64* %size.i, align 8
  %22 = load i32* %idx.addr.i, align 4
  %conv.i = sext i32 %22 to i64
  %cmp.i = icmp ule i64 %21, %conv.i
  br i1 %cmp.i, label %if.then.i, label %Array_get.exit

if.then.i:                                        ; preds = %sw.bb
  %23 = load %struct._Array** %array.addr.i, align 8
  %24 = load i32* %idx.addr.i, align 4
  %add.i = add nsw i32 %24, 1
  %conv3.i = sext i32 %add.i to i64
  call void @Array_grow(%struct._Array* %23, i64 %conv3.i) #3
  br label %Array_get.exit

Array_get.exit:                                   ; preds = %sw.bb, %if.then.i
  %25 = load i32* %idx.addr.i, align 4
  %idxprom.i = sext i32 %25 to i64
  %26 = load %struct._Array** %array.addr.i, align 8
  %list.i = getelementptr inbounds %struct._Array* %26, i32 0, i32 1
  %27 = load %union.UnionType*** %list.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType** %27, i64 %idxprom.i
  %28 = load %union.UnionType** %arrayidx.i, align 8
  %29 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %29) #3
  %30 = bitcast i32* %idx.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %30) #3
  %31 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %31) #3
  store %union.UnionType* %28, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %32 = load %union.UnionType** %o.addr, align 8
  %call10 = call %struct._ArrayRef* @dynamic_array_ref_cast_code(%union.UnionType* %32)
  store %struct._ArrayRef* %call10, %struct._ArrayRef** %ref9, align 8
  %33 = load %struct._ArrayRef** %ref9, align 8
  %v12 = getelementptr inbounds %struct._ArrayRef* %33, i32 0, i32 1
  %o13 = bitcast %union.UnionType* %v12 to i8**
  %34 = load i8** %o13, align 8
  %35 = ptrtoint i8* %34 to i64
  %xor14 = xor i64 %35, -3659174697238528
  %36 = inttoptr i64 %xor14 to %struct._Array*
  store %struct._Array* %36, %struct._Array** %array11, align 8
  %37 = load %struct._Array** %array11, align 8
  %38 = load i32* %idx.addr, align 4
  %39 = bitcast %struct._Array** %array.addr.i4 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %39) #3
  %40 = bitcast i32* %idx.addr.i5 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %40) #3
  %41 = bitcast i64* %size.i6 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %41) #3
  store %struct._Array* %37, %struct._Array** %array.addr.i4, align 8
  store i32 %38, i32* %idx.addr.i5, align 4
  %42 = load %struct._Array** %array.addr.i4, align 8
  %size1.i7 = getelementptr inbounds %struct._Array* %42, i32 0, i32 2
  %43 = load i64* %size1.i7, align 8
  store i64 %43, i64* %size.i6, align 8
  %44 = load i64* %size.i6, align 8
  %45 = load i32* %idx.addr.i5, align 4
  %conv.i8 = sext i32 %45 to i64
  %cmp.i9 = icmp ule i64 %44, %conv.i8
  br i1 %cmp.i9, label %if.then.i12, label %Array_get.exit16

if.then.i12:                                      ; preds = %sw.bb8
  %46 = load %struct._Array** %array.addr.i4, align 8
  %47 = load i32* %idx.addr.i5, align 4
  %add.i10 = add nsw i32 %47, 1
  %conv3.i11 = sext i32 %add.i10 to i64
  call void @Array_grow(%struct._Array* %46, i64 %conv3.i11) #3
  br label %Array_get.exit16

Array_get.exit16:                                 ; preds = %sw.bb8, %if.then.i12
  %48 = load i32* %idx.addr.i5, align 4
  %idxprom.i13 = sext i32 %48 to i64
  %49 = load %struct._Array** %array.addr.i4, align 8
  %list.i14 = getelementptr inbounds %struct._Array* %49, i32 0, i32 1
  %50 = load %union.UnionType*** %list.i14, align 8
  %arrayidx.i15 = getelementptr inbounds %union.UnionType** %50, i64 %idxprom.i13
  %51 = load %union.UnionType** %arrayidx.i15, align 8
  %52 = bitcast %struct._Array** %array.addr.i4 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %52) #3
  %53 = bitcast i32* %idx.addr.i5 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %53) #3
  %54 = bitcast i64* %size.i6 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %54) #3
  store %union.UnionType* %51, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry, %entry, %entry
  %55 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %55) #3
  %56 = bitcast %union.UnionType*** %list.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %56) #3
  %57 = bitcast i64* %size.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %57) #3
  %58 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %58) #3
  %59 = bitcast %struct._Array** %array.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %59) #3
  store %union.UnionType** null, %union.UnionType*** %list.addr.i, align 8
  store i64 0, i64* %size.addr.i, align 8
  %60 = load i32* @count, align 4
  %inc.i.i = add nsw i32 %60, 1
  store i32 %inc.i.i, i32* @count, align 4
  %61 = load i32* @count, align 4
  %idxprom.i.i = sext i32 %61 to i64
  %62 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i.i = getelementptr inbounds %struct._Object** %62, i64 %idxprom.i.i
  %63 = load %struct._Object** %arrayidx.i.i, align 8
  %64 = bitcast %struct._Object* %63 to %struct._Array*
  store %struct._Array* %64, %struct._Array** %array.i, align 8
  %65 = load %union.UnionType*** %list.addr.i, align 8
  %66 = load %struct._Array** %array.i, align 8
  %list1.i = getelementptr inbounds %struct._Array* %66, i32 0, i32 1
  store %union.UnionType** %65, %union.UnionType*** %list1.i, align 8
  %67 = load i64* %size.addr.i, align 8
  %68 = load %struct._Array** %array.i, align 8
  %size2.i = getelementptr inbounds %struct._Array* %68, i32 0, i32 2
  store i64 %67, i64* %size2.i, align 8
  %69 = load %struct._Array** %array.i, align 8
  %70 = ptrtoint %struct._Array* %69 to i64
  %or.i = or i64 %70, -4503599627370496
  %or3.i = or i64 %or.i, 844424930131968
  %71 = inttoptr i64 %or3.i to i8*
  %o.i = bitcast %union.UnionType* %ret.i to i8**
  store i8* %71, i8** %o.i, align 8
  %72 = bitcast %union.UnionType* %retval.i to i8*
  %73 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i = bitcast %union.UnionType* %retval.i to double*
  %74 = bitcast double* %coerce.dive1.i to i64*
  %75 = load i64* %74, align 1
  %76 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %76) #3
  %77 = bitcast %union.UnionType*** %list.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %77) #3
  %78 = bitcast i64* %size.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %78) #3
  %79 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %79) #3
  %80 = bitcast %struct._Array** %array.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %80) #3
  %coerce.dive1 = bitcast %union.UnionType* %boxed_array to double*
  %81 = bitcast double* %coerce.dive1 to i64*
  store i64 %75, i64* %81, align 1
  %coerce.dive182 = bitcast %union.UnionType* %boxed_array to double*
  %82 = bitcast double* %coerce.dive182 to i64*
  %83 = load i64* %82, align 1
  %84 = bitcast %union.UnionType* %retval.i30 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %84) #3
  %85 = bitcast %union.UnionType* %array.i31 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %85) #3
  %86 = bitcast %union.UnionType* %ret.i32 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %86) #3
  %87 = bitcast %struct._ArrayRef** %o.i33 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %87) #3
  %coerce.dive1.i34 = bitcast %union.UnionType* %array.i31 to double*
  %88 = bitcast double* %coerce.dive1.i34 to i64*
  store i64 %83, i64* %88, align 1
  %89 = load i32* @count, align 4
  %inc.i.i35 = add nsw i32 %89, 1
  store i32 %inc.i.i35, i32* @count, align 4
  %90 = load i32* @count, align 4
  %idxprom.i.i36 = sext i32 %90 to i64
  %91 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i.i37 = getelementptr inbounds %struct._Object** %91, i64 %idxprom.i.i36
  %92 = load %struct._Object** %arrayidx.i.i37, align 8
  %93 = bitcast %struct._Object* %92 to %struct._ArrayRef*
  store %struct._ArrayRef* %93, %struct._ArrayRef** %o.i33, align 8
  %94 = load %struct._ArrayRef** %o.i33, align 8
  %v.i = getelementptr inbounds %struct._ArrayRef* %94, i32 0, i32 1
  %95 = bitcast %union.UnionType* %v.i to i8*
  %96 = bitcast %union.UnionType* %array.i31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 8, i32 8, i1 false) #3
  %97 = load %struct._ArrayRef** %o.i33, align 8
  %98 = ptrtoint %struct._ArrayRef* %97 to i64
  %or.i38 = or i64 %98, -4503599627370496
  %or1.i = or i64 %or.i38, 1125899906842624
  %99 = inttoptr i64 %or1.i to i8*
  %o2.i = bitcast %union.UnionType* %ret.i32 to i8**
  store i8* %99, i8** %o2.i, align 8
  %100 = bitcast %union.UnionType* %retval.i30 to i8*
  %101 = bitcast %union.UnionType* %ret.i32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 8, i32 8, i1 false) #3
  %coerce.dive32.i = bitcast %union.UnionType* %retval.i30 to double*
  %102 = bitcast double* %coerce.dive32.i to i64*
  %103 = load i64* %102, align 1
  %104 = bitcast %union.UnionType* %retval.i30 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %104) #3
  %105 = bitcast %union.UnionType* %array.i31 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %105) #3
  %106 = bitcast %union.UnionType* %ret.i32 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %106) #3
  %107 = bitcast %struct._ArrayRef** %o.i33 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %107) #3
  %coerce.dive203 = bitcast %union.UnionType* %array_ref to double*
  %108 = bitcast double* %coerce.dive203 to i64*
  store i64 %103, i64* %108, align 1
  %109 = load %union.UnionType** %o.addr, align 8
  %110 = bitcast %union.UnionType* %109 to i8*
  %111 = bitcast %union.UnionType* %array_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %111, i64 8, i32 8, i1 false)
  %o22 = bitcast %union.UnionType* %boxed_array to i8**
  %112 = load i8** %o22, align 8
  %113 = ptrtoint i8* %112 to i64
  %xor23 = xor i64 %113, -3659174697238528
  %114 = inttoptr i64 %xor23 to %struct._Array*
  store %struct._Array* %114, %struct._Array** %array21, align 8
  %115 = load %struct._Array** %array21, align 8
  %116 = load i32* %idx.addr, align 4
  %117 = bitcast %struct._Array** %array.addr.i17 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %117) #3
  %118 = bitcast i32* %idx.addr.i18 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %118) #3
  %119 = bitcast i64* %size.i19 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %119) #3
  store %struct._Array* %115, %struct._Array** %array.addr.i17, align 8
  store i32 %116, i32* %idx.addr.i18, align 4
  %120 = load %struct._Array** %array.addr.i17, align 8
  %size1.i20 = getelementptr inbounds %struct._Array* %120, i32 0, i32 2
  %121 = load i64* %size1.i20, align 8
  store i64 %121, i64* %size.i19, align 8
  %122 = load i64* %size.i19, align 8
  %123 = load i32* %idx.addr.i18, align 4
  %conv.i21 = sext i32 %123 to i64
  %cmp.i22 = icmp ule i64 %122, %conv.i21
  br i1 %cmp.i22, label %if.then.i25, label %Array_get.exit29

if.then.i25:                                      ; preds = %sw.bb16
  %124 = load %struct._Array** %array.addr.i17, align 8
  %125 = load i32* %idx.addr.i18, align 4
  %add.i23 = add nsw i32 %125, 1
  %conv3.i24 = sext i32 %add.i23 to i64
  call void @Array_grow(%struct._Array* %124, i64 %conv3.i24) #3
  br label %Array_get.exit29

Array_get.exit29:                                 ; preds = %sw.bb16, %if.then.i25
  %126 = load i32* %idx.addr.i18, align 4
  %idxprom.i26 = sext i32 %126 to i64
  %127 = load %struct._Array** %array.addr.i17, align 8
  %list.i27 = getelementptr inbounds %struct._Array* %127, i32 0, i32 1
  %128 = load %union.UnionType*** %list.i27, align 8
  %arrayidx.i28 = getelementptr inbounds %union.UnionType** %128, i64 %idxprom.i26
  %129 = load %union.UnionType** %arrayidx.i28, align 8
  %130 = bitcast %struct._Array** %array.addr.i17 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %130) #3
  %131 = bitcast i32* %idx.addr.i18 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %131) #3
  %132 = bitcast i64* %size.i19 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %132) #3
  store %union.UnionType* %129, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %133 = load %struct.__sFILE** @__stderrp, align 8
  %134 = load %union.UnionType** %o.addr, align 8
  %o25 = bitcast %union.UnionType* %134 to i8**
  %135 = load i8** %o25, align 8
  %136 = ptrtoint i8* %135 to i64
  %and26 = and i64 %136, -4503599627370496
  %cmp27 = icmp eq i64 %and26, -4503599627370496
  %conv28 = zext i1 %cmp27 to i32
  %conv29 = sext i32 %conv28 to i64
  %137 = load %union.UnionType** %o.addr, align 8
  %o30 = bitcast %union.UnionType* %137 to i8**
  %138 = load i8** %o30, align 8
  %139 = ptrtoint i8* %138 to i64
  %and31 = and i64 %139, 4222124650659840
  %shr32 = lshr i64 %and31, 48
  %mul33 = mul i64 %conv29, %shr32
  %call34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %133, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul33)
  call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.ArrayRef_get, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 570, i8* getelementptr inbounds ([33 x i8]* @.str38, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %Array_get.exit29, %Array_get.exit16, %Array_get.exit
  %140 = load %union.UnionType** %ret, align 8
  ret %union.UnionType* %140
}

; Function Attrs: nounwind ssp uwtable
define %struct._ArrayRef* @dynamic_array_ref_cast_code(%union.UnionType* %o) #0 {
entry:
  %o.addr = alloca %union.UnionType*, align 8
  %ret = alloca %struct._ArrayRef*, align 8
  %object = alloca %struct._Object*, align 8
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 8
  store %struct._ArrayRef* null, %struct._ArrayRef** %ret, align 8
  %0 = load %union.UnionType** %o.addr, align 8
  %o1 = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o1, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %3 = load %union.UnionType** %o.addr, align 8
  %o3 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o3, align 8
  %5 = ptrtoint i8* %4 to i64
  %and4 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and4, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.default [
    i64 4, label %sw.bb
    i64 7, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %union.UnionType** %o.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %xor = xor i64 %8, -3377699720527872
  %9 = inttoptr i64 %xor to %struct._ArrayRef*
  store %struct._ArrayRef* %9, %struct._ArrayRef** %ret, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %10 = load %union.UnionType** %o.addr, align 8
  %o7 = bitcast %union.UnionType* %10 to i8**
  %11 = load i8** %o7, align 8
  %12 = ptrtoint i8* %11 to i64
  %xor8 = xor i64 %12, -2533274790395904
  %13 = inttoptr i64 %xor8 to %struct._Object*
  store %struct._Object* %13, %struct._Object** %object, align 8
  %14 = load %struct._Object** %object, align 8
  %v = getelementptr inbounds %struct._Object* %14, i32 0, i32 1
  %call = call %struct._ArrayRef* @dynamic_array_ref_cast_code(%union.UnionType* %v)
  store %struct._ArrayRef* %call, %struct._ArrayRef** %ret, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load %struct.__sFILE** @__stderrp, align 8
  %16 = load %union.UnionType** %o.addr, align 8
  %o9 = bitcast %union.UnionType* %16 to i8**
  %17 = load i8** %o9, align 8
  %18 = ptrtoint i8* %17 to i64
  %and10 = and i64 %18, -4503599627370496
  %cmp11 = icmp eq i64 %and10, -4503599627370496
  %conv12 = zext i1 %cmp11 to i32
  %conv13 = sext i32 %conv12 to i64
  %19 = load %union.UnionType** %o.addr, align 8
  %o14 = bitcast %union.UnionType* %19 to i8**
  %20 = load i8** %o14, align 8
  %21 = ptrtoint i8* %20 to i64
  %and15 = and i64 %21, 4222124650659840
  %shr16 = lshr i64 %and15, 48
  %mul17 = mul i64 %conv13, %shr16
  %call18 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  %22 = load %struct._ArrayRef** %ret, align 8
  ret %struct._ArrayRef* %22
}

; Function Attrs: nounwind ssp uwtable
define i64 @new_Array(%union.UnionType** %list, i64 %size) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %list.addr = alloca %union.UnionType**, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca %union.UnionType, align 8
  %array = alloca %struct._Array*, align 8
  store %union.UnionType** %list, %union.UnionType*** %list.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i32* @count, align 4
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, i32* @count, align 4
  %1 = load i32* @count, align 4
  %idxprom.i = sext i32 %1 to i64
  %2 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %2, i64 %idxprom.i
  %3 = load %struct._Object** %arrayidx.i, align 8
  %4 = bitcast %struct._Object* %3 to %struct._Array*
  store %struct._Array* %4, %struct._Array** %array, align 8
  %5 = load %union.UnionType*** %list.addr, align 8
  %6 = load %struct._Array** %array, align 8
  %list1 = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  store %union.UnionType** %5, %union.UnionType*** %list1, align 8
  %7 = load i64* %size.addr, align 8
  %8 = load %struct._Array** %array, align 8
  %size2 = getelementptr inbounds %struct._Array* %8, i32 0, i32 2
  store i64 %7, i64* %size2, align 8
  %9 = load %struct._Array** %array, align 8
  %10 = ptrtoint %struct._Array* %9 to i64
  %or = or i64 %10, -4503599627370496
  %or3 = or i64 %or, 844424930131968
  %11 = inttoptr i64 %or3 to i8*
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o, align 8
  %12 = bitcast %union.UnionType* %retval to i8*
  %13 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %14 = bitcast double* %coerce.dive1 to i64*
  %15 = load i64* %14, align 1
  ret i64 %15
}

; Function Attrs: nounwind ssp uwtable
define void @Array_set(%struct._Array* %array, i32 %idx, i64 %elem.coerce) #0 {
entry:
  %array.addr = alloca %struct._Array*, align 8
  %idx.addr = alloca i32, align 4
  %elem = alloca %union.UnionType, align 8
  %size = alloca i64, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %coerce.dive1 = bitcast %union.UnionType* %elem to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %elem.coerce, i64* %0, align 1
  %1 = load %struct._Array** %array.addr, align 8
  %size1 = getelementptr inbounds %struct._Array* %1, i32 0, i32 2
  %2 = load i64* %size1, align 8
  store i64 %2, i64* %size, align 8
  %3 = load i64* %size, align 8
  %4 = load i32* %idx.addr, align 4
  %conv = sext i32 %4 to i64
  %cmp = icmp ule i64 %3, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._Array** %array.addr, align 8
  %6 = load i32* %idx.addr, align 4
  %add = add nsw i32 %6, 1
  %conv3 = sext i32 %add to i64
  call void @Array_grow(%struct._Array* %5, i64 %conv3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32* %idx.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._Array** %array.addr, align 8
  %list = getelementptr inbounds %struct._Array* %8, i32 0, i32 1
  %9 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %9, i64 %idxprom
  store %union.UnionType* %elem, %union.UnionType** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @init_table() #0 {
entry:
  %table = alloca %union.UnionType*, align 8
  %i = alloca i64, align 8
  %call = call i8* @calloc(i64 8, i64 512)
  %0 = bitcast i8* %call to %union.UnionType*
  store %union.UnionType* %0, %union.UnionType** %table, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64* %i, align 8
  %cmp = icmp ult i64 %1, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64* %i, align 8
  %3 = load %union.UnionType** %table, align 8
  %arrayidx = getelementptr inbounds %union.UnionType* %3, i64 %2
  %4 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%union.UnionType* @undef to i8*), i64 8, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %union.UnionType** %table, align 8
  store %union.UnionType* %6, %union.UnionType** @base_hash_table, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @init_package_map() #0 {
cond.end:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %hash = alloca %struct._Hash*, align 8
  %call = call i8* @calloc(i64 32, i64 1)
  %0 = bitcast i8* %call to %struct._Hash*
  store %struct._Hash* %0, %struct._Hash** %hash, align 8
  %call1 = call i8* @calloc(i64 8, i64 512)
  %1 = bitcast i8* %call1 to %union.UnionType*
  %2 = load %struct._Hash** %hash, align 8
  %table = getelementptr inbounds %struct._Hash* %2, i32 0, i32 1
  store %union.UnionType* %1, %union.UnionType** %table, align 8
  %3 = load %struct._Hash** %hash, align 8
  %table2 = getelementptr inbounds %struct._Hash* %3, i32 0, i32 1
  %4 = load %union.UnionType** %table2, align 8
  %5 = bitcast %union.UnionType* %4 to i8*
  %6 = load %struct._Hash** %hash, align 8
  %table6 = getelementptr inbounds %struct._Hash* %6, i32 0, i32 1
  %7 = load %union.UnionType** %table6, align 8
  %8 = bitcast %union.UnionType* %7 to i8*
  %9 = load %union.UnionType** @base_hash_table, align 8
  %10 = bitcast %union.UnionType* %9 to i8*
  %11 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %11) #3
  %12 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %12) #3
  %13 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %13) #3
  store i8* %8, i8** %__dest.addr.i, align 8
  store i8* %10, i8** %__src.addr.i, align 8
  store i64 4096, i64* %__len.addr.i, align 8
  %14 = load i8** %__dest.addr.i, align 8
  %15 = load i8** %__src.addr.i, align 8
  %16 = load i64* %__len.addr.i, align 8
  %17 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %14, i8* %15, i64 %16, i64 -1) #3
  %18 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %18) #3
  %19 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %19) #3
  %20 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %20) #3
  %call8 = call i8* @calloc(i64 8, i64 512)
  %21 = bitcast i8* %call8 to %struct._String**
  %22 = load %struct._Hash** %hash, align 8
  %keys = getelementptr inbounds %struct._Hash* %22, i32 0, i32 2
  store %struct._String** %21, %struct._String*** %keys, align 8
  %23 = load %struct._Hash** %hash, align 8
  store %struct._Hash* %23, %struct._Hash** @pkg_map, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @global_init() #0 {
entry:
  %size.i = alloca i64, align 8
  %i.i4 = alloca i64, align 8
  %__dest.addr.i.i = alloca i8*, align 8
  %__src.addr.i.i = alloca i8*, align 8
  %__len.addr.i.i = alloca i64, align 8
  %hash.i = alloca %struct._Hash*, align 8
  %table.i = alloca %union.UnionType*, align 8
  %i.i = alloca i64, align 8
  %o.i = alloca %struct._Undef*, align 8
  %0 = bitcast %struct._Undef** %o.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0) #3
  %call.i = call i8* @calloc(i64 4, i64 1) #3
  %1 = bitcast i8* %call.i to %struct._Undef*
  store %struct._Undef* %1, %struct._Undef** %o.i, align 8
  %2 = load %struct._Undef** %o.i, align 8
  %3 = ptrtoint %struct._Undef* %2 to i64
  %or.i = or i64 %3, -4503599627370496
  %or1.i = or i64 %or.i, 3096224743817216
  %4 = inttoptr i64 %or1.i to i8*
  store i8* %4, i8** bitcast (%union.UnionType* @undef to i8**), align 8
  %5 = bitcast %struct._Undef** %o.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %5) #3
  %6 = bitcast %union.UnionType** %table.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %6) #3
  %7 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %7) #3
  %call.i1 = call i8* @calloc(i64 8, i64 512) #3
  %8 = bitcast i8* %call.i1 to %union.UnionType*
  store %union.UnionType* %8, %union.UnionType** %table.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %9 = load i64* %i.i, align 8
  %cmp.i = icmp ult i64 %9, 512
  br i1 %cmp.i, label %for.body.i, label %init_table.exit

for.body.i:                                       ; preds = %for.cond.i
  %10 = load i64* %i.i, align 8
  %11 = load %union.UnionType** %table.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType* %11, i64 %10
  %12 = bitcast %union.UnionType* %arrayidx.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%union.UnionType* @undef to i8*), i64 8, i32 8, i1 false) #3
  %13 = load i64* %i.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i

init_table.exit:                                  ; preds = %for.cond.i
  %14 = load %union.UnionType** %table.i, align 8
  store %union.UnionType* %14, %union.UnionType** @base_hash_table, align 8
  %15 = bitcast %union.UnionType** %table.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %15) #3
  %16 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %16) #3
  %17 = bitcast %struct._Hash** %hash.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %17) #3
  %call.i2 = call i8* @calloc(i64 32, i64 1) #3
  %18 = bitcast i8* %call.i2 to %struct._Hash*
  store %struct._Hash* %18, %struct._Hash** %hash.i, align 8
  %call1.i = call i8* @calloc(i64 8, i64 512) #3
  %19 = bitcast i8* %call1.i to %union.UnionType*
  %20 = load %struct._Hash** %hash.i, align 8
  %table.i3 = getelementptr inbounds %struct._Hash* %20, i32 0, i32 1
  store %union.UnionType* %19, %union.UnionType** %table.i3, align 8
  %21 = load %struct._Hash** %hash.i, align 8
  %table2.i = getelementptr inbounds %struct._Hash* %21, i32 0, i32 1
  %22 = load %union.UnionType** %table2.i, align 8
  %23 = bitcast %union.UnionType* %22 to i8*
  %24 = load %struct._Hash** %hash.i, align 8
  %table6.i = getelementptr inbounds %struct._Hash* %24, i32 0, i32 1
  %25 = load %union.UnionType** %table6.i, align 8
  %26 = bitcast %union.UnionType* %25 to i8*
  %27 = load %union.UnionType** @base_hash_table, align 8
  %28 = bitcast %union.UnionType* %27 to i8*
  %29 = bitcast i8** %__dest.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %29) #3
  %30 = bitcast i8** %__src.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %30) #3
  %31 = bitcast i64* %__len.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %31) #3
  store i8* %26, i8** %__dest.addr.i.i, align 8
  store i8* %28, i8** %__src.addr.i.i, align 8
  store i64 4096, i64* %__len.addr.i.i, align 8
  %32 = load i8** %__dest.addr.i.i, align 8
  %33 = load i8** %__src.addr.i.i, align 8
  %34 = load i64* %__len.addr.i.i, align 8
  %35 = load i8** %__dest.addr.i.i, align 8
  %call.i.i = call i8* @__memcpy_chk(i8* %32, i8* %33, i64 %34, i64 -1) #3
  %36 = bitcast i8** %__dest.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %36) #3
  %37 = bitcast i8** %__src.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %37) #3
  %38 = bitcast i64* %__len.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %38) #3
  %call8.i = call i8* @calloc(i64 8, i64 512) #3
  %39 = bitcast i8* %call8.i to %struct._String**
  %40 = load %struct._Hash** %hash.i, align 8
  %keys.i = getelementptr inbounds %struct._Hash* %40, i32 0, i32 2
  store %struct._String** %39, %struct._String*** %keys.i, align 8
  %41 = load %struct._Hash** %hash.i, align 8
  store %struct._Hash* %41, %struct._Hash** @pkg_map, align 8
  %42 = bitcast %struct._Hash** %hash.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %42) #3
  %43 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %43) #3
  %44 = bitcast i64* %i.i4 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %44) #3
  store i64 524288, i64* %size.i, align 8
  %45 = load i64* %size.i, align 8
  %call.i5 = call i8* @calloc(i64 8, i64 %45) #3
  %46 = bitcast i8* %call.i5 to %struct._Object**
  store %struct._Object** %46, %struct._Object*** @object_pool, align 8
  store i64 0, i64* %i.i4, align 8
  br label %for.cond.i7

for.cond.i7:                                      ; preds = %for.body.i10, %init_table.exit
  %47 = load i64* %i.i4, align 8
  %48 = load i64* %size.i, align 8
  %cmp.i6 = icmp ult i64 %47, %48
  br i1 %cmp.i6, label %for.body.i10, label %make_object_pool.exit

for.body.i10:                                     ; preds = %for.cond.i7
  %call1.i8 = call i8* @calloc(i64 64, i64 1) #3
  %49 = bitcast i8* %call1.i8 to %struct._Object*
  %50 = load i64* %i.i4, align 8
  %51 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i9 = getelementptr inbounds %struct._Object** %51, i64 %50
  store %struct._Object* %49, %struct._Object** %arrayidx.i9, align 8
  %52 = load i64* %i.i4, align 8
  %inc.i11 = add i64 %52, 1
  store i64 %inc.i11, i64* %i.i4, align 8
  br label %for.cond.i7

make_object_pool.exit:                            ; preds = %for.cond.i7
  %53 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %53) #3
  %54 = bitcast i64* %i.i4 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %54) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @make_object_pool() #0 {
entry:
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 524288, i64* %size, align 8
  %0 = load i64* %size, align 8
  %call = call i8* @calloc(i64 8, i64 %0)
  %1 = bitcast i8* %call to %struct._Object**
  store %struct._Object** %1, %struct._Object*** @object_pool, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64* %i, align 8
  %3 = load i64* %size, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i8* @calloc(i64 64, i64 1)
  %4 = bitcast i8* %call1 to %struct._Object*
  %5 = load i64* %i, align 8
  %6 = load %struct._Object*** @object_pool, align 8
  %arrayidx = getelementptr inbounds %struct._Object** %6, i64 %5
  store %struct._Object* %4, %struct._Object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @make_hash(i8* %_str, i64 %len) #0 {
entry:
  %_str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %str = alloca i8*, align 8
  %hash = alloca i64, align 8
  store i8* %_str, i8** %_str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8** %_str.addr, align 8
  store i8* %0, i8** %str, align 8
  store i64 5381, i64* %hash, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64* %len.addr, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %len.addr, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64* %hash, align 8
  %shl = shl i64 %2, 5
  %3 = load i64* %hash, align 8
  %add = add i64 %shl, %3
  %4 = load i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  %5 = load i8* %4, align 1
  %conv = sext i8 %5 to i64
  %add1 = add i64 %add, %conv
  store i64 %add1, i64* %hash, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i64* %hash, align 8
  ret i64 %6
}

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind ssp uwtable
define void @_unshift(%struct._Array* %base, i8* %pkg_name) #0 {
entry:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %base.addr = alloca %struct._Array*, align 8
  %pkg_name.addr = alloca i8*, align 8
  %tmp = alloca %union.UnionType*, align 8
  %class = alloca %union.UnionType*, align 8
  %coerce = alloca %union.UnionType, align 8
  store %struct._Array* %base, %struct._Array** %base.addr, align 8
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  %0 = load %struct._Array** %base.addr, align 8
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size, align 8
  %add = add i64 %1, 1
  %mul = mul i64 8, %add
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to %union.UnionType*
  store %union.UnionType* %2, %union.UnionType** %tmp, align 8
  %tobool = icmp ne %union.UnionType* %2, null
  br i1 %tobool, label %cond.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 8
  %call1 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str36, i32 0, i32 0))
  br label %if.end

cond.end:                                         ; preds = %entry
  %4 = load %union.UnionType** %tmp, align 8
  %add.ptr = getelementptr inbounds %union.UnionType* %4, i64 1
  %5 = bitcast %union.UnionType* %add.ptr to i8*
  %6 = load %union.UnionType** %tmp, align 8
  %add.ptr7 = getelementptr inbounds %union.UnionType* %6, i64 1
  %7 = bitcast %union.UnionType* %add.ptr7 to i8*
  %8 = load %struct._Array** %base.addr, align 8
  %list8 = getelementptr inbounds %struct._Array* %8, i32 0, i32 1
  %9 = load %union.UnionType*** %list8, align 8
  %10 = bitcast %union.UnionType** %9 to i8*
  %11 = load %struct._Array** %base.addr, align 8
  %size9 = getelementptr inbounds %struct._Array* %11, i32 0, i32 2
  %12 = load i64* %size9, align 8
  %mul10 = mul i64 %12, 8
  %13 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %13) #3
  %14 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %14) #3
  %15 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %15) #3
  store i8* %7, i8** %__dest.addr.i, align 8
  store i8* %10, i8** %__src.addr.i, align 8
  store i64 %mul10, i64* %__len.addr.i, align 8
  %16 = load i8** %__dest.addr.i, align 8
  %17 = load i8** %__src.addr.i, align 8
  %18 = load i64* %__len.addr.i, align 8
  %19 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %16, i8* %17, i64 %18, i64 -1) #3
  %20 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %20) #3
  %21 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %21) #3
  %22 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %22) #3
  %23 = load %union.UnionType** %tmp, align 8
  %24 = bitcast %union.UnionType* %23 to %union.UnionType**
  %25 = load %struct._Array** %base.addr, align 8
  %list12 = getelementptr inbounds %struct._Array* %25, i32 0, i32 1
  store %union.UnionType** %24, %union.UnionType*** %list12, align 8
  %26 = load i32* @count, align 4
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @count, align 4
  %27 = load i32* @count, align 4
  %idxprom.i = sext i32 %27 to i64
  %28 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %28, i64 %idxprom.i
  %29 = load %struct._Object** %arrayidx.i, align 8
  %30 = bitcast %struct._Object* %29 to %union.UnionType*
  store %union.UnionType* %30, %union.UnionType** %class, align 8
  %31 = load i8** %pkg_name.addr, align 8
  %call15 = call i64 @new_String(i8* %31)
  %coerce.dive1 = bitcast %union.UnionType* %coerce to double*
  %32 = bitcast double* %coerce.dive1 to i64*
  store i64 %call15, i64* %32, align 1
  %o = bitcast %union.UnionType* %coerce to i8**
  %33 = load i8** %o, align 8
  %34 = load %union.UnionType** %class, align 8
  %o16 = bitcast %union.UnionType* %34 to i8**
  store i8* %33, i8** %o16, align 8
  %35 = load %union.UnionType** %class, align 8
  %36 = load %struct._Array** %base.addr, align 8
  %list17 = getelementptr inbounds %struct._Array* %36, i32 0, i32 1
  %37 = load %union.UnionType*** %list17, align 8
  %arrayidx2 = bitcast %union.UnionType** %37 to %union.UnionType**
  store %union.UnionType* %35, %union.UnionType** %arrayidx2, align 8
  %38 = load %struct._Array** %base.addr, align 8
  %size18 = getelementptr inbounds %struct._Array* %38, i32 0, i32 2
  %39 = load i64* %size18, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %size18, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_make_method_argument(%struct._Array* %base, %struct._BlessedObject* %self) #0 {
entry:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %base.addr = alloca %struct._Array*, align 8
  %self.addr = alloca %struct._BlessedObject*, align 8
  %tmp = alloca %union.UnionType*, align 8
  %elem = alloca %union.UnionType*, align 8
  store %struct._Array* %base, %struct._Array** %base.addr, align 8
  store %struct._BlessedObject* %self, %struct._BlessedObject** %self.addr, align 8
  %0 = load %struct._Array** %base.addr, align 8
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size, align 8
  %add = add i64 %1, 1
  %mul = mul i64 8, %add
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to %union.UnionType*
  store %union.UnionType* %2, %union.UnionType** %tmp, align 8
  %tobool = icmp ne %union.UnionType* %2, null
  br i1 %tobool, label %cond.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 8
  %call1 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str36, i32 0, i32 0))
  br label %if.end

cond.end:                                         ; preds = %entry
  %4 = load %union.UnionType** %tmp, align 8
  %add.ptr = getelementptr inbounds %union.UnionType* %4, i64 1
  %5 = bitcast %union.UnionType* %add.ptr to i8*
  %6 = load %union.UnionType** %tmp, align 8
  %add.ptr7 = getelementptr inbounds %union.UnionType* %6, i64 1
  %7 = bitcast %union.UnionType* %add.ptr7 to i8*
  %8 = load %struct._Array** %base.addr, align 8
  %list8 = getelementptr inbounds %struct._Array* %8, i32 0, i32 1
  %9 = load %union.UnionType*** %list8, align 8
  %10 = bitcast %union.UnionType** %9 to i8*
  %11 = load %struct._Array** %base.addr, align 8
  %size9 = getelementptr inbounds %struct._Array* %11, i32 0, i32 2
  %12 = load i64* %size9, align 8
  %mul10 = mul i64 %12, 8
  %13 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %13) #3
  %14 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %14) #3
  %15 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %15) #3
  store i8* %7, i8** %__dest.addr.i, align 8
  store i8* %10, i8** %__src.addr.i, align 8
  store i64 %mul10, i64* %__len.addr.i, align 8
  %16 = load i8** %__dest.addr.i, align 8
  %17 = load i8** %__src.addr.i, align 8
  %18 = load i64* %__len.addr.i, align 8
  %19 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %16, i8* %17, i64 %18, i64 -1) #3
  %20 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %20) #3
  %21 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %21) #3
  %22 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %22) #3
  %23 = load %union.UnionType** %tmp, align 8
  %24 = bitcast %union.UnionType* %23 to %union.UnionType**
  %25 = load %struct._Array** %base.addr, align 8
  %list12 = getelementptr inbounds %struct._Array* %25, i32 0, i32 1
  store %union.UnionType** %24, %union.UnionType*** %list12, align 8
  %26 = load i32* @count, align 4
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @count, align 4
  %27 = load i32* @count, align 4
  %idxprom.i = sext i32 %27 to i64
  %28 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %28, i64 %idxprom.i
  %29 = load %struct._Object** %arrayidx.i, align 8
  %30 = bitcast %struct._Object* %29 to %union.UnionType*
  store %union.UnionType* %30, %union.UnionType** %elem, align 8
  %31 = load %struct._BlessedObject** %self.addr, align 8
  %32 = ptrtoint %struct._BlessedObject* %31 to i64
  %or = or i64 %32, -4503599627370496
  %or15 = or i64 %or, 2251799813685248
  %33 = inttoptr i64 %or15 to i8*
  %34 = load %union.UnionType** %elem, align 8
  %o = bitcast %union.UnionType* %34 to i8**
  store i8* %33, i8** %o, align 8
  %35 = load %union.UnionType** %elem, align 8
  %36 = load %struct._Array** %base.addr, align 8
  %list16 = getelementptr inbounds %struct._Array* %36, i32 0, i32 1
  %37 = load %union.UnionType*** %list16, align 8
  %arrayidx1 = bitcast %union.UnionType** %37 to %union.UnionType**
  store %union.UnionType* %35, %union.UnionType** %arrayidx1, align 8
  %38 = load %struct._Array** %base.addr, align 8
  %size17 = getelementptr inbounds %struct._Array* %38, i32 0, i32 2
  %39 = load i64* %size17, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %size17, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Hash_add(%struct._Hash* %hash, %struct._String* %key, i64 %elem.coerce) #0 {
entry:
  %hash.addr = alloca %struct._Hash*, align 8
  %key.addr = alloca %struct._String*, align 8
  %elem = alloca %union.UnionType, align 8
  %size = alloca i64, align 8
  store %struct._Hash* %hash, %struct._Hash** %hash.addr, align 8
  store %struct._String* %key, %struct._String** %key.addr, align 8
  %coerce.dive1 = bitcast %union.UnionType* %elem to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %elem.coerce, i64* %0, align 1
  %1 = load %struct._Hash** %hash.addr, align 8
  %size1 = getelementptr inbounds %struct._Hash* %1, i32 0, i32 3
  %2 = load i64* %size1, align 8
  store i64 %2, i64* %size, align 8
  %3 = load %struct._String** %key.addr, align 8
  %hash2 = getelementptr inbounds %struct._String* %3, i32 0, i32 3
  %4 = load i64* %hash2, align 8
  %5 = load %struct._Hash** %hash.addr, align 8
  %table = getelementptr inbounds %struct._Hash* %5, i32 0, i32 1
  %6 = load %union.UnionType** %table, align 8
  %arrayidx = getelementptr inbounds %union.UnionType* %6, i64 %4
  %7 = bitcast %union.UnionType* %arrayidx to i8*
  %8 = bitcast %union.UnionType* %elem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = load %struct._String** %key.addr, align 8
  %10 = load i64* %size, align 8
  %add = add i64 %10, 1
  %11 = load %struct._Hash** %hash.addr, align 8
  %keys = getelementptr inbounds %struct._Hash* %11, i32 0, i32 2
  %12 = load %struct._String*** %keys, align 8
  %arrayidx3 = getelementptr inbounds %struct._String** %12, i64 %add
  store %struct._String* %9, %struct._String** %arrayidx3, align 8
  %13 = load %struct._Hash** %hash.addr, align 8
  %size4 = getelementptr inbounds %struct._Hash* %13, i32 0, i32 3
  %14 = load i64* %size4, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %size4, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @Hash_get(%struct._Hash* %hash, %struct._String* %key) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %hash.addr = alloca %struct._Hash*, align 8
  %key.addr = alloca %struct._String*, align 8
  store %struct._Hash* %hash, %struct._Hash** %hash.addr, align 8
  store %struct._String* %key, %struct._String** %key.addr, align 8
  %0 = load %struct._String** %key.addr, align 8
  %hash1 = getelementptr inbounds %struct._String* %0, i32 0, i32 3
  %1 = load i64* %hash1, align 8
  %2 = load %struct._Hash** %hash.addr, align 8
  %table = getelementptr inbounds %struct._Hash* %2, i32 0, i32 1
  %3 = load %union.UnionType** %table, align 8
  %arrayidx = getelementptr inbounds %union.UnionType* %3, i64 %1
  %4 = bitcast %union.UnionType* %retval to i8*
  %5 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %6 = bitcast double* %coerce.dive1 to i64*
  %7 = load i64* %6, align 1
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @bless(%struct._Array* %args) #0 {
entry:
  %retval.i = alloca %union.UnionType, align 8
  %hash.addr.i = alloca %struct._Hash*, align 8
  %key.addr.i = alloca %struct._String*, align 8
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %self = alloca %union.UnionType, align 8
  %class = alloca %union.UnionType, align 8
  %blessed = alloca %struct._BlessedObject*, align 8
  %pkg_name = alloca i8*, align 8
  %hash_ref = alloca %struct._HashRef*, align 8
  %hash = alloca %struct._Hash*, align 8
  %s67 = alloca %union.UnionType, align 8
  %mtds = alloca %union.UnionType, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size, align 8
  %cmp = icmp ne i64 %1, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str39, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %entry, %if.then
  %3 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %3, i32 0, i32 1
  %4 = load %union.UnionType*** %list, align 8
  %arrayidx1 = bitcast %union.UnionType** %4 to %union.UnionType**
  %5 = load %union.UnionType** %arrayidx1, align 8
  %6 = bitcast %union.UnionType* %self to i8*
  %7 = bitcast %union.UnionType* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = load %struct._Array** %args.addr, align 8
  %list1 = getelementptr inbounds %struct._Array* %8, i32 0, i32 1
  %9 = load %union.UnionType*** %list1, align 8
  %arrayidx2 = getelementptr inbounds %union.UnionType** %9, i64 1
  %10 = load %union.UnionType** %arrayidx2, align 8
  %11 = bitcast %union.UnionType* %class to i8*
  %12 = bitcast %union.UnionType* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %call3 = call i8* @calloc(i64 32, i64 1)
  %13 = bitcast i8* %call3 to %struct._BlessedObject*
  store %struct._BlessedObject* %13, %struct._BlessedObject** %blessed, align 8
  %o = bitcast %union.UnionType* %self to i8**
  %14 = load i8** %o, align 8
  %15 = ptrtoint i8* %14 to i64
  %and = and i64 %15, -4503599627370496
  %cmp4 = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp4 to i32
  %conv5 = sext i32 %conv to i64
  %o6 = bitcast %union.UnionType* %self to i8**
  %16 = load i8** %o6, align 8
  %17 = ptrtoint i8* %16 to i64
  %and7 = and i64 %17, 4222124650659840
  %shr = lshr i64 %and7, 48
  %mul = mul i64 %conv5, %shr
  %cmp8 = icmp ne i64 %mul, 6
  br i1 %cmp8, label %if.then10, label %do.end

if.then10:                                        ; preds = %do.body
  %18 = load %struct.__sFILE** @__stderrp, align 8
  %o11 = bitcast %union.UnionType* %self to i8**
  %19 = load i8** %o11, align 8
  %20 = ptrtoint i8* %19 to i64
  %and12 = and i64 %20, -4503599627370496
  %cmp13 = icmp eq i64 %and12, -4503599627370496
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = sext i32 %conv14 to i64
  %o16 = bitcast %union.UnionType* %self to i8**
  %21 = load i8** %o16, align 8
  %22 = ptrtoint i8* %21 to i64
  %and17 = and i64 %22, 4222124650659840
  %shr18 = lshr i64 %and17, 48
  %mul19 = mul i64 %conv15, %shr18
  %call20 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul19)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 708, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end:                                           ; preds = %do.body
  %o22 = bitcast %union.UnionType* %class to i8**
  %23 = load i8** %o22, align 8
  %24 = ptrtoint i8* %23 to i64
  %and23 = and i64 %24, -4503599627370496
  %cmp24 = icmp eq i64 %and23, -4503599627370496
  %conv25 = zext i1 %cmp24 to i32
  %conv26 = sext i32 %conv25 to i64
  %o27 = bitcast %union.UnionType* %class to i8**
  %25 = load i8** %o27, align 8
  %26 = ptrtoint i8* %25 to i64
  %and28 = and i64 %26, 4222124650659840
  %shr29 = lshr i64 %and28, 48
  %mul30 = mul i64 %conv26, %shr29
  %cmp31 = icmp eq i64 %mul30, 7
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %o33 = bitcast %union.UnionType* %class to i8**
  %27 = load i8** %o33, align 8
  %28 = ptrtoint i8* %27 to i64
  %xor = xor i64 %28, -2533274790395904
  %29 = inttoptr i64 %xor to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %29, i32 0, i32 1
  %30 = bitcast %union.UnionType* %class to i8*
  %31 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  br label %do.body34

cond.false:                                       ; preds = %do.end
  %32 = bitcast %union.UnionType* %class to i8*
  %33 = bitcast %union.UnionType* %class to i8*
  br label %do.body34

do.body34:                                        ; preds = %cond.true, %cond.false
  %o35 = bitcast %union.UnionType* %class to i8**
  %34 = load i8** %o35, align 8
  %35 = ptrtoint i8* %34 to i64
  %and36 = and i64 %35, -4503599627370496
  %cmp37 = icmp eq i64 %and36, -4503599627370496
  %conv38 = zext i1 %cmp37 to i32
  %conv39 = sext i32 %conv38 to i64
  %o40 = bitcast %union.UnionType* %class to i8**
  %36 = load i8** %o40, align 8
  %37 = ptrtoint i8* %36 to i64
  %and41 = and i64 %37, 4222124650659840
  %shr42 = lshr i64 %and41, 48
  %mul43 = mul i64 %conv39, %shr42
  %cmp44 = icmp ne i64 %mul43, 2
  br i1 %cmp44, label %if.then46, label %do.body73

if.then46:                                        ; preds = %do.body34
  %38 = load %struct.__sFILE** @__stderrp, align 8
  %o47 = bitcast %union.UnionType* %class to i8**
  %39 = load i8** %o47, align 8
  %40 = ptrtoint i8* %39 to i64
  %and48 = and i64 %40, -4503599627370496
  %cmp49 = icmp eq i64 %and48, -4503599627370496
  %conv50 = zext i1 %cmp49 to i32
  %conv51 = sext i32 %conv50 to i64
  %o52 = bitcast %union.UnionType* %class to i8**
  %41 = load i8** %o52, align 8
  %42 = ptrtoint i8* %41 to i64
  %and53 = and i64 %42, 4222124650659840
  %shr54 = lshr i64 %and53, 48
  %mul55 = mul i64 %conv51, %shr54
  %call56 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul55)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 710, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.body73:                                        ; preds = %do.body34
  %o59 = bitcast %union.UnionType* %class to i8**
  %43 = load i8** %o59, align 8
  %44 = ptrtoint i8* %43 to i64
  %xor60 = xor i64 %44, -3940649673949184
  %45 = inttoptr i64 %xor60 to %struct._String*
  %s = getelementptr inbounds %struct._String* %45, i32 0, i32 1
  %46 = load i8** %s, align 8
  store i8* %46, i8** %pkg_name, align 8
  %o61 = bitcast %union.UnionType* %self to i8**
  %47 = load i8** %o61, align 8
  %48 = ptrtoint i8* %47 to i64
  %xor62 = xor i64 %48, -2814749767106560
  %49 = inttoptr i64 %xor62 to %struct._HashRef*
  store %struct._HashRef* %49, %struct._HashRef** %hash_ref, align 8
  %50 = load %struct._HashRef** %hash_ref, align 8
  %v63 = getelementptr inbounds %struct._HashRef* %50, i32 0, i32 1
  %o64 = bitcast %union.UnionType* %v63 to i8**
  %51 = load i8** %o64, align 8
  %52 = ptrtoint i8* %51 to i64
  %xor65 = xor i64 %52, -3096224743817216
  %53 = inttoptr i64 %xor65 to %struct._Hash*
  store %struct._Hash* %53, %struct._Hash** %hash, align 8
  %54 = load %struct._BlessedObject** %blessed, align 8
  %members = getelementptr inbounds %struct._BlessedObject* %54, i32 0, i32 1
  %55 = bitcast %union.UnionType* %members to i8*
  %56 = bitcast %union.UnionType* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 8, i32 8, i1 false)
  %57 = load i8** %pkg_name, align 8
  %58 = load %struct._BlessedObject** %blessed, align 8
  %pkg_name66 = getelementptr inbounds %struct._BlessedObject* %58, i32 0, i32 3
  store i8* %57, i8** %pkg_name66, align 8
  %59 = load i8** %pkg_name, align 8
  %call68 = call i64 @new_String(i8* %59)
  %coerce.dive2 = bitcast %union.UnionType* %s67 to double*
  %60 = bitcast double* %coerce.dive2 to i64*
  store i64 %call68, i64* %60, align 1
  %61 = load %struct._Hash** @pkg_map, align 8
  %o69 = bitcast %union.UnionType* %s67 to i8**
  %62 = load i8** %o69, align 8
  %63 = ptrtoint i8* %62 to i64
  %xor70 = xor i64 %63, -3940649673949184
  %64 = inttoptr i64 %xor70 to %struct._String*
  %65 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %65) #3
  %66 = bitcast %struct._Hash** %hash.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %66) #3
  %67 = bitcast %struct._String** %key.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %67) #3
  store %struct._Hash* %61, %struct._Hash** %hash.addr.i, align 8
  store %struct._String* %64, %struct._String** %key.addr.i, align 8
  %68 = load %struct._String** %key.addr.i, align 8
  %hash1.i = getelementptr inbounds %struct._String* %68, i32 0, i32 3
  %69 = load i64* %hash1.i, align 8
  %70 = load %struct._Hash** %hash.addr.i, align 8
  %table.i = getelementptr inbounds %struct._Hash* %70, i32 0, i32 1
  %71 = load %union.UnionType** %table.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType* %71, i64 %69
  %72 = bitcast %union.UnionType* %retval.i to i8*
  %73 = bitcast %union.UnionType* %arrayidx.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i = bitcast %union.UnionType* %retval.i to double*
  %74 = bitcast double* %coerce.dive1.i to i64*
  %75 = load i64* %74, align 1
  %76 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %76) #3
  %77 = bitcast %struct._Hash** %hash.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %77) #3
  %78 = bitcast %struct._String** %key.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %78) #3
  %coerce.dive723 = bitcast %union.UnionType* %mtds to double*
  %79 = bitcast double* %coerce.dive723 to i64*
  store i64 %75, i64* %79, align 1
  %o74 = bitcast %union.UnionType* %mtds to i8**
  %80 = load i8** %o74, align 8
  %81 = ptrtoint i8* %80 to i64
  %and75 = and i64 %81, -4503599627370496
  %cmp76 = icmp eq i64 %and75, -4503599627370496
  %conv77 = zext i1 %cmp76 to i32
  %conv78 = sext i32 %conv77 to i64
  %o79 = bitcast %union.UnionType* %mtds to i8**
  %82 = load i8** %o79, align 8
  %83 = ptrtoint i8* %82 to i64
  %and80 = and i64 %83, 4222124650659840
  %shr81 = lshr i64 %and80, 48
  %mul82 = mul i64 %conv78, %shr81
  %cmp83 = icmp ne i64 %mul82, 5
  br i1 %cmp83, label %if.then85, label %do.end97

if.then85:                                        ; preds = %do.body73
  %84 = load %struct.__sFILE** @__stderrp, align 8
  %o86 = bitcast %union.UnionType* %mtds to i8**
  %85 = load i8** %o86, align 8
  %86 = ptrtoint i8* %85 to i64
  %and87 = and i64 %86, -4503599627370496
  %cmp88 = icmp eq i64 %and87, -4503599627370496
  %conv89 = zext i1 %cmp88 to i32
  %conv90 = sext i32 %conv89 to i64
  %o91 = bitcast %union.UnionType* %mtds to i8**
  %87 = load i8** %o91, align 8
  %88 = ptrtoint i8* %87 to i64
  %and92 = and i64 %88, 4222124650659840
  %shr93 = lshr i64 %and92, 48
  %mul94 = mul i64 %conv90, %shr93
  %call95 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %84, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul94)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 720, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end97:                                         ; preds = %do.body73
  %o98 = bitcast %union.UnionType* %mtds to i8**
  %89 = load i8** %o98, align 8
  %90 = ptrtoint i8* %89 to i64
  %xor99 = xor i64 %90, -3096224743817216
  %91 = inttoptr i64 %xor99 to %struct._Hash*
  %92 = load %struct._BlessedObject** %blessed, align 8
  %mtds100 = getelementptr inbounds %struct._BlessedObject* %92, i32 0, i32 2
  store %struct._Hash* %91, %struct._Hash** %mtds100, align 8
  %93 = load %struct._BlessedObject** %blessed, align 8
  %94 = ptrtoint %struct._BlessedObject* %93 to i64
  %or = or i64 %94, -4503599627370496
  %or101 = or i64 %or, 2251799813685248
  %95 = inttoptr i64 %or101 to i8*
  %o102 = bitcast %union.UnionType* %ret to i8**
  store i8* %95, i8** %o102, align 8
  %96 = bitcast %union.UnionType* %retval to i8*
  %97 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 8, i32 8, i1 false)
  %coerce.dive1034 = bitcast %union.UnionType* %retval to double*
  %98 = bitcast double* %coerce.dive1034 to i64*
  %99 = load i64* %98, align 1
  ret i64 %99
}

; Function Attrs: nounwind ssp uwtable
define %struct._Hash* @get_pkg(i8* %pkg_name) #0 {
entry:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %hash.addr.i4 = alloca %struct._Hash*, align 8
  %key.addr.i5 = alloca %struct._String*, align 8
  %elem.i = alloca %union.UnionType, align 8
  %size.i = alloca i64, align 8
  %retval.i = alloca %union.UnionType, align 8
  %hash.addr.i = alloca %struct._Hash*, align 8
  %key.addr.i = alloca %struct._String*, align 8
  %retval = alloca %struct._Hash*, align 8
  %pkg_name.addr = alloca i8*, align 8
  %ret = alloca %struct._Hash*, align 8
  %_key = alloca %union.UnionType, align 8
  %key = alloca %struct._String*, align 8
  %pkg = alloca %union.UnionType, align 8
  %hash = alloca %struct._Hash*, align 8
  %value = alloca %union.UnionType, align 8
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  store %struct._Hash* null, %struct._Hash** %ret, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call = call i64 @new_String(i8* %0)
  %coerce.dive1 = bitcast %union.UnionType* %_key to double*
  %1 = bitcast double* %coerce.dive1 to i64*
  store i64 %call, i64* %1, align 1
  %o = bitcast %union.UnionType* %_key to i8**
  %2 = load i8** %o, align 8
  %3 = ptrtoint i8* %2 to i64
  %xor = xor i64 %3, -3940649673949184
  %4 = inttoptr i64 %xor to %struct._String*
  store %struct._String* %4, %struct._String** %key, align 8
  %5 = load %struct._Hash** @pkg_map, align 8
  %6 = load %struct._String** %key, align 8
  %7 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %7) #3
  %8 = bitcast %struct._Hash** %hash.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8) #3
  %9 = bitcast %struct._String** %key.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %9) #3
  store %struct._Hash* %5, %struct._Hash** %hash.addr.i, align 8
  store %struct._String* %6, %struct._String** %key.addr.i, align 8
  %10 = load %struct._String** %key.addr.i, align 8
  %hash1.i = getelementptr inbounds %struct._String* %10, i32 0, i32 3
  %11 = load i64* %hash1.i, align 8
  %12 = load %struct._Hash** %hash.addr.i, align 8
  %table.i = getelementptr inbounds %struct._Hash* %12, i32 0, i32 1
  %13 = load %union.UnionType** %table.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType* %13, i64 %11
  %14 = bitcast %union.UnionType* %retval.i to i8*
  %15 = bitcast %union.UnionType* %arrayidx.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i = bitcast %union.UnionType* %retval.i to double*
  %16 = bitcast double* %coerce.dive1.i to i64*
  %17 = load i64* %16, align 1
  %18 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %18) #3
  %19 = bitcast %struct._Hash** %hash.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %19) #3
  %20 = bitcast %struct._String** %key.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %20) #3
  %coerce.dive22 = bitcast %union.UnionType* %pkg to double*
  %21 = bitcast double* %coerce.dive22 to i64*
  store i64 %17, i64* %21, align 1
  %o3 = bitcast %union.UnionType* %pkg to i8**
  %22 = load i8** %o3, align 8
  %23 = ptrtoint i8* %22 to i64
  %and = and i64 %23, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv4 = sext i32 %conv to i64
  %o5 = bitcast %union.UnionType* %pkg to i8**
  %24 = load i8** %o5, align 8
  %25 = ptrtoint i8* %24 to i64
  %and6 = and i64 %25, 4222124650659840
  %shr = lshr i64 %and6, 48
  %mul = mul i64 %conv4, %shr
  %cmp7 = icmp eq i64 %mul, 5
  br i1 %cmp7, label %if.then, label %cond.end

if.then:                                          ; preds = %entry
  %o9 = bitcast %union.UnionType* %pkg to i8**
  %26 = load i8** %o9, align 8
  %27 = ptrtoint i8* %26 to i64
  %xor10 = xor i64 %27, -3096224743817216
  %28 = inttoptr i64 %xor10 to %struct._Hash*
  store %struct._Hash* %28, %struct._Hash** %retval
  br label %return

cond.end:                                         ; preds = %entry
  %call11 = call i8* @calloc(i64 32, i64 1)
  %29 = bitcast i8* %call11 to %struct._Hash*
  store %struct._Hash* %29, %struct._Hash** %hash, align 8
  %call12 = call i8* @calloc(i64 8, i64 512)
  %30 = bitcast i8* %call12 to %union.UnionType*
  %31 = load %struct._Hash** %hash, align 8
  %table = getelementptr inbounds %struct._Hash* %31, i32 0, i32 1
  store %union.UnionType* %30, %union.UnionType** %table, align 8
  %32 = load %struct._Hash** %hash, align 8
  %table13 = getelementptr inbounds %struct._Hash* %32, i32 0, i32 1
  %33 = load %union.UnionType** %table13, align 8
  %34 = bitcast %union.UnionType* %33 to i8*
  %35 = load %struct._Hash** %hash, align 8
  %table19 = getelementptr inbounds %struct._Hash* %35, i32 0, i32 1
  %36 = load %union.UnionType** %table19, align 8
  %37 = bitcast %union.UnionType* %36 to i8*
  %38 = load %union.UnionType** @base_hash_table, align 8
  %39 = bitcast %union.UnionType* %38 to i8*
  %40 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %40) #3
  %41 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %41) #3
  %42 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %42) #3
  store i8* %37, i8** %__dest.addr.i, align 8
  store i8* %39, i8** %__src.addr.i, align 8
  store i64 4096, i64* %__len.addr.i, align 8
  %43 = load i8** %__dest.addr.i, align 8
  %44 = load i8** %__src.addr.i, align 8
  %45 = load i64* %__len.addr.i, align 8
  %46 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %43, i8* %44, i64 %45, i64 -1) #3
  %47 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %47) #3
  %48 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %48) #3
  %49 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %49) #3
  %call21 = call i8* @calloc(i64 8, i64 512)
  %50 = bitcast i8* %call21 to %struct._String**
  %51 = load %struct._Hash** %hash, align 8
  %keys = getelementptr inbounds %struct._Hash* %51, i32 0, i32 2
  store %struct._String** %50, %struct._String*** %keys, align 8
  %52 = load %struct._Hash** %hash, align 8
  %53 = ptrtoint %struct._Hash* %52 to i64
  %or = or i64 %53, -4503599627370496
  %or22 = or i64 %or, 1407374883553280
  %54 = inttoptr i64 %or22 to i8*
  %o23 = bitcast %union.UnionType* %value to i8**
  store i8* %54, i8** %o23, align 8
  %55 = load %struct._Hash** @pkg_map, align 8
  %56 = load %struct._String** %key, align 8
  %coerce.dive243 = bitcast %union.UnionType* %value to double*
  %57 = bitcast double* %coerce.dive243 to i64*
  %58 = load i64* %57, align 1
  %59 = bitcast %struct._Hash** %hash.addr.i4 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %59) #3
  %60 = bitcast %struct._String** %key.addr.i5 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %60) #3
  %61 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %61) #3
  %62 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %62) #3
  store %struct._Hash* %55, %struct._Hash** %hash.addr.i4, align 8
  store %struct._String* %56, %struct._String** %key.addr.i5, align 8
  %coerce.dive1.i6 = bitcast %union.UnionType* %elem.i to double*
  %63 = bitcast double* %coerce.dive1.i6 to i64*
  store i64 %58, i64* %63, align 1
  %64 = load %struct._Hash** %hash.addr.i4, align 8
  %size1.i = getelementptr inbounds %struct._Hash* %64, i32 0, i32 3
  %65 = load i64* %size1.i, align 8
  store i64 %65, i64* %size.i, align 8
  %66 = load %struct._String** %key.addr.i5, align 8
  %hash2.i = getelementptr inbounds %struct._String* %66, i32 0, i32 3
  %67 = load i64* %hash2.i, align 8
  %68 = load %struct._Hash** %hash.addr.i4, align 8
  %table.i7 = getelementptr inbounds %struct._Hash* %68, i32 0, i32 1
  %69 = load %union.UnionType** %table.i7, align 8
  %arrayidx.i8 = getelementptr inbounds %union.UnionType* %69, i64 %67
  %70 = bitcast %union.UnionType* %arrayidx.i8 to i8*
  %71 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 8, i32 8, i1 false) #3
  %72 = load %struct._String** %key.addr.i5, align 8
  %73 = load i64* %size.i, align 8
  %add.i = add i64 %73, 1
  %74 = load %struct._Hash** %hash.addr.i4, align 8
  %keys.i = getelementptr inbounds %struct._Hash* %74, i32 0, i32 2
  %75 = load %struct._String*** %keys.i, align 8
  %arrayidx3.i = getelementptr inbounds %struct._String** %75, i64 %add.i
  store %struct._String* %72, %struct._String** %arrayidx3.i, align 8
  %76 = load %struct._Hash** %hash.addr.i4, align 8
  %size4.i = getelementptr inbounds %struct._Hash* %76, i32 0, i32 3
  %77 = load i64* %size4.i, align 8
  %inc.i = add i64 %77, 1
  store i64 %inc.i, i64* %size4.i, align 8
  %78 = bitcast %struct._Hash** %hash.addr.i4 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %78) #3
  %79 = bitcast %struct._String** %key.addr.i5 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %79) #3
  %80 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %80) #3
  %81 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %81) #3
  %82 = load %struct._Hash** %hash, align 8
  store %struct._Hash* %82, %struct._Hash** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %83 = load %struct._Hash** %retval
  ret %struct._Hash* %83
}

; Function Attrs: nounwind ssp uwtable
define void @store_method_by_pkg_name(i8* %pkg_name, i8* %mtd_name, i64 (%struct._Array*)* %code) #0 {
entry:
  %hash.addr.i = alloca %struct._Hash*, align 8
  %key.addr.i = alloca %struct._String*, align 8
  %elem.i = alloca %union.UnionType, align 8
  %size.i = alloca i64, align 8
  %pkg_name.addr = alloca i8*, align 8
  %mtd_name.addr = alloca i8*, align 8
  %code.addr = alloca i64 (%struct._Array*)*, align 8
  %pkg = alloca %struct._Hash*, align 8
  %_mtd_name = alloca %union.UnionType, align 8
  %o = alloca %struct._CodeRef*, align 8
  %code_ref = alloca %union.UnionType, align 8
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  store i8* %mtd_name, i8** %mtd_name.addr, align 8
  store i64 (%struct._Array*)* %code, i64 (%struct._Array*)** %code.addr, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call = call %struct._Hash* @get_pkg(i8* %0)
  store %struct._Hash* %call, %struct._Hash** %pkg, align 8
  %1 = load i8** %mtd_name.addr, align 8
  %call1 = call i64 @new_String(i8* %1)
  %coerce.dive1 = bitcast %union.UnionType* %_mtd_name to double*
  %2 = bitcast double* %coerce.dive1 to i64*
  store i64 %call1, i64* %2, align 1
  %call2 = call i8* @calloc(i64 16, i64 1)
  %3 = bitcast i8* %call2 to %struct._CodeRef*
  store %struct._CodeRef* %3, %struct._CodeRef** %o, align 8
  %4 = load i64 (%struct._Array*)** %code.addr, align 8
  %5 = load %struct._CodeRef** %o, align 8
  %code3 = getelementptr inbounds %struct._CodeRef* %5, i32 0, i32 1
  store i64 (%struct._Array*)* %4, i64 (%struct._Array*)** %code3, align 8
  %6 = load %struct._CodeRef** %o, align 8
  %7 = ptrtoint %struct._CodeRef* %6 to i64
  %or = or i64 %7, -4503599627370496
  %or4 = or i64 %or, 2533274790395904
  %8 = inttoptr i64 %or4 to i8*
  %o5 = bitcast %union.UnionType* %code_ref to i8**
  store i8* %8, i8** %o5, align 8
  %9 = load %struct._Hash** %pkg, align 8
  %o6 = bitcast %union.UnionType* %_mtd_name to i8**
  %10 = load i8** %o6, align 8
  %11 = ptrtoint i8* %10 to i64
  %xor = xor i64 %11, -3940649673949184
  %12 = inttoptr i64 %xor to %struct._String*
  %coerce.dive72 = bitcast %union.UnionType* %code_ref to double*
  %13 = bitcast double* %coerce.dive72 to i64*
  %14 = load i64* %13, align 1
  %15 = bitcast %struct._Hash** %hash.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %15) #3
  %16 = bitcast %struct._String** %key.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %16) #3
  %17 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %17) #3
  %18 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %18) #3
  store %struct._Hash* %9, %struct._Hash** %hash.addr.i, align 8
  store %struct._String* %12, %struct._String** %key.addr.i, align 8
  %coerce.dive1.i = bitcast %union.UnionType* %elem.i to double*
  %19 = bitcast double* %coerce.dive1.i to i64*
  store i64 %14, i64* %19, align 1
  %20 = load %struct._Hash** %hash.addr.i, align 8
  %size1.i = getelementptr inbounds %struct._Hash* %20, i32 0, i32 3
  %21 = load i64* %size1.i, align 8
  store i64 %21, i64* %size.i, align 8
  %22 = load %struct._String** %key.addr.i, align 8
  %hash2.i = getelementptr inbounds %struct._String* %22, i32 0, i32 3
  %23 = load i64* %hash2.i, align 8
  %24 = load %struct._Hash** %hash.addr.i, align 8
  %table.i = getelementptr inbounds %struct._Hash* %24, i32 0, i32 1
  %25 = load %union.UnionType** %table.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType* %25, i64 %23
  %26 = bitcast %union.UnionType* %arrayidx.i to i8*
  %27 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 8, i1 false) #3
  %28 = load %struct._String** %key.addr.i, align 8
  %29 = load i64* %size.i, align 8
  %add.i = add i64 %29, 1
  %30 = load %struct._Hash** %hash.addr.i, align 8
  %keys.i = getelementptr inbounds %struct._Hash* %30, i32 0, i32 2
  %31 = load %struct._String*** %keys.i, align 8
  %arrayidx3.i = getelementptr inbounds %struct._String** %31, i64 %add.i
  store %struct._String* %28, %struct._String** %arrayidx3.i, align 8
  %32 = load %struct._Hash** %hash.addr.i, align 8
  %size4.i = getelementptr inbounds %struct._Hash* %32, i32 0, i32 3
  %33 = load i64* %size4.i, align 8
  %inc.i = add i64 %33, 1
  store i64 %inc.i, i64* %size4.i, align 8
  %34 = bitcast %struct._Hash** %hash.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %34) #3
  %35 = bitcast %struct._String** %key.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %35) #3
  %36 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %36) #3
  %37 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %37) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 (%struct._Array*)* @get_method_by_name(%struct._BlessedObject* %self, i8* %mtd_name) #0 {
do.body:
  %self.addr = alloca %struct._BlessedObject*, align 8
  %mtd_name.addr = alloca i8*, align 8
  %mtds = alloca %struct._Hash*, align 8
  %str = alloca %union.UnionType, align 8
  %s = alloca %struct._String*, align 8
  %mtd = alloca %union.UnionType, align 8
  %code_ref = alloca %struct._CodeRef*, align 8
  store %struct._BlessedObject* %self, %struct._BlessedObject** %self.addr, align 8
  store i8* %mtd_name, i8** %mtd_name.addr, align 8
  %0 = load %struct._BlessedObject** %self.addr, align 8
  %mtds1 = getelementptr inbounds %struct._BlessedObject* %0, i32 0, i32 2
  %1 = load %struct._Hash** %mtds1, align 8
  store %struct._Hash* %1, %struct._Hash** %mtds, align 8
  %2 = load i8** %mtd_name.addr, align 8
  %call = call i64 @new_String(i8* %2)
  %coerce.dive1 = bitcast %union.UnionType* %str to double*
  %3 = bitcast double* %coerce.dive1 to i64*
  store i64 %call, i64* %3, align 1
  %o = bitcast %union.UnionType* %str to i8**
  %4 = load i8** %o, align 8
  %5 = ptrtoint i8* %4 to i64
  %xor = xor i64 %5, -3940649673949184
  %6 = inttoptr i64 %xor to %struct._String*
  store %struct._String* %6, %struct._String** %s, align 8
  %7 = load %struct._String** %s, align 8
  %hash = getelementptr inbounds %struct._String* %7, i32 0, i32 3
  %8 = load i64* %hash, align 8
  %9 = load %struct._Hash** %mtds, align 8
  %table = getelementptr inbounds %struct._Hash* %9, i32 0, i32 1
  %10 = load %union.UnionType** %table, align 8
  %arrayidx = getelementptr inbounds %union.UnionType* %10, i64 %8
  %11 = bitcast %union.UnionType* %mtd to i8*
  %12 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %o2 = bitcast %union.UnionType* %mtd to i8**
  %13 = load i8** %o2, align 8
  %14 = ptrtoint i8* %13 to i64
  %and = and i64 %14, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv3 = sext i32 %conv to i64
  %o4 = bitcast %union.UnionType* %mtd to i8**
  %15 = load i8** %o4, align 8
  %16 = ptrtoint i8* %15 to i64
  %and5 = and i64 %16, 4222124650659840
  %shr = lshr i64 %and5, 48
  %mul = mul i64 %conv3, %shr
  %cmp6 = icmp ne i64 %mul, 9
  br i1 %cmp6, label %if.then, label %do.end

if.then:                                          ; preds = %do.body
  %17 = load %struct.__sFILE** @__stderrp, align 8
  %o8 = bitcast %union.UnionType* %mtd to i8**
  %18 = load i8** %o8, align 8
  %19 = ptrtoint i8* %18 to i64
  %and9 = and i64 %19, -4503599627370496
  %cmp10 = icmp eq i64 %and9, -4503599627370496
  %conv11 = zext i1 %cmp10 to i32
  %conv12 = sext i32 %conv11 to i64
  %o13 = bitcast %union.UnionType* %mtd to i8**
  %20 = load i8** %o13, align 8
  %21 = ptrtoint i8* %20 to i64
  %and14 = and i64 %21, 4222124650659840
  %shr15 = lshr i64 %and14, 48
  %mul16 = mul i64 %conv12, %shr15
  %call17 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul16)
  call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.get_method_by_name, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 784, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end:                                           ; preds = %do.body
  %o18 = bitcast %union.UnionType* %mtd to i8**
  %22 = load i8** %o18, align 8
  %23 = ptrtoint i8* %22 to i64
  %xor19 = xor i64 %23, -1970324836974592
  %24 = inttoptr i64 %xor19 to %struct._CodeRef*
  store %struct._CodeRef* %24, %struct._CodeRef** %code_ref, align 8
  %25 = load %struct._CodeRef** %code_ref, align 8
  %code = getelementptr inbounds %struct._CodeRef* %25, i32 0, i32 1
  %26 = load i64 (%struct._Array*)** %code, align 8
  ret i64 (%struct._Array*)* %26
}

; Function Attrs: nounwind ssp uwtable
define i64 @Hash_to_array(%struct._Hash* %hash) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %hash.addr = alloca %struct._Hash*, align 8
  %ret = alloca %union.UnionType, align 8
  %array = alloca %struct._Array*, align 8
  %key_n = alloca i64, align 8
  %array_size = alloca i64, align 8
  %i = alloca i64, align 8
  %key = alloca %struct._String*, align 8
  %boxed_key = alloca %union.UnionType*, align 8
  store %struct._Hash* %hash, %struct._Hash** %hash.addr, align 8
  %call = call i8* @calloc(i64 24, i64 1)
  %0 = bitcast i8* %call to %struct._Array*
  store %struct._Array* %0, %struct._Array** %array, align 8
  %1 = load %struct._Hash** %hash.addr, align 8
  %size = getelementptr inbounds %struct._Hash* %1, i32 0, i32 3
  %2 = load i64* %size, align 8
  store i64 %2, i64* %key_n, align 8
  %3 = load i64* %key_n, align 8
  %mul = mul i64 %3, 2
  store i64 %mul, i64* %array_size, align 8
  %4 = load i64* %array_size, align 8
  %call1 = call i8* @calloc(i64 8, i64 %4)
  %5 = bitcast i8* %call1 to %union.UnionType**
  %6 = load %struct._Array** %array, align 8
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  store %union.UnionType** %5, %union.UnionType*** %list, align 8
  %7 = load i64* %array_size, align 8
  %8 = load %struct._Array** %array, align 8
  %size2 = getelementptr inbounds %struct._Array* %8, i32 0, i32 2
  store i64 %7, i64* %size2, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64* %i, align 8
  %10 = load i64* %key_n, align 8
  %cmp = icmp ult i64 %9, %10
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %11 = load i64* %i, align 8
  %12 = load %struct._Hash** %hash.addr, align 8
  %keys = getelementptr inbounds %struct._Hash* %12, i32 0, i32 2
  %13 = load %struct._String*** %keys, align 8
  %arrayidx = getelementptr inbounds %struct._String** %13, i64 %11
  %14 = load %struct._String** %arrayidx, align 8
  store %struct._String* %14, %struct._String** %key, align 8
  %15 = load i32* @count, align 4
  %inc.i = add nsw i32 %15, 1
  store i32 %inc.i, i32* @count, align 4
  %16 = load i32* @count, align 4
  %idxprom.i = sext i32 %16 to i64
  %17 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %17, i64 %idxprom.i
  %18 = load %struct._Object** %arrayidx.i, align 8
  %19 = bitcast %struct._Object* %18 to %union.UnionType*
  store %union.UnionType* %19, %union.UnionType** %boxed_key, align 8
  %20 = load %struct._String** %key, align 8
  %21 = ptrtoint %struct._String* %20 to i64
  %or = or i64 %21, -4503599627370496
  %or4 = or i64 %or, 562949953421312
  %22 = inttoptr i64 %or4 to i8*
  %23 = load %union.UnionType** %boxed_key, align 8
  %o = bitcast %union.UnionType* %23 to i8**
  store i8* %22, i8** %o, align 8
  %24 = load %union.UnionType** %boxed_key, align 8
  %25 = load i64* %i, align 8
  %mul5 = mul i64 %25, 2
  %26 = load %struct._Array** %array, align 8
  %list6 = getelementptr inbounds %struct._Array* %26, i32 0, i32 1
  %27 = load %union.UnionType*** %list6, align 8
  %arrayidx7 = getelementptr inbounds %union.UnionType** %27, i64 %mul5
  store %union.UnionType* %24, %union.UnionType** %arrayidx7, align 8
  %28 = load %struct._String** %key, align 8
  %hash8 = getelementptr inbounds %struct._String* %28, i32 0, i32 3
  %29 = load i64* %hash8, align 8
  %30 = load %struct._Hash** %hash.addr, align 8
  %table = getelementptr inbounds %struct._Hash* %30, i32 0, i32 1
  %31 = load %union.UnionType** %table, align 8
  %arrayidx9 = getelementptr inbounds %union.UnionType* %31, i64 %29
  %32 = load i64* %i, align 8
  %mul10 = mul i64 %32, 2
  %add = add i64 %mul10, 1
  %33 = load %struct._Array** %array, align 8
  %list11 = getelementptr inbounds %struct._Array* %33, i32 0, i32 1
  %34 = load %union.UnionType*** %list11, align 8
  %arrayidx12 = getelementptr inbounds %union.UnionType** %34, i64 %add
  store %union.UnionType* %arrayidx9, %union.UnionType** %arrayidx12, align 8
  %35 = load i64* %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._Array** %array, align 8
  %37 = ptrtoint %struct._Array* %36 to i64
  %or13 = or i64 %37, -4503599627370496
  %or14 = or i64 %or13, 844424930131968
  %38 = inttoptr i64 %or14 to i8*
  %o15 = bitcast %union.UnionType* %ret to i8**
  store i8* %38, i8** %o15, align 8
  %39 = bitcast %union.UnionType* %retval to i8*
  %40 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %41 = bitcast double* %coerce.dive1 to i64*
  %42 = load i64* %41, align 1
  ret i64 %42
}

; Function Attrs: nounwind ssp uwtable
define %struct._BlessedObject* @dynamic_blessed_object_cast_code(%union.UnionType* %o) #0 {
entry:
  %o.addr = alloca %union.UnionType*, align 8
  %ret = alloca %struct._BlessedObject*, align 8
  %object = alloca %struct._Object*, align 8
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 8
  store %struct._BlessedObject* null, %struct._BlessedObject** %ret, align 8
  %0 = load %union.UnionType** %o.addr, align 8
  %o1 = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o1, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %3 = load %union.UnionType** %o.addr, align 8
  %o3 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o3, align 8
  %5 = ptrtoint i8* %4 to i64
  %and4 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and4, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.default [
    i64 7, label %do.body
    i64 8, label %sw.bb32
  ]

do.body:                                          ; preds = %entry
  %6 = load %union.UnionType** %o.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %xor = xor i64 %8, -2533274790395904
  %9 = inttoptr i64 %xor to %struct._Object*
  store %struct._Object* %9, %struct._Object** %object, align 8
  %10 = load %struct._Object** %object, align 8
  %v = getelementptr inbounds %struct._Object* %10, i32 0, i32 1
  %o6 = bitcast %union.UnionType* %v to i8**
  %11 = load i8** %o6, align 8
  %12 = ptrtoint i8* %11 to i64
  %and7 = and i64 %12, -4503599627370496
  %cmp8 = icmp eq i64 %and7, -4503599627370496
  %conv9 = zext i1 %cmp8 to i32
  %conv10 = sext i32 %conv9 to i64
  %13 = load %struct._Object** %object, align 8
  %v11 = getelementptr inbounds %struct._Object* %13, i32 0, i32 1
  %o12 = bitcast %union.UnionType* %v11 to i8**
  %14 = load i8** %o12, align 8
  %15 = ptrtoint i8* %14 to i64
  %and13 = and i64 %15, 4222124650659840
  %shr14 = lshr i64 %and13, 48
  %mul15 = mul i64 %conv10, %shr14
  %cmp16 = icmp ne i64 %mul15, 8
  br i1 %cmp16, label %if.then, label %do.end

if.then:                                          ; preds = %do.body
  %16 = load %struct.__sFILE** @__stderrp, align 8
  %17 = load %struct._Object** %object, align 8
  %v18 = getelementptr inbounds %struct._Object* %17, i32 0, i32 1
  %o19 = bitcast %union.UnionType* %v18 to i8**
  %18 = load i8** %o19, align 8
  %19 = ptrtoint i8* %18 to i64
  %and20 = and i64 %19, -4503599627370496
  %cmp21 = icmp eq i64 %and20, -4503599627370496
  %conv22 = zext i1 %cmp21 to i32
  %conv23 = sext i32 %conv22 to i64
  %20 = load %struct._Object** %object, align 8
  %v24 = getelementptr inbounds %struct._Object* %20, i32 0, i32 1
  %o25 = bitcast %union.UnionType* %v24 to i8**
  %21 = load i8** %o25, align 8
  %22 = ptrtoint i8* %21 to i64
  %and26 = and i64 %22, 4222124650659840
  %shr27 = lshr i64 %and26, 48
  %mul28 = mul i64 %conv23, %shr27
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul28)
  call void @__assert_rtn(i8* getelementptr inbounds ([33 x i8]* @__func__.dynamic_blessed_object_cast_code, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 907, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #7
  unreachable

do.end:                                           ; preds = %do.body
  %23 = load %struct._Object** %object, align 8
  %v29 = getelementptr inbounds %struct._Object* %23, i32 0, i32 1
  %o30 = bitcast %union.UnionType* %v29 to i8**
  %24 = load i8** %o30, align 8
  %25 = ptrtoint i8* %24 to i64
  %xor31 = xor i64 %25, -2251799813685248
  %26 = inttoptr i64 %xor31 to %struct._BlessedObject*
  store %struct._BlessedObject* %26, %struct._BlessedObject** %ret, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  %27 = load %union.UnionType** %o.addr, align 8
  %o33 = bitcast %union.UnionType* %27 to i8**
  %28 = load i8** %o33, align 8
  %29 = ptrtoint i8* %28 to i64
  %xor34 = xor i64 %29, -2251799813685248
  %30 = inttoptr i64 %xor34 to %struct._BlessedObject*
  store %struct._BlessedObject* %30, %struct._BlessedObject** %ret, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %31 = load %struct.__sFILE** @__stderrp, align 8
  %32 = load %union.UnionType** %o.addr, align 8
  %o35 = bitcast %union.UnionType* %32 to i8**
  %33 = load i8** %o35, align 8
  %34 = ptrtoint i8* %33 to i64
  %and36 = and i64 %34, -4503599627370496
  %cmp37 = icmp eq i64 %and36, -4503599627370496
  %conv38 = zext i1 %cmp37 to i32
  %conv39 = sext i32 %conv38 to i64
  %35 = load %union.UnionType** %o.addr, align 8
  %o40 = bitcast %union.UnionType* %35 to i8**
  %36 = load i8** %o40, align 8
  %37 = ptrtoint i8* %36 to i64
  %and41 = and i64 %37, 4222124650659840
  %shr42 = lshr i64 %and41, 48
  %mul43 = mul i64 %conv39, %shr42
  %call44 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul43)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb32, %do.end
  %38 = load %struct._BlessedObject** %ret, align 8
  ret %struct._BlessedObject* %38
}

; Function Attrs: nounwind ssp uwtable
define %struct._Object* @new_Object() #0 {
entry:
  %call = tail call i8* @malloc(i64 64)
  %0 = bitcast i8* %call to %struct._Object*
  ret %struct._Object* %0
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %j39 = alloca i32, align 4
  %k42 = alloca i32, align 4
  %d52 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end62 [
    i64 1, label %do.body6
    i64 0, label %do.body28
  ]

do.body6:                                         ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  store i32 %conv5, i32* %i, align 4
  %9 = load %union.UnionType** %b.addr, align 8
  %o7 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o7, align 8
  %11 = ptrtoint i8* %10 to i64
  %and8 = and i64 %11, -4503599627370496
  %cmp9 = icmp eq i64 %and8, -4503599627370496
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %12 = load %union.UnionType** %b.addr, align 8
  %o12 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o12, align 8
  %14 = ptrtoint i8* %13 to i64
  %and13 = and i64 %14, 4222124650659840
  %shr14 = lshr i64 %and13, 48
  %mul15 = mul i64 %conv11, %shr14
  switch i64 %mul15, label %do.end62 [
    i64 1, label %sw.bb16
    i64 0, label %sw.bb22
  ]

sw.bb16:                                          ; preds = %do.body6
  %15 = load %union.UnionType** %b.addr, align 8
  %o17 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o17, align 8
  %17 = ptrtoint i8* %16 to i64
  %conv18 = trunc i64 %17 to i32
  store i32 %conv18, i32* %j, align 4
  %18 = load i32* %i, align 4
  %19 = load i32* %j, align 4
  %add = add nsw i32 %18, %19
  store i32 %add, i32* %k, align 4
  %20 = load i32* %k, align 4
  %conv19 = zext i32 %20 to i64
  %or = or i64 %conv19, -4503599627370496
  %or20 = or i64 %or, 281474976710656
  %21 = inttoptr i64 %or20 to i8*
  %o21 = bitcast %union.UnionType* %ret to i8**
  store i8* %21, i8** %o21, align 8
  br label %do.end62

sw.bb22:                                          ; preds = %do.body6
  %22 = load i32* %i, align 4
  %conv23 = sitofp i32 %22 to double
  %23 = load %union.UnionType** %b.addr, align 8
  %d24 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d24, align 8
  %add25 = fadd double %conv23, %24
  store double %add25, double* %d, align 8
  %25 = load double* %d, align 8
  %d26 = bitcast %union.UnionType* %ret to double*
  store double %25, double* %d26, align 8
  br label %do.end62

do.body28:                                        ; preds = %do.body
  %26 = load %union.UnionType** %b.addr, align 8
  %o29 = bitcast %union.UnionType* %26 to i8**
  %27 = load i8** %o29, align 8
  %28 = ptrtoint i8* %27 to i64
  %and30 = and i64 %28, -4503599627370496
  %cmp31 = icmp eq i64 %and30, -4503599627370496
  %conv32 = zext i1 %cmp31 to i32
  %conv33 = sext i32 %conv32 to i64
  %29 = load %union.UnionType** %b.addr, align 8
  %o34 = bitcast %union.UnionType* %29 to i8**
  %30 = load i8** %o34, align 8
  %31 = ptrtoint i8* %30 to i64
  %and35 = and i64 %31, 4222124650659840
  %shr36 = lshr i64 %and35, 48
  %mul37 = mul i64 %conv33, %shr36
  switch i64 %mul37, label %do.end62 [
    i64 1, label %sw.bb38
    i64 0, label %sw.bb51
  ]

sw.bb38:                                          ; preds = %do.body28
  %32 = load %union.UnionType** %b.addr, align 8
  %o40 = bitcast %union.UnionType* %32 to i8**
  %33 = load i8** %o40, align 8
  %34 = ptrtoint i8* %33 to i64
  %conv41 = trunc i64 %34 to i32
  store i32 %conv41, i32* %j39, align 4
  %35 = load %union.UnionType** %a.addr, align 8
  %d43 = bitcast %union.UnionType* %35 to double*
  %36 = load double* %d43, align 8
  %37 = load i32* %j39, align 4
  %conv44 = sitofp i32 %37 to double
  %add45 = fadd double %36, %conv44
  %conv46 = fptosi double %add45 to i32
  store i32 %conv46, i32* %k42, align 4
  %38 = load i32* %k42, align 4
  %conv47 = zext i32 %38 to i64
  %or48 = or i64 %conv47, -4503599627370496
  %or49 = or i64 %or48, 281474976710656
  %39 = inttoptr i64 %or49 to i8*
  %o50 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o50, align 8
  br label %do.end62

sw.bb51:                                          ; preds = %do.body28
  %40 = load %union.UnionType** %a.addr, align 8
  %d53 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d53, align 8
  %42 = load %union.UnionType** %b.addr, align 8
  %d54 = bitcast %union.UnionType* %42 to double*
  %43 = load double* %d54, align 8
  %add55 = fadd double %41, %43
  store double %add55, double* %d52, align 8
  %44 = load double* %d52, align 8
  %d56 = bitcast %union.UnionType* %ret to double*
  store double %44, double* %d56, align 8
  br label %do.end62

do.end62:                                         ; preds = %sw.bb16, %sw.bb22, %do.body6, %sw.bb38, %sw.bb51, %do.body28, %do.body
  %45 = bitcast %union.UnionType* %retval to i8*
  %46 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %47 = bitcast double* %coerce.dive1 to i64*
  %48 = load i64* %47, align 1
  ret i64 %48
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %j39 = alloca i32, align 4
  %k42 = alloca i32, align 4
  %d52 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end62 [
    i64 1, label %do.body6
    i64 0, label %do.body28
  ]

do.body6:                                         ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  store i32 %conv5, i32* %i, align 4
  %9 = load %union.UnionType** %b.addr, align 8
  %o7 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o7, align 8
  %11 = ptrtoint i8* %10 to i64
  %and8 = and i64 %11, -4503599627370496
  %cmp9 = icmp eq i64 %and8, -4503599627370496
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %12 = load %union.UnionType** %b.addr, align 8
  %o12 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o12, align 8
  %14 = ptrtoint i8* %13 to i64
  %and13 = and i64 %14, 4222124650659840
  %shr14 = lshr i64 %and13, 48
  %mul15 = mul i64 %conv11, %shr14
  switch i64 %mul15, label %do.end62 [
    i64 1, label %sw.bb16
    i64 0, label %sw.bb22
  ]

sw.bb16:                                          ; preds = %do.body6
  %15 = load %union.UnionType** %b.addr, align 8
  %o17 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o17, align 8
  %17 = ptrtoint i8* %16 to i64
  %conv18 = trunc i64 %17 to i32
  store i32 %conv18, i32* %j, align 4
  %18 = load i32* %i, align 4
  %19 = load i32* %j, align 4
  %sub = sub nsw i32 %18, %19
  store i32 %sub, i32* %k, align 4
  %20 = load i32* %k, align 4
  %conv19 = zext i32 %20 to i64
  %or = or i64 %conv19, -4503599627370496
  %or20 = or i64 %or, 281474976710656
  %21 = inttoptr i64 %or20 to i8*
  %o21 = bitcast %union.UnionType* %ret to i8**
  store i8* %21, i8** %o21, align 8
  br label %do.end62

sw.bb22:                                          ; preds = %do.body6
  %22 = load i32* %i, align 4
  %conv23 = sitofp i32 %22 to double
  %23 = load %union.UnionType** %b.addr, align 8
  %d24 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d24, align 8
  %sub25 = fsub double %conv23, %24
  store double %sub25, double* %d, align 8
  %25 = load double* %d, align 8
  %d26 = bitcast %union.UnionType* %ret to double*
  store double %25, double* %d26, align 8
  br label %do.end62

do.body28:                                        ; preds = %do.body
  %26 = load %union.UnionType** %b.addr, align 8
  %o29 = bitcast %union.UnionType* %26 to i8**
  %27 = load i8** %o29, align 8
  %28 = ptrtoint i8* %27 to i64
  %and30 = and i64 %28, -4503599627370496
  %cmp31 = icmp eq i64 %and30, -4503599627370496
  %conv32 = zext i1 %cmp31 to i32
  %conv33 = sext i32 %conv32 to i64
  %29 = load %union.UnionType** %b.addr, align 8
  %o34 = bitcast %union.UnionType* %29 to i8**
  %30 = load i8** %o34, align 8
  %31 = ptrtoint i8* %30 to i64
  %and35 = and i64 %31, 4222124650659840
  %shr36 = lshr i64 %and35, 48
  %mul37 = mul i64 %conv33, %shr36
  switch i64 %mul37, label %do.end62 [
    i64 1, label %sw.bb38
    i64 0, label %sw.bb51
  ]

sw.bb38:                                          ; preds = %do.body28
  %32 = load %union.UnionType** %b.addr, align 8
  %o40 = bitcast %union.UnionType* %32 to i8**
  %33 = load i8** %o40, align 8
  %34 = ptrtoint i8* %33 to i64
  %conv41 = trunc i64 %34 to i32
  store i32 %conv41, i32* %j39, align 4
  %35 = load %union.UnionType** %a.addr, align 8
  %d43 = bitcast %union.UnionType* %35 to double*
  %36 = load double* %d43, align 8
  %37 = load i32* %j39, align 4
  %conv44 = sitofp i32 %37 to double
  %sub45 = fsub double %36, %conv44
  %conv46 = fptosi double %sub45 to i32
  store i32 %conv46, i32* %k42, align 4
  %38 = load i32* %k42, align 4
  %conv47 = zext i32 %38 to i64
  %or48 = or i64 %conv47, -4503599627370496
  %or49 = or i64 %or48, 281474976710656
  %39 = inttoptr i64 %or49 to i8*
  %o50 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o50, align 8
  br label %do.end62

sw.bb51:                                          ; preds = %do.body28
  %40 = load %union.UnionType** %a.addr, align 8
  %d53 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d53, align 8
  %42 = load %union.UnionType** %b.addr, align 8
  %d54 = bitcast %union.UnionType* %42 to double*
  %43 = load double* %d54, align 8
  %sub55 = fsub double %41, %43
  store double %sub55, double* %d52, align 8
  %44 = load double* %d52, align 8
  %d56 = bitcast %union.UnionType* %ret to double*
  store double %44, double* %d56, align 8
  br label %do.end62

do.end62:                                         ; preds = %sw.bb16, %sw.bb22, %do.body6, %sw.bb38, %sw.bb51, %do.body28, %do.body
  %45 = bitcast %union.UnionType* %retval to i8*
  %46 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %47 = bitcast double* %coerce.dive1 to i64*
  %48 = load i64* %47, align 1
  ret i64 %48
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %j40 = alloca i32, align 4
  %k43 = alloca i32, align 4
  %d53 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end63 [
    i64 1, label %do.body6
    i64 0, label %do.body29
  ]

do.body6:                                         ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  store i32 %conv5, i32* %i, align 4
  %9 = load %union.UnionType** %b.addr, align 8
  %o7 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o7, align 8
  %11 = ptrtoint i8* %10 to i64
  %and8 = and i64 %11, -4503599627370496
  %cmp9 = icmp eq i64 %and8, -4503599627370496
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %12 = load %union.UnionType** %b.addr, align 8
  %o12 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o12, align 8
  %14 = ptrtoint i8* %13 to i64
  %and13 = and i64 %14, 4222124650659840
  %shr14 = lshr i64 %and13, 48
  %mul15 = mul i64 %conv11, %shr14
  switch i64 %mul15, label %do.end63 [
    i64 1, label %sw.bb16
    i64 0, label %sw.bb23
  ]

sw.bb16:                                          ; preds = %do.body6
  %15 = load %union.UnionType** %b.addr, align 8
  %o17 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o17, align 8
  %17 = ptrtoint i8* %16 to i64
  %conv18 = trunc i64 %17 to i32
  store i32 %conv18, i32* %j, align 4
  %18 = load i32* %i, align 4
  %19 = load i32* %j, align 4
  %mul19 = mul nsw i32 %18, %19
  store i32 %mul19, i32* %k, align 4
  %20 = load i32* %k, align 4
  %conv20 = zext i32 %20 to i64
  %or = or i64 %conv20, -4503599627370496
  %or21 = or i64 %or, 281474976710656
  %21 = inttoptr i64 %or21 to i8*
  %o22 = bitcast %union.UnionType* %ret to i8**
  store i8* %21, i8** %o22, align 8
  br label %do.end63

sw.bb23:                                          ; preds = %do.body6
  %22 = load i32* %i, align 4
  %conv24 = sitofp i32 %22 to double
  %23 = load %union.UnionType** %b.addr, align 8
  %d25 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d25, align 8
  %mul26 = fmul double %conv24, %24
  store double %mul26, double* %d, align 8
  %25 = load double* %d, align 8
  %d27 = bitcast %union.UnionType* %ret to double*
  store double %25, double* %d27, align 8
  br label %do.end63

do.body29:                                        ; preds = %do.body
  %26 = load %union.UnionType** %b.addr, align 8
  %o30 = bitcast %union.UnionType* %26 to i8**
  %27 = load i8** %o30, align 8
  %28 = ptrtoint i8* %27 to i64
  %and31 = and i64 %28, -4503599627370496
  %cmp32 = icmp eq i64 %and31, -4503599627370496
  %conv33 = zext i1 %cmp32 to i32
  %conv34 = sext i32 %conv33 to i64
  %29 = load %union.UnionType** %b.addr, align 8
  %o35 = bitcast %union.UnionType* %29 to i8**
  %30 = load i8** %o35, align 8
  %31 = ptrtoint i8* %30 to i64
  %and36 = and i64 %31, 4222124650659840
  %shr37 = lshr i64 %and36, 48
  %mul38 = mul i64 %conv34, %shr37
  switch i64 %mul38, label %do.end63 [
    i64 1, label %sw.bb39
    i64 0, label %sw.bb52
  ]

sw.bb39:                                          ; preds = %do.body29
  %32 = load %union.UnionType** %b.addr, align 8
  %o41 = bitcast %union.UnionType* %32 to i8**
  %33 = load i8** %o41, align 8
  %34 = ptrtoint i8* %33 to i64
  %conv42 = trunc i64 %34 to i32
  store i32 %conv42, i32* %j40, align 4
  %35 = load %union.UnionType** %a.addr, align 8
  %d44 = bitcast %union.UnionType* %35 to double*
  %36 = load double* %d44, align 8
  %37 = load i32* %j40, align 4
  %conv45 = sitofp i32 %37 to double
  %mul46 = fmul double %36, %conv45
  %conv47 = fptosi double %mul46 to i32
  store i32 %conv47, i32* %k43, align 4
  %38 = load i32* %k43, align 4
  %conv48 = zext i32 %38 to i64
  %or49 = or i64 %conv48, -4503599627370496
  %or50 = or i64 %or49, 281474976710656
  %39 = inttoptr i64 %or50 to i8*
  %o51 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o51, align 8
  br label %do.end63

sw.bb52:                                          ; preds = %do.body29
  %40 = load %union.UnionType** %a.addr, align 8
  %d54 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d54, align 8
  %42 = load %union.UnionType** %b.addr, align 8
  %d55 = bitcast %union.UnionType* %42 to double*
  %43 = load double* %d55, align 8
  %mul56 = fmul double %41, %43
  store double %mul56, double* %d53, align 8
  %44 = load double* %d53, align 8
  %d57 = bitcast %union.UnionType* %ret to double*
  store double %44, double* %d57, align 8
  br label %do.end63

do.end63:                                         ; preds = %sw.bb16, %sw.bb23, %do.body6, %sw.bb39, %sw.bb52, %do.body29, %do.body
  %45 = bitcast %union.UnionType* %retval to i8*
  %46 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %47 = bitcast double* %coerce.dive1 to i64*
  %48 = load i64* %47, align 1
  ret i64 %48
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %j39 = alloca i32, align 4
  %k42 = alloca i32, align 4
  %d52 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end62 [
    i64 1, label %do.body6
    i64 0, label %do.body28
  ]

do.body6:                                         ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  store i32 %conv5, i32* %i, align 4
  %9 = load %union.UnionType** %b.addr, align 8
  %o7 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o7, align 8
  %11 = ptrtoint i8* %10 to i64
  %and8 = and i64 %11, -4503599627370496
  %cmp9 = icmp eq i64 %and8, -4503599627370496
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = sext i32 %conv10 to i64
  %12 = load %union.UnionType** %b.addr, align 8
  %o12 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o12, align 8
  %14 = ptrtoint i8* %13 to i64
  %and13 = and i64 %14, 4222124650659840
  %shr14 = lshr i64 %and13, 48
  %mul15 = mul i64 %conv11, %shr14
  switch i64 %mul15, label %do.end62 [
    i64 1, label %sw.bb16
    i64 0, label %sw.bb22
  ]

sw.bb16:                                          ; preds = %do.body6
  %15 = load %union.UnionType** %b.addr, align 8
  %o17 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o17, align 8
  %17 = ptrtoint i8* %16 to i64
  %conv18 = trunc i64 %17 to i32
  store i32 %conv18, i32* %j, align 4
  %18 = load i32* %i, align 4
  %19 = load i32* %j, align 4
  %div = sdiv i32 %18, %19
  store i32 %div, i32* %k, align 4
  %20 = load i32* %k, align 4
  %conv19 = zext i32 %20 to i64
  %or = or i64 %conv19, -4503599627370496
  %or20 = or i64 %or, 281474976710656
  %21 = inttoptr i64 %or20 to i8*
  %o21 = bitcast %union.UnionType* %ret to i8**
  store i8* %21, i8** %o21, align 8
  br label %do.end62

sw.bb22:                                          ; preds = %do.body6
  %22 = load i32* %i, align 4
  %conv23 = sitofp i32 %22 to double
  %23 = load %union.UnionType** %b.addr, align 8
  %d24 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d24, align 8
  %div25 = fdiv double %conv23, %24
  store double %div25, double* %d, align 8
  %25 = load double* %d, align 8
  %d26 = bitcast %union.UnionType* %ret to double*
  store double %25, double* %d26, align 8
  br label %do.end62

do.body28:                                        ; preds = %do.body
  %26 = load %union.UnionType** %b.addr, align 8
  %o29 = bitcast %union.UnionType* %26 to i8**
  %27 = load i8** %o29, align 8
  %28 = ptrtoint i8* %27 to i64
  %and30 = and i64 %28, -4503599627370496
  %cmp31 = icmp eq i64 %and30, -4503599627370496
  %conv32 = zext i1 %cmp31 to i32
  %conv33 = sext i32 %conv32 to i64
  %29 = load %union.UnionType** %b.addr, align 8
  %o34 = bitcast %union.UnionType* %29 to i8**
  %30 = load i8** %o34, align 8
  %31 = ptrtoint i8* %30 to i64
  %and35 = and i64 %31, 4222124650659840
  %shr36 = lshr i64 %and35, 48
  %mul37 = mul i64 %conv33, %shr36
  switch i64 %mul37, label %do.end62 [
    i64 1, label %sw.bb38
    i64 0, label %sw.bb51
  ]

sw.bb38:                                          ; preds = %do.body28
  %32 = load %union.UnionType** %b.addr, align 8
  %o40 = bitcast %union.UnionType* %32 to i8**
  %33 = load i8** %o40, align 8
  %34 = ptrtoint i8* %33 to i64
  %conv41 = trunc i64 %34 to i32
  store i32 %conv41, i32* %j39, align 4
  %35 = load %union.UnionType** %a.addr, align 8
  %d43 = bitcast %union.UnionType* %35 to double*
  %36 = load double* %d43, align 8
  %37 = load i32* %j39, align 4
  %conv44 = sitofp i32 %37 to double
  %div45 = fdiv double %36, %conv44
  %conv46 = fptosi double %div45 to i32
  store i32 %conv46, i32* %k42, align 4
  %38 = load i32* %k42, align 4
  %conv47 = zext i32 %38 to i64
  %or48 = or i64 %conv47, -4503599627370496
  %or49 = or i64 %or48, 281474976710656
  %39 = inttoptr i64 %or49 to i8*
  %o50 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o50, align 8
  br label %do.end62

sw.bb51:                                          ; preds = %do.body28
  %40 = load %union.UnionType** %a.addr, align 8
  %d53 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d53, align 8
  %42 = load %union.UnionType** %b.addr, align 8
  %d54 = bitcast %union.UnionType* %42 to double*
  %43 = load double* %d54, align 8
  %div55 = fdiv double %41, %43
  store double %div55, double* %d52, align 8
  %44 = load double* %d52, align 8
  %d56 = bitcast %union.UnionType* %ret to double*
  store double %44, double* %d56, align 8
  br label %do.end62

do.end62:                                         ; preds = %sw.bb16, %sw.bb22, %do.body6, %sw.bb38, %sw.bb51, %do.body28, %do.body
  %45 = bitcast %union.UnionType* %retval to i8*
  %46 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %47 = bitcast double* %coerce.dive1 to i64*
  %48 = load i64* %47, align 1
  ret i64 %48
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %i46 = alloca i32, align 4
  %d57 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end73 [
    i64 1, label %do.body4
    i64 0, label %do.body35
  ]

do.body4:                                         ; preds = %do.body
  %6 = load %union.UnionType** %b.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %and6 = and i64 %8, -4503599627370496
  %cmp7 = icmp eq i64 %and6, -4503599627370496
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = sext i32 %conv8 to i64
  %9 = load %union.UnionType** %b.addr, align 8
  %o10 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o10, align 8
  %11 = ptrtoint i8* %10 to i64
  %and11 = and i64 %11, 4222124650659840
  %shr12 = lshr i64 %and11, 48
  %mul13 = mul i64 %conv9, %shr12
  switch i64 %mul13, label %do.end73 [
    i64 1, label %sw.bb14
    i64 0, label %sw.bb22
  ]

sw.bb14:                                          ; preds = %do.body4
  %12 = load %union.UnionType** %a.addr, align 8
  %o15 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o15, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load %union.UnionType** %b.addr, align 8
  %o16 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o16, align 8
  %17 = ptrtoint i8* %16 to i64
  %cmp17 = icmp eq i64 %14, %17
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %i, align 4
  %18 = load i32* %i, align 4
  %conv19 = zext i32 %18 to i64
  %or = or i64 %conv19, -4503599627370496
  %or20 = or i64 %or, 281474976710656
  %19 = inttoptr i64 %or20 to i8*
  %o21 = bitcast %union.UnionType* %ret to i8**
  store i8* %19, i8** %o21, align 8
  br label %do.end73

sw.bb22:                                          ; preds = %do.body4
  %20 = load %union.UnionType** %a.addr, align 8
  %o23 = bitcast %union.UnionType* %20 to i8**
  %21 = load i8** %o23, align 8
  %22 = ptrtoint i8* %21 to i64
  %conv24 = sitofp i64 %22 to double
  %23 = load %union.UnionType** %b.addr, align 8
  %d25 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d25, align 8
  %cmp26 = fcmp oeq double %conv24, %24
  %conv27 = zext i1 %cmp26 to i32
  %conv28 = sitofp i32 %conv27 to double
  store double %conv28, double* %d, align 8
  %25 = load double* %d, align 8
  %conv29 = fptosi double %25 to i32
  %conv30 = zext i32 %conv29 to i64
  %or31 = or i64 %conv30, -4503599627370496
  %or32 = or i64 %or31, 281474976710656
  %26 = inttoptr i64 %or32 to i8*
  %o33 = bitcast %union.UnionType* %ret to i8**
  store i8* %26, i8** %o33, align 8
  br label %do.end73

do.body35:                                        ; preds = %do.body
  %27 = load %union.UnionType** %b.addr, align 8
  %o36 = bitcast %union.UnionType* %27 to i8**
  %28 = load i8** %o36, align 8
  %29 = ptrtoint i8* %28 to i64
  %and37 = and i64 %29, -4503599627370496
  %cmp38 = icmp eq i64 %and37, -4503599627370496
  %conv39 = zext i1 %cmp38 to i32
  %conv40 = sext i32 %conv39 to i64
  %30 = load %union.UnionType** %b.addr, align 8
  %o41 = bitcast %union.UnionType* %30 to i8**
  %31 = load i8** %o41, align 8
  %32 = ptrtoint i8* %31 to i64
  %and42 = and i64 %32, 4222124650659840
  %shr43 = lshr i64 %and42, 48
  %mul44 = mul i64 %conv40, %shr43
  switch i64 %mul44, label %do.end73 [
    i64 1, label %sw.bb45
    i64 0, label %sw.bb56
  ]

sw.bb45:                                          ; preds = %do.body35
  %33 = load %union.UnionType** %a.addr, align 8
  %d47 = bitcast %union.UnionType* %33 to double*
  %34 = load double* %d47, align 8
  %35 = load %union.UnionType** %b.addr, align 8
  %o48 = bitcast %union.UnionType* %35 to i8**
  %36 = load i8** %o48, align 8
  %37 = ptrtoint i8* %36 to i64
  %conv49 = sitofp i64 %37 to double
  %cmp50 = fcmp oeq double %34, %conv49
  %conv51 = zext i1 %cmp50 to i32
  store i32 %conv51, i32* %i46, align 4
  %38 = load i32* %i46, align 4
  %conv52 = zext i32 %38 to i64
  %or53 = or i64 %conv52, -4503599627370496
  %or54 = or i64 %or53, 281474976710656
  %39 = inttoptr i64 %or54 to i8*
  %o55 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o55, align 8
  br label %do.end73

sw.bb56:                                          ; preds = %do.body35
  %40 = load %union.UnionType** %a.addr, align 8
  %d58 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d58, align 8
  %42 = load %union.UnionType** %b.addr, align 8
  %d59 = bitcast %union.UnionType* %42 to double*
  %43 = load double* %d59, align 8
  %cmp60 = fcmp oeq double %41, %43
  %conv61 = zext i1 %cmp60 to i32
  %conv62 = sitofp i32 %conv61 to double
  store double %conv62, double* %d57, align 8
  %44 = load double* %d57, align 8
  %conv63 = fptosi double %44 to i32
  %conv64 = zext i32 %conv63 to i64
  %or65 = or i64 %conv64, -4503599627370496
  %or66 = or i64 %or65, 281474976710656
  %45 = inttoptr i64 %or66 to i8*
  %o67 = bitcast %union.UnionType* %ret to i8**
  store i8* %45, i8** %o67, align 8
  br label %do.end73

do.end73:                                         ; preds = %sw.bb14, %sw.bb22, %do.body4, %sw.bb45, %sw.bb56, %do.body35, %do.body
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %48 = bitcast double* %coerce.dive1 to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %i46 = alloca i32, align 4
  %d57 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end73 [
    i64 1, label %do.body4
    i64 0, label %do.body35
  ]

do.body4:                                         ; preds = %do.body
  %6 = load %union.UnionType** %b.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %and6 = and i64 %8, -4503599627370496
  %cmp7 = icmp eq i64 %and6, -4503599627370496
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = sext i32 %conv8 to i64
  %9 = load %union.UnionType** %b.addr, align 8
  %o10 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o10, align 8
  %11 = ptrtoint i8* %10 to i64
  %and11 = and i64 %11, 4222124650659840
  %shr12 = lshr i64 %and11, 48
  %mul13 = mul i64 %conv9, %shr12
  switch i64 %mul13, label %do.end73 [
    i64 1, label %sw.bb14
    i64 0, label %sw.bb22
  ]

sw.bb14:                                          ; preds = %do.body4
  %12 = load %union.UnionType** %a.addr, align 8
  %o15 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o15, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load %union.UnionType** %b.addr, align 8
  %o16 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o16, align 8
  %17 = ptrtoint i8* %16 to i64
  %cmp17 = icmp ne i64 %14, %17
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %i, align 4
  %18 = load i32* %i, align 4
  %conv19 = zext i32 %18 to i64
  %or = or i64 %conv19, -4503599627370496
  %or20 = or i64 %or, 281474976710656
  %19 = inttoptr i64 %or20 to i8*
  %o21 = bitcast %union.UnionType* %ret to i8**
  store i8* %19, i8** %o21, align 8
  br label %do.end73

sw.bb22:                                          ; preds = %do.body4
  %20 = load %union.UnionType** %a.addr, align 8
  %o23 = bitcast %union.UnionType* %20 to i8**
  %21 = load i8** %o23, align 8
  %22 = ptrtoint i8* %21 to i64
  %conv24 = sitofp i64 %22 to double
  %23 = load %union.UnionType** %b.addr, align 8
  %d25 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d25, align 8
  %cmp26 = fcmp une double %conv24, %24
  %conv27 = zext i1 %cmp26 to i32
  %conv28 = sitofp i32 %conv27 to double
  store double %conv28, double* %d, align 8
  %25 = load double* %d, align 8
  %conv29 = fptosi double %25 to i32
  %conv30 = zext i32 %conv29 to i64
  %or31 = or i64 %conv30, -4503599627370496
  %or32 = or i64 %or31, 281474976710656
  %26 = inttoptr i64 %or32 to i8*
  %o33 = bitcast %union.UnionType* %ret to i8**
  store i8* %26, i8** %o33, align 8
  br label %do.end73

do.body35:                                        ; preds = %do.body
  %27 = load %union.UnionType** %b.addr, align 8
  %o36 = bitcast %union.UnionType* %27 to i8**
  %28 = load i8** %o36, align 8
  %29 = ptrtoint i8* %28 to i64
  %and37 = and i64 %29, -4503599627370496
  %cmp38 = icmp eq i64 %and37, -4503599627370496
  %conv39 = zext i1 %cmp38 to i32
  %conv40 = sext i32 %conv39 to i64
  %30 = load %union.UnionType** %b.addr, align 8
  %o41 = bitcast %union.UnionType* %30 to i8**
  %31 = load i8** %o41, align 8
  %32 = ptrtoint i8* %31 to i64
  %and42 = and i64 %32, 4222124650659840
  %shr43 = lshr i64 %and42, 48
  %mul44 = mul i64 %conv40, %shr43
  switch i64 %mul44, label %do.end73 [
    i64 1, label %sw.bb45
    i64 0, label %sw.bb56
  ]

sw.bb45:                                          ; preds = %do.body35
  %33 = load %union.UnionType** %a.addr, align 8
  %d47 = bitcast %union.UnionType* %33 to double*
  %34 = load double* %d47, align 8
  %35 = load %union.UnionType** %b.addr, align 8
  %o48 = bitcast %union.UnionType* %35 to i8**
  %36 = load i8** %o48, align 8
  %37 = ptrtoint i8* %36 to i64
  %conv49 = sitofp i64 %37 to double
  %cmp50 = fcmp une double %34, %conv49
  %conv51 = zext i1 %cmp50 to i32
  store i32 %conv51, i32* %i46, align 4
  %38 = load i32* %i46, align 4
  %conv52 = zext i32 %38 to i64
  %or53 = or i64 %conv52, -4503599627370496
  %or54 = or i64 %or53, 281474976710656
  %39 = inttoptr i64 %or54 to i8*
  %o55 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o55, align 8
  br label %do.end73

sw.bb56:                                          ; preds = %do.body35
  %40 = load %union.UnionType** %a.addr, align 8
  %d58 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d58, align 8
  %42 = load %union.UnionType** %b.addr, align 8
  %d59 = bitcast %union.UnionType* %42 to double*
  %43 = load double* %d59, align 8
  %cmp60 = fcmp une double %41, %43
  %conv61 = zext i1 %cmp60 to i32
  %conv62 = sitofp i32 %conv61 to double
  store double %conv62, double* %d57, align 8
  %44 = load double* %d57, align 8
  %conv63 = fptosi double %44 to i32
  %conv64 = zext i32 %conv63 to i64
  %or65 = or i64 %conv64, -4503599627370496
  %or66 = or i64 %or65, 281474976710656
  %45 = inttoptr i64 %or66 to i8*
  %o67 = bitcast %union.UnionType* %ret to i8**
  store i8* %45, i8** %o67, align 8
  br label %do.end73

do.end73:                                         ; preds = %sw.bb14, %sw.bb22, %do.body4, %sw.bb45, %sw.bb56, %do.body35, %do.body
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %48 = bitcast double* %coerce.dive1 to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %i46 = alloca i32, align 4
  %d57 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end73 [
    i64 1, label %do.body4
    i64 0, label %do.body35
  ]

do.body4:                                         ; preds = %do.body
  %6 = load %union.UnionType** %b.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %and6 = and i64 %8, -4503599627370496
  %cmp7 = icmp eq i64 %and6, -4503599627370496
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = sext i32 %conv8 to i64
  %9 = load %union.UnionType** %b.addr, align 8
  %o10 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o10, align 8
  %11 = ptrtoint i8* %10 to i64
  %and11 = and i64 %11, 4222124650659840
  %shr12 = lshr i64 %and11, 48
  %mul13 = mul i64 %conv9, %shr12
  switch i64 %mul13, label %do.end73 [
    i64 1, label %sw.bb14
    i64 0, label %sw.bb22
  ]

sw.bb14:                                          ; preds = %do.body4
  %12 = load %union.UnionType** %a.addr, align 8
  %o15 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o15, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load %union.UnionType** %b.addr, align 8
  %o16 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o16, align 8
  %17 = ptrtoint i8* %16 to i64
  %cmp17 = icmp sgt i64 %14, %17
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %i, align 4
  %18 = load i32* %i, align 4
  %conv19 = zext i32 %18 to i64
  %or = or i64 %conv19, -4503599627370496
  %or20 = or i64 %or, 281474976710656
  %19 = inttoptr i64 %or20 to i8*
  %o21 = bitcast %union.UnionType* %ret to i8**
  store i8* %19, i8** %o21, align 8
  br label %do.end73

sw.bb22:                                          ; preds = %do.body4
  %20 = load %union.UnionType** %a.addr, align 8
  %o23 = bitcast %union.UnionType* %20 to i8**
  %21 = load i8** %o23, align 8
  %22 = ptrtoint i8* %21 to i64
  %conv24 = sitofp i64 %22 to double
  %23 = load %union.UnionType** %b.addr, align 8
  %d25 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d25, align 8
  %cmp26 = fcmp ogt double %conv24, %24
  %conv27 = zext i1 %cmp26 to i32
  %conv28 = sitofp i32 %conv27 to double
  store double %conv28, double* %d, align 8
  %25 = load double* %d, align 8
  %conv29 = fptosi double %25 to i32
  %conv30 = zext i32 %conv29 to i64
  %or31 = or i64 %conv30, -4503599627370496
  %or32 = or i64 %or31, 281474976710656
  %26 = inttoptr i64 %or32 to i8*
  %o33 = bitcast %union.UnionType* %ret to i8**
  store i8* %26, i8** %o33, align 8
  br label %do.end73

do.body35:                                        ; preds = %do.body
  %27 = load %union.UnionType** %b.addr, align 8
  %o36 = bitcast %union.UnionType* %27 to i8**
  %28 = load i8** %o36, align 8
  %29 = ptrtoint i8* %28 to i64
  %and37 = and i64 %29, -4503599627370496
  %cmp38 = icmp eq i64 %and37, -4503599627370496
  %conv39 = zext i1 %cmp38 to i32
  %conv40 = sext i32 %conv39 to i64
  %30 = load %union.UnionType** %b.addr, align 8
  %o41 = bitcast %union.UnionType* %30 to i8**
  %31 = load i8** %o41, align 8
  %32 = ptrtoint i8* %31 to i64
  %and42 = and i64 %32, 4222124650659840
  %shr43 = lshr i64 %and42, 48
  %mul44 = mul i64 %conv40, %shr43
  switch i64 %mul44, label %do.end73 [
    i64 1, label %sw.bb45
    i64 0, label %sw.bb56
  ]

sw.bb45:                                          ; preds = %do.body35
  %33 = load %union.UnionType** %a.addr, align 8
  %d47 = bitcast %union.UnionType* %33 to double*
  %34 = load double* %d47, align 8
  %35 = load %union.UnionType** %b.addr, align 8
  %o48 = bitcast %union.UnionType* %35 to i8**
  %36 = load i8** %o48, align 8
  %37 = ptrtoint i8* %36 to i64
  %conv49 = sitofp i64 %37 to double
  %cmp50 = fcmp ogt double %34, %conv49
  %conv51 = zext i1 %cmp50 to i32
  store i32 %conv51, i32* %i46, align 4
  %38 = load i32* %i46, align 4
  %conv52 = zext i32 %38 to i64
  %or53 = or i64 %conv52, -4503599627370496
  %or54 = or i64 %or53, 281474976710656
  %39 = inttoptr i64 %or54 to i8*
  %o55 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o55, align 8
  br label %do.end73

sw.bb56:                                          ; preds = %do.body35
  %40 = load %union.UnionType** %a.addr, align 8
  %d58 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d58, align 8
  %42 = load %union.UnionType** %b.addr, align 8
  %d59 = bitcast %union.UnionType* %42 to double*
  %43 = load double* %d59, align 8
  %cmp60 = fcmp ogt double %41, %43
  %conv61 = zext i1 %cmp60 to i32
  %conv62 = sitofp i32 %conv61 to double
  store double %conv62, double* %d57, align 8
  %44 = load double* %d57, align 8
  %conv63 = fptosi double %44 to i32
  %conv64 = zext i32 %conv63 to i64
  %or65 = or i64 %conv64, -4503599627370496
  %or66 = or i64 %or65, 281474976710656
  %45 = inttoptr i64 %or66 to i8*
  %o67 = bitcast %union.UnionType* %ret to i8**
  store i8* %45, i8** %o67, align 8
  br label %do.end73

do.end73:                                         ; preds = %sw.bb14, %sw.bb22, %do.body4, %sw.bb45, %sw.bb56, %do.body35, %do.body
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %48 = bitcast double* %coerce.dive1 to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %i46 = alloca i32, align 4
  %d57 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end73 [
    i64 1, label %do.body4
    i64 0, label %do.body35
  ]

do.body4:                                         ; preds = %do.body
  %6 = load %union.UnionType** %b.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %and6 = and i64 %8, -4503599627370496
  %cmp7 = icmp eq i64 %and6, -4503599627370496
  %conv8 = zext i1 %cmp7 to i32
  %conv9 = sext i32 %conv8 to i64
  %9 = load %union.UnionType** %b.addr, align 8
  %o10 = bitcast %union.UnionType* %9 to i8**
  %10 = load i8** %o10, align 8
  %11 = ptrtoint i8* %10 to i64
  %and11 = and i64 %11, 4222124650659840
  %shr12 = lshr i64 %and11, 48
  %mul13 = mul i64 %conv9, %shr12
  switch i64 %mul13, label %do.end73 [
    i64 1, label %sw.bb14
    i64 0, label %sw.bb22
  ]

sw.bb14:                                          ; preds = %do.body4
  %12 = load %union.UnionType** %a.addr, align 8
  %o15 = bitcast %union.UnionType* %12 to i8**
  %13 = load i8** %o15, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load %union.UnionType** %b.addr, align 8
  %o16 = bitcast %union.UnionType* %15 to i8**
  %16 = load i8** %o16, align 8
  %17 = ptrtoint i8* %16 to i64
  %cmp17 = icmp slt i64 %14, %17
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %i, align 4
  %18 = load i32* %i, align 4
  %conv19 = zext i32 %18 to i64
  %or = or i64 %conv19, -4503599627370496
  %or20 = or i64 %or, 281474976710656
  %19 = inttoptr i64 %or20 to i8*
  %o21 = bitcast %union.UnionType* %ret to i8**
  store i8* %19, i8** %o21, align 8
  br label %do.end73

sw.bb22:                                          ; preds = %do.body4
  %20 = load %union.UnionType** %a.addr, align 8
  %o23 = bitcast %union.UnionType* %20 to i8**
  %21 = load i8** %o23, align 8
  %22 = ptrtoint i8* %21 to i64
  %conv24 = sitofp i64 %22 to double
  %23 = load %union.UnionType** %b.addr, align 8
  %d25 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d25, align 8
  %cmp26 = fcmp olt double %conv24, %24
  %conv27 = zext i1 %cmp26 to i32
  %conv28 = sitofp i32 %conv27 to double
  store double %conv28, double* %d, align 8
  %25 = load double* %d, align 8
  %conv29 = fptosi double %25 to i32
  %conv30 = zext i32 %conv29 to i64
  %or31 = or i64 %conv30, -4503599627370496
  %or32 = or i64 %or31, 281474976710656
  %26 = inttoptr i64 %or32 to i8*
  %o33 = bitcast %union.UnionType* %ret to i8**
  store i8* %26, i8** %o33, align 8
  br label %do.end73

do.body35:                                        ; preds = %do.body
  %27 = load %union.UnionType** %b.addr, align 8
  %o36 = bitcast %union.UnionType* %27 to i8**
  %28 = load i8** %o36, align 8
  %29 = ptrtoint i8* %28 to i64
  %and37 = and i64 %29, -4503599627370496
  %cmp38 = icmp eq i64 %and37, -4503599627370496
  %conv39 = zext i1 %cmp38 to i32
  %conv40 = sext i32 %conv39 to i64
  %30 = load %union.UnionType** %b.addr, align 8
  %o41 = bitcast %union.UnionType* %30 to i8**
  %31 = load i8** %o41, align 8
  %32 = ptrtoint i8* %31 to i64
  %and42 = and i64 %32, 4222124650659840
  %shr43 = lshr i64 %and42, 48
  %mul44 = mul i64 %conv40, %shr43
  switch i64 %mul44, label %do.end73 [
    i64 1, label %sw.bb45
    i64 0, label %sw.bb56
  ]

sw.bb45:                                          ; preds = %do.body35
  %33 = load %union.UnionType** %a.addr, align 8
  %d47 = bitcast %union.UnionType* %33 to double*
  %34 = load double* %d47, align 8
  %35 = load %union.UnionType** %b.addr, align 8
  %o48 = bitcast %union.UnionType* %35 to i8**
  %36 = load i8** %o48, align 8
  %37 = ptrtoint i8* %36 to i64
  %conv49 = sitofp i64 %37 to double
  %cmp50 = fcmp olt double %34, %conv49
  %conv51 = zext i1 %cmp50 to i32
  store i32 %conv51, i32* %i46, align 4
  %38 = load i32* %i46, align 4
  %conv52 = zext i32 %38 to i64
  %or53 = or i64 %conv52, -4503599627370496
  %or54 = or i64 %or53, 281474976710656
  %39 = inttoptr i64 %or54 to i8*
  %o55 = bitcast %union.UnionType* %ret to i8**
  store i8* %39, i8** %o55, align 8
  br label %do.end73

sw.bb56:                                          ; preds = %do.body35
  %40 = load %union.UnionType** %a.addr, align 8
  %d58 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d58, align 8
  %42 = load %union.UnionType** %b.addr, align 8
  %d59 = bitcast %union.UnionType* %42 to double*
  %43 = load double* %d59, align 8
  %cmp60 = fcmp olt double %41, %43
  %conv61 = zext i1 %cmp60 to i32
  %conv62 = sitofp i32 %conv61 to double
  store double %conv62, double* %d57, align 8
  %44 = load double* %d57, align 8
  %conv63 = fptosi double %44 to i32
  %conv64 = zext i32 %conv63 to i64
  %or65 = or i64 %conv64, -4503599627370496
  %or66 = or i64 %or65, 281474976710656
  %45 = inttoptr i64 %or66 to i8*
  %o67 = bitcast %union.UnionType* %ret to i8**
  store i8* %45, i8** %o67, align 8
  br label %do.end73

do.end73:                                         ; preds = %sw.bb14, %sw.bb22, %do.body4, %sw.bb45, %sw.bb56, %do.body35, %do.body
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %48 = bitcast double* %coerce.dive1 to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addInt(%union.UnionType* %a, i32 %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %9 = load i32* %b.addr, align 4
  %add = add nsw i32 %conv5, %9
  store i32 %add, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv6 = zext i32 %10 to i64
  %or = or i64 %conv6, -4503599627370496
  %or7 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or7 to i8*
  %o8 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o8, align 8
  br label %do.end

sw.bb9:                                           ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv10 = sitofp i32 %14 to double
  %add11 = fadd double %13, %conv10
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %add11, double* %d12, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb9, %do.body
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive1 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subInt(%union.UnionType* %a, i32 %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %9 = load i32* %b.addr, align 4
  %sub = sub nsw i32 %conv5, %9
  store i32 %sub, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv6 = zext i32 %10 to i64
  %or = or i64 %conv6, -4503599627370496
  %or7 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or7 to i8*
  %o8 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o8, align 8
  br label %do.end

sw.bb9:                                           ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv10 = sitofp i32 %14 to double
  %sub11 = fsub double %13, %conv10
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %sub11, double* %d12, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb9, %do.body
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive1 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulInt(%union.UnionType* %a, i32 %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb10
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %9 = load i32* %b.addr, align 4
  %mul6 = mul nsw i32 %conv5, %9
  store i32 %mul6, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv7 = zext i32 %10 to i64
  %or = or i64 %conv7, -4503599627370496
  %or8 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or8 to i8*
  %o9 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o9, align 8
  br label %do.end

sw.bb10:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv11 = sitofp i32 %14 to double
  %mul12 = fmul double %13, %conv11
  %d13 = bitcast %union.UnionType* %ret to double*
  store double %mul12, double* %d13, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb10, %do.body
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive1 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divInt(%union.UnionType* %a, i32 %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %9 = load i32* %b.addr, align 4
  %div = sdiv i32 %conv5, %9
  store i32 %div, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv6 = zext i32 %10 to i64
  %or = or i64 %conv6, -4503599627370496
  %or7 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or7 to i8*
  %o8 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o8, align 8
  br label %do.end

sw.bb9:                                           ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv10 = sitofp i32 %14 to double
  %div11 = fdiv double %13, %conv10
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %div11, double* %d12, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb9, %do.body
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive1 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqInt(%union.UnionType* %a, i32 %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %9 = load i32* %b.addr, align 4
  %cmp6 = icmp eq i32 %conv5, %9
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv13 = sitofp i32 %14 to double
  %cmp14 = fcmp oeq double %13, %conv13
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neInt(%union.UnionType* %a, i32 %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %9 = load i32* %b.addr, align 4
  %cmp6 = icmp ne i32 %conv5, %9
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv13 = sitofp i32 %14 to double
  %cmp14 = fcmp une double %13, %conv13
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtInt(%union.UnionType* %a, i32 %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %9 = load i32* %b.addr, align 4
  %cmp6 = icmp sgt i32 %conv5, %9
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv13 = sitofp i32 %14 to double
  %cmp14 = fcmp ogt double %13, %conv13
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltInt(%union.UnionType* %a, i32 %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %9 = load i32* %b.addr, align 4
  %cmp6 = icmp slt i32 %conv5, %9
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv13 = sitofp i32 %14 to double
  %cmp14 = fcmp olt double %13, %conv13
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addInt2(i32 %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = trunc i64 %9 to i32
  %add = add nsw i32 %6, %conv5
  store i32 %add, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv6 = zext i32 %10 to i64
  %or = or i64 %conv6, -4503599627370496
  %or7 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or7 to i8*
  %o8 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o8, align 8
  br label %do.end

sw.bb9:                                           ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv10 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %add11 = fadd double %conv10, %14
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %add11, double* %d12, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb9, %do.body
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive1 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subInt2(i32 %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = trunc i64 %9 to i32
  %sub = sub nsw i32 %6, %conv5
  store i32 %sub, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv6 = zext i32 %10 to i64
  %or = or i64 %conv6, -4503599627370496
  %or7 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or7 to i8*
  %o8 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o8, align 8
  br label %do.end

sw.bb9:                                           ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv10 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %sub11 = fsub double %conv10, %14
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %sub11, double* %d12, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb9, %do.body
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive1 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulInt2(i32 %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb10
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = trunc i64 %9 to i32
  %mul6 = mul nsw i32 %6, %conv5
  store i32 %mul6, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv7 = zext i32 %10 to i64
  %or = or i64 %conv7, -4503599627370496
  %or8 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or8 to i8*
  %o9 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o9, align 8
  br label %do.end

sw.bb10:                                          ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv11 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %mul12 = fmul double %conv11, %14
  %d13 = bitcast %union.UnionType* %ret to double*
  store double %mul12, double* %d13, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb10, %do.body
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive1 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divInt2(i32 %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = trunc i64 %9 to i32
  %div = sdiv i32 %6, %conv5
  store i32 %div, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv6 = zext i32 %10 to i64
  %or = or i64 %conv6, -4503599627370496
  %or7 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or7 to i8*
  %o8 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o8, align 8
  br label %do.end

sw.bb9:                                           ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv10 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %div11 = fdiv double %conv10, %14
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %div11, double* %d12, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb9, %do.body
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %17 = bitcast double* %coerce.dive1 to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqInt2(i32 %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = trunc i64 %9 to i32
  %cmp6 = icmp eq i32 %6, %conv5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv13 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %cmp14 = fcmp oeq double %conv13, %14
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neInt2(i32 %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = trunc i64 %9 to i32
  %cmp6 = icmp ne i32 %6, %conv5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv13 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %cmp14 = fcmp une double %conv13, %14
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtInt2(i32 %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = trunc i64 %9 to i32
  %cmp6 = icmp sgt i32 %6, %conv5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv13 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %cmp14 = fcmp ogt double %conv13, %14
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltInt2(i32 %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = trunc i64 %9 to i32
  %cmp6 = icmp slt i32 %6, %conv5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv13 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %cmp14 = fcmp olt double %conv13, %14
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addDouble(%union.UnionType* %a, double %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %9 = load double* %b.addr, align 8
  %add = fadd double %conv6, %9
  %d = bitcast %union.UnionType* %ret to double*
  store double %add, double* %d, align 8
  br label %do.end

sw.bb7:                                           ; preds = %do.body
  %10 = load %union.UnionType** %a.addr, align 8
  %d8 = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d8, align 8
  %12 = load double* %b.addr, align 8
  %add9 = fadd double %11, %12
  %d10 = bitcast %union.UnionType* %ret to double*
  store double %add9, double* %d10, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb7, %do.body
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %15 = bitcast double* %coerce.dive1 to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subDouble(%union.UnionType* %a, double %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %9 = load double* %b.addr, align 8
  %sub = fsub double %conv6, %9
  %d = bitcast %union.UnionType* %ret to double*
  store double %sub, double* %d, align 8
  br label %do.end

sw.bb7:                                           ; preds = %do.body
  %10 = load %union.UnionType** %a.addr, align 8
  %d8 = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d8, align 8
  %12 = load double* %b.addr, align 8
  %sub9 = fsub double %11, %12
  %d10 = bitcast %union.UnionType* %ret to double*
  store double %sub9, double* %d10, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb7, %do.body
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %15 = bitcast double* %coerce.dive1 to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulDouble(%union.UnionType* %a, double %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb8
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %9 = load double* %b.addr, align 8
  %mul7 = fmul double %conv6, %9
  %d = bitcast %union.UnionType* %ret to double*
  store double %mul7, double* %d, align 8
  br label %do.end

sw.bb8:                                           ; preds = %do.body
  %10 = load %union.UnionType** %a.addr, align 8
  %d9 = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d9, align 8
  %12 = load double* %b.addr, align 8
  %mul10 = fmul double %11, %12
  %d11 = bitcast %union.UnionType* %ret to double*
  store double %mul10, double* %d11, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb8, %do.body
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %15 = bitcast double* %coerce.dive1 to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divDouble(%union.UnionType* %a, double %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %9 = load double* %b.addr, align 8
  %div = fdiv double %conv6, %9
  %d = bitcast %union.UnionType* %ret to double*
  store double %div, double* %d, align 8
  br label %do.end

sw.bb7:                                           ; preds = %do.body
  %10 = load %union.UnionType** %a.addr, align 8
  %d8 = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d8, align 8
  %12 = load double* %b.addr, align 8
  %div9 = fdiv double %11, %12
  %d10 = bitcast %union.UnionType* %ret to double*
  store double %div9, double* %d10, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb7, %do.body
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %15 = bitcast double* %coerce.dive1 to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqDouble(%union.UnionType* %a, double %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %9 = load double* %b.addr, align 8
  %cmp7 = fcmp oeq double %conv6, %9
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv9 = zext i32 %10 to i64
  %or = or i64 %conv9, -4503599627370496
  %or10 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or10 to i8*
  %o11 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o11, align 8
  br label %do.end

sw.bb12:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load double* %b.addr, align 8
  %cmp14 = fcmp oeq double %13, %14
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i13, align 4
  %15 = load i32* %i13, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb12, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neDouble(%union.UnionType* %a, double %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %9 = load double* %b.addr, align 8
  %cmp7 = fcmp une double %conv6, %9
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv9 = zext i32 %10 to i64
  %or = or i64 %conv9, -4503599627370496
  %or10 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or10 to i8*
  %o11 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o11, align 8
  br label %do.end

sw.bb12:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load double* %b.addr, align 8
  %cmp14 = fcmp une double %13, %14
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i13, align 4
  %15 = load i32* %i13, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb12, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtDouble(%union.UnionType* %a, double %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %9 = load double* %b.addr, align 8
  %cmp7 = fcmp ogt double %conv6, %9
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv9 = zext i32 %10 to i64
  %or = or i64 %conv9, -4503599627370496
  %or10 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or10 to i8*
  %o11 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o11, align 8
  br label %do.end

sw.bb12:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load double* %b.addr, align 8
  %cmp14 = fcmp ogt double %13, %14
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i13, align 4
  %15 = load i32* %i13, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb12, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltDouble(%union.UnionType* %a, double %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %conv6 = sitofp i32 %conv5 to double
  %9 = load double* %b.addr, align 8
  %cmp7 = fcmp olt double %conv6, %9
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv9 = zext i32 %10 to i64
  %or = or i64 %conv9, -4503599627370496
  %or10 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or10 to i8*
  %o11 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o11, align 8
  br label %do.end

sw.bb12:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load double* %b.addr, align 8
  %cmp14 = fcmp olt double %13, %14
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %i13, align 4
  %15 = load i32* %i13, align 4
  %conv16 = zext i32 %15 to i64
  %or17 = or i64 %conv16, -4503599627370496
  %or18 = or i64 %or17, 281474976710656
  %16 = inttoptr i64 %or18 to i8*
  %o19 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o19, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb12, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addDouble2(double %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = sitofp i64 %9 to double
  %add = fadd double %6, %conv5
  %d = bitcast %union.UnionType* %ret to double*
  store double %add, double* %d, align 8
  br label %do.end

sw.bb6:                                           ; preds = %do.body
  %10 = load double* %a.addr, align 8
  %11 = load %union.UnionType** %b.addr, align 8
  %d7 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d7, align 8
  %add8 = fadd double %10, %12
  %d9 = bitcast %union.UnionType* %ret to double*
  store double %add8, double* %d9, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb6, %do.body
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %15 = bitcast double* %coerce.dive1 to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subDouble2(double %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = sitofp i64 %9 to double
  %add = fadd double %6, %conv5
  %d = bitcast %union.UnionType* %ret to double*
  store double %add, double* %d, align 8
  br label %do.end

sw.bb6:                                           ; preds = %do.body
  %10 = load double* %a.addr, align 8
  %11 = load %union.UnionType** %b.addr, align 8
  %d7 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d7, align 8
  %add8 = fadd double %10, %12
  %d9 = bitcast %union.UnionType* %ret to double*
  store double %add8, double* %d9, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb6, %do.body
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %15 = bitcast double* %coerce.dive1 to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulDouble2(double %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = sitofp i64 %9 to double
  %mul6 = fmul double %6, %conv5
  %d = bitcast %union.UnionType* %ret to double*
  store double %mul6, double* %d, align 8
  br label %do.end

sw.bb7:                                           ; preds = %do.body
  %10 = load double* %a.addr, align 8
  %11 = load %union.UnionType** %b.addr, align 8
  %d8 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d8, align 8
  %mul9 = fmul double %10, %12
  %d10 = bitcast %union.UnionType* %ret to double*
  store double %mul9, double* %d10, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb7, %do.body
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %15 = bitcast double* %coerce.dive1 to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divDouble2(double %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = sitofp i64 %9 to double
  %div = fdiv double %6, %conv5
  %d = bitcast %union.UnionType* %ret to double*
  store double %div, double* %d, align 8
  br label %do.end

sw.bb6:                                           ; preds = %do.body
  %10 = load double* %a.addr, align 8
  %11 = load %union.UnionType** %b.addr, align 8
  %d7 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d7, align 8
  %div8 = fdiv double %10, %12
  %d9 = bitcast %union.UnionType* %ret to double*
  store double %div8, double* %d9, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb6, %do.body
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %15 = bitcast double* %coerce.dive1 to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqDouble2(double %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = sitofp i64 %9 to double
  %cmp6 = fcmp oeq double %6, %conv5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load double* %a.addr, align 8
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %cmp13 = fcmp oeq double %12, %14
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv15 = zext i32 %15 to i64
  %or16 = or i64 %conv15, -4503599627370496
  %or17 = or i64 %or16, 281474976710656
  %16 = inttoptr i64 %or17 to i8*
  %o18 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o18, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neDouble2(double %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = sitofp i64 %9 to double
  %cmp6 = fcmp une double %6, %conv5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load double* %a.addr, align 8
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %cmp13 = fcmp une double %12, %14
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv15 = zext i32 %15 to i64
  %or16 = or i64 %conv15, -4503599627370496
  %or17 = or i64 %or16, 281474976710656
  %16 = inttoptr i64 %or17 to i8*
  %o18 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o18, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtDouble2(double %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = sitofp i64 %9 to double
  %cmp6 = fcmp ogt double %6, %conv5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load double* %a.addr, align 8
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %cmp13 = fcmp ogt double %12, %14
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv15 = zext i32 %15 to i64
  %or16 = or i64 %conv15, -4503599627370496
  %or17 = or i64 %or16, 281474976710656
  %16 = inttoptr i64 %or17 to i8*
  %o18 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o18, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltDouble2(double %a, %union.UnionType* %b) #0 {
do.body:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  %0 = load %union.UnionType** %b.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %b.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %do.end [
    i64 1, label %sw.bb
    i64 0, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 8
  %o4 = bitcast %union.UnionType* %7 to i8**
  %8 = load i8** %o4, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv5 = sitofp i64 %9 to double
  %cmp6 = fcmp olt double %6, %conv5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %i, align 4
  %10 = load i32* %i, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -4503599627370496
  %or9 = or i64 %or, 281474976710656
  %11 = inttoptr i64 %or9 to i8*
  %o10 = bitcast %union.UnionType* %ret to i8**
  store i8* %11, i8** %o10, align 8
  br label %do.end

sw.bb11:                                          ; preds = %do.body
  %12 = load double* %a.addr, align 8
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %cmp13 = fcmp olt double %12, %14
  %conv14 = zext i1 %cmp13 to i32
  store i32 %conv14, i32* %i12, align 4
  %15 = load i32* %i12, align 4
  %conv15 = zext i32 %15 to i64
  %or16 = or i64 %conv15, -4503599627370496
  %or17 = or i64 %or16, 281474976710656
  %16 = inttoptr i64 %or17 to i8*
  %o18 = bitcast %union.UnionType* %ret to i8**
  store i8* %16, i8** %o18, align 8
  br label %do.end

do.end:                                           ; preds = %sw.bb, %sw.bb11, %do.body
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive1 = bitcast %union.UnionType* %retval to double*
  %19 = bitcast double* %coerce.dive1 to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i32 @Object_isTrue(i64 %a.coerce) #0 {
entry:
  %a = alloca %union.UnionType, align 8
  %ret = alloca i32, align 4
  %o = alloca i8*, align 8
  %coerce.dive1 = bitcast %union.UnionType* %a to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %a.coerce, i64* %0, align 1
  store i32 0, i32* %ret, align 4
  %o1 = bitcast %union.UnionType* %a to i8**
  %1 = load i8** %o1, align 8
  store i8* %1, i8** %o, align 8
  %2 = load i8** %o, align 8
  %3 = ptrtoint i8* %2 to i64
  %and = and i64 %3, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %4 = load i8** %o, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %6 = load i8** %o, align 8
  %7 = ptrtoint i8* %6 to i64
  %conv4 = trunc i64 %7 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %d = bitcast %union.UnionType* %a to double*
  %8 = load double* %d, align 8
  %cmp8 = fcmp une double %8, 0.000000e+00
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb7, %sw.bb
  %9 = load i32* %ret, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define i32 @Value_isTrue(%union.UnionType* %a) #0 {
entry:
  %a.addr = alloca %union.UnionType*, align 8
  %ret = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %union.UnionType** %a.addr, align 8
  %o = bitcast %union.UnionType* %0 to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %3 = load %union.UnionType** %a.addr, align 8
  %o2 = bitcast %union.UnionType* %3 to i8**
  %4 = load i8** %o2, align 8
  %5 = ptrtoint i8* %4 to i64
  %and3 = and i64 %5, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %ret, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %9 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %9 to double*
  %10 = load double* %d, align 8
  %cmp9 = fcmp une double %10, 0.000000e+00
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb8, %sw.bb
  %11 = load i32* %ret, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define i8* @int_to_string(i32 %v) #0 {
cond.end:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %v.addr = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %len = alloca i64, align 8
  %ret = alloca i8*, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 256, i32 16, i1 false)
  %arraydecay2 = bitcast [256 x i8]* %buf to i8*
  %1 = load i32* %v.addr, align 4
  %call = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay2, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i32 %1)
  %arraydecay13 = bitcast [256 x i8]* %buf to i8*
  %call2 = call i64 @strlen(i8* %arraydecay13)
  %add = add i64 %call2, 1
  store i64 %add, i64* %len, align 8
  %2 = load i64* %len, align 8
  %call3 = call i8* @malloc(i64 %2)
  store i8* %call3, i8** %ret, align 8
  %3 = load i8** %ret, align 8
  %4 = load i8** %ret, align 8
  %arraydecay65 = bitcast [256 x i8]* %buf to i8*
  %5 = load i64* %len, align 8
  %6 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %6) #3
  %7 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %7) #3
  %8 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8) #3
  store i8* %4, i8** %__dest.addr.i, align 8
  store i8* %arraydecay65, i8** %__src.addr.i, align 8
  store i64 %5, i64* %__len.addr.i, align 8
  %9 = load i8** %__dest.addr.i, align 8
  %10 = load i8** %__src.addr.i, align 8
  %11 = load i64* %__len.addr.i, align 8
  %12 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %9, i8* %10, i64 %11, i64 -1) #3
  %13 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %13) #3
  %14 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %14) #3
  %15 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %15) #3
  %16 = load i8** %ret, align 8
  ret i8* %16
}

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define i8* @double_to_string(double %v) #0 {
cond.end:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %v.addr = alloca double, align 8
  %buf = alloca [256 x i8], align 16
  %len = alloca i64, align 8
  %ret = alloca i8*, align 8
  store double %v, double* %v.addr, align 8
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 256, i32 16, i1 false)
  %arraydecay2 = bitcast [256 x i8]* %buf to i8*
  %1 = load double* %v.addr, align 8
  %call = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay2, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), double %1)
  %arraydecay13 = bitcast [256 x i8]* %buf to i8*
  %call2 = call i64 @strlen(i8* %arraydecay13)
  %add = add i64 %call2, 1
  store i64 %add, i64* %len, align 8
  %2 = load i64* %len, align 8
  %call3 = call i8* @malloc(i64 %2)
  store i8* %call3, i8** %ret, align 8
  %3 = load i8** %ret, align 8
  %4 = load i8** %ret, align 8
  %arraydecay65 = bitcast [256 x i8]* %buf to i8*
  %5 = load i64* %len, align 8
  %6 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %6) #3
  %7 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %7) #3
  %8 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8) #3
  store i8* %4, i8** %__dest.addr.i, align 8
  store i8* %arraydecay65, i8** %__src.addr.i, align 8
  store i64 %5, i64* %__len.addr.i, align 8
  %9 = load i8** %__dest.addr.i, align 8
  %10 = load i8** %__src.addr.i, align 8
  %11 = load i64* %__len.addr.i, align 8
  %12 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %9, i8* %10, i64 %11, i64 -1) #3
  %13 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %13) #3
  %14 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %14) #3
  %15 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %15) #3
  %16 = load i8** %ret, align 8
  ret i8* %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @expandVariable(i8* %fmt, ...) #0 {
entry:
  %__dest.addr.i.i7 = alloca i8*, align 8
  %__src.addr.i.i8 = alloca i8*, align 8
  %__len.addr.i.i9 = alloca i64, align 8
  %v.addr.i10 = alloca double, align 8
  %len.i12 = alloca i64, align 8
  %ret.i13 = alloca i8*, align 8
  %__dest.addr.i.i = alloca i8*, align 8
  %__src.addr.i.i = alloca i8*, align 8
  %__len.addr.i.i = alloca i64, align 8
  %v.addr.i = alloca i32, align 4
  %buf.i = alloca [256 x i8], align 16
  %len.i = alloca i64, align 8
  %ret.i = alloca i8*, align 8
  %retval = alloca %union.UnionType, align 8
  %fmt.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %fmt_len = alloca i64, align 8
  %arg_num = alloca i64, align 8
  %saved_stack = alloca i8*
  %i = alloca i64, align 8
  %all_length = alloca i64, align 8
  %arg = alloca %union.UnionType*, align 8
  %str = alloca i8*, align 8
  %k = alloca i64, align 8
  %s60 = alloca i8*, align 8
  %len = alloca i64, align 8
  %j = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = load %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([23 x i8]* @.str40, i32 0, i32 0))
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %args to %struct.__va_list_tag*
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %1 = load i8** %fmt.addr, align 8
  %call2 = call i64 @strlen(i8* %1)
  store i64 %call2, i64* %fmt_len, align 8
  store i64 0, i64* %arg_num, align 8
  %2 = load i8** %fmt.addr, align 8
  store i8* %2, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8** %p, align 8
  %4 = load i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8** %p, align 8
  %6 = load i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 37
  br i1 %cmp5, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8** %p, align 8
  %add.ptr = getelementptr inbounds i8* %7, i64 1
  %8 = load i8* %add.ptr, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 115
  br i1 %cmp8, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64* %arg_num, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %arg_num, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %10 = load i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64* %arg_num, align 8
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %saved_stack
  %vla = alloca i8*, i64 %11, align 16
  store i64 0, i64* %i, align 8
  store i64 0, i64* %all_length, align 8
  %13 = load i8** %fmt.addr, align 8
  store i8* %13, i8** %p, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc42, %for.end
  %14 = load i8** %p, align 8
  %15 = load i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %for.body14, label %for.end44

for.body14:                                       ; preds = %for.cond10
  %16 = load i8** %p, align 8
  %17 = load i8* %16, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 37
  br i1 %cmp16, label %land.lhs.true18, label %if.else

land.lhs.true18:                                  ; preds = %for.body14
  %18 = load i8** %p, align 8
  %add.ptr19 = getelementptr inbounds i8* %18, i64 1
  %19 = load i8* %add.ptr19, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 115
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %land.lhs.true18
  %arraydecay243 = bitcast [1 x %struct.__va_list_tag]* %args to %struct.__va_list_tag*
  %gp_offset_p4 = bitcast %struct.__va_list_tag* %arraydecay243 to i32*
  %gp_offset = load i32* %gp_offset_p4
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then23
  %20 = getelementptr inbounds %struct.__va_list_tag* %arraydecay243, i32 0, i32 3
  %reg_save_area = load i8** %20
  %21 = getelementptr i8* %reg_save_area, i32 %gp_offset
  %22 = bitcast i8* %21 to %union.UnionType**
  %23 = add i32 %gp_offset, 8
  store i32 %23, i32* %gp_offset_p4
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then23
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay243, i32 0, i32 2
  %overflow_arg_area = load i8** %overflow_arg_area_p
  %24 = bitcast i8* %overflow_arg_area to %union.UnionType**
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %union.UnionType** [ %22, %vaarg.in_reg ], [ %24, %vaarg.in_mem ]
  %25 = load %union.UnionType** %vaarg.addr
  store %union.UnionType* %25, %union.UnionType** %arg, align 8
  store i8* null, i8** %str, align 8
  %26 = load %union.UnionType** %arg, align 8
  %o = bitcast %union.UnionType* %26 to i8**
  %27 = load i8** %o, align 8
  %28 = ptrtoint i8* %27 to i64
  %and = and i64 %28, -4503599627370496
  %cmp25 = icmp eq i64 %and, -4503599627370496
  %conv26 = zext i1 %cmp25 to i32
  %conv27 = sext i32 %conv26 to i64
  %29 = load %union.UnionType** %arg, align 8
  %o28 = bitcast %union.UnionType* %29 to i8**
  %30 = load i8** %o28, align 8
  %31 = ptrtoint i8* %30 to i64
  %and29 = and i64 %31, 4222124650659840
  %shr = lshr i64 %and29, 48
  %mul = mul i64 %conv27, %shr
  switch i64 %mul, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.bb33
    i64 2, label %sw.bb35
  ]

sw.bb:                                            ; preds = %vaarg.end
  %32 = load %union.UnionType** %arg, align 8
  %o30 = bitcast %union.UnionType* %32 to i8**
  %33 = load i8** %o30, align 8
  %34 = ptrtoint i8* %33 to i64
  %conv31 = trunc i64 %34 to i32
  %35 = bitcast i32* %v.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %35) #3
  %36 = bitcast [256 x i8]* %buf.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %36) #3
  %37 = bitcast i64* %len.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %37) #3
  %38 = bitcast i8** %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %38) #3
  store i32 %conv31, i32* %v.addr.i, align 4
  %39 = bitcast [256 x i8]* %buf.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 256, i32 16, i1 false) #3
  %arraydecay2.i = bitcast [256 x i8]* %buf.i to i8*
  %40 = load i32* %v.addr.i, align 4
  %call.i = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay2.i, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0), i32 %40) #3
  %arraydecay13.i = bitcast [256 x i8]* %buf.i to i8*
  %call2.i = call i64 @strlen(i8* %arraydecay13.i) #3
  %add.i = add i64 %call2.i, 1
  store i64 %add.i, i64* %len.i, align 8
  %41 = load i64* %len.i, align 8
  %call3.i = call i8* @malloc(i64 %41) #3
  store i8* %call3.i, i8** %ret.i, align 8
  %42 = load i8** %ret.i, align 8
  %43 = load i8** %ret.i, align 8
  %arraydecay65.i = bitcast [256 x i8]* %buf.i to i8*
  %44 = load i64* %len.i, align 8
  %45 = bitcast i8** %__dest.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %45) #3
  %46 = bitcast i8** %__src.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %46) #3
  %47 = bitcast i64* %__len.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %47) #3
  store i8* %43, i8** %__dest.addr.i.i, align 8
  store i8* %arraydecay65.i, i8** %__src.addr.i.i, align 8
  store i64 %44, i64* %__len.addr.i.i, align 8
  %48 = load i8** %__dest.addr.i.i, align 8
  %49 = load i8** %__src.addr.i.i, align 8
  %50 = load i64* %__len.addr.i.i, align 8
  %51 = load i8** %__dest.addr.i.i, align 8
  %call.i.i = call i8* @__memcpy_chk(i8* %48, i8* %49, i64 %50, i64 -1) #3
  %52 = bitcast i8** %__dest.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %52) #3
  %53 = bitcast i8** %__src.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %53) #3
  %54 = bitcast i64* %__len.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %54) #3
  %55 = load i8** %ret.i, align 8
  %56 = bitcast i32* %v.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %56) #3
  %57 = bitcast [256 x i8]* %buf.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %57) #3
  %58 = bitcast i64* %len.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %58) #3
  %59 = bitcast i8** %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %59) #3
  store i8* %55, i8** %str, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %vaarg.end
  %60 = load %union.UnionType** %arg, align 8
  %d = bitcast %union.UnionType* %60 to double*
  %61 = load double* %d, align 8
  %62 = bitcast double* %v.addr.i10 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %62) #3
  %63 = bitcast [256 x i8]* %buf.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %63) #3
  %64 = bitcast i64* %len.i12 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %64) #3
  %65 = bitcast i8** %ret.i13 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %65) #3
  store double %61, double* %v.addr.i10, align 8
  %66 = bitcast [256 x i8]* %buf.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %66, i8 0, i64 256, i32 16, i1 false) #3
  %arraydecay2.i14 = bitcast [256 x i8]* %buf.i to i8*
  %67 = load double* %v.addr.i10, align 8
  %call.i15 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay2.i14, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0), double %67) #3
  %arraydecay13.i16 = bitcast [256 x i8]* %buf.i to i8*
  %call2.i17 = call i64 @strlen(i8* %arraydecay13.i16) #3
  %add.i18 = add i64 %call2.i17, 1
  store i64 %add.i18, i64* %len.i12, align 8
  %68 = load i64* %len.i12, align 8
  %call3.i19 = call i8* @malloc(i64 %68) #3
  store i8* %call3.i19, i8** %ret.i13, align 8
  %69 = load i8** %ret.i13, align 8
  %70 = load i8** %ret.i13, align 8
  %arraydecay65.i20 = bitcast [256 x i8]* %buf.i to i8*
  %71 = load i64* %len.i12, align 8
  %72 = bitcast i8** %__dest.addr.i.i7 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %72) #3
  %73 = bitcast i8** %__src.addr.i.i8 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %73) #3
  %74 = bitcast i64* %__len.addr.i.i9 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %74) #3
  store i8* %70, i8** %__dest.addr.i.i7, align 8
  store i8* %arraydecay65.i20, i8** %__src.addr.i.i8, align 8
  store i64 %71, i64* %__len.addr.i.i9, align 8
  %75 = load i8** %__dest.addr.i.i7, align 8
  %76 = load i8** %__src.addr.i.i8, align 8
  %77 = load i64* %__len.addr.i.i9, align 8
  %78 = load i8** %__dest.addr.i.i7, align 8
  %call.i.i21 = call i8* @__memcpy_chk(i8* %75, i8* %76, i64 %77, i64 -1) #3
  %79 = bitcast i8** %__dest.addr.i.i7 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %79) #3
  %80 = bitcast i8** %__src.addr.i.i8 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %80) #3
  %81 = bitcast i64* %__len.addr.i.i9 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %81) #3
  %82 = load i8** %ret.i13, align 8
  %83 = bitcast double* %v.addr.i10 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %83) #3
  %84 = bitcast [256 x i8]* %buf.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %84) #3
  %85 = bitcast i64* %len.i12 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %85) #3
  %86 = bitcast i8** %ret.i13 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %86) #3
  store i8* %82, i8** %str, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %vaarg.end
  %87 = load %union.UnionType** %arg, align 8
  %o36 = bitcast %union.UnionType* %87 to i8**
  %88 = load i8** %o36, align 8
  %89 = ptrtoint i8* %88 to i64
  %xor = xor i64 %89, -3940649673949184
  %90 = inttoptr i64 %xor to %struct._String*
  %s = getelementptr inbounds %struct._String* %90, i32 0, i32 1
  %91 = load i8** %s, align 8
  store i8* %91, i8** %str, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %vaarg.end, %sw.bb35, %sw.bb33, %sw.bb
  %92 = load i8** %str, align 8
  %93 = load i64* %i, align 8
  %arrayidx = getelementptr inbounds i8** %vla, i64 %93
  store i8* %92, i8** %arrayidx, align 8
  %94 = load i8** %str, align 8
  %call38 = call i64 @strlen(i8* %94)
  %95 = load i64* %all_length, align 8
  %add = add i64 %95, %call38
  store i64 %add, i64* %all_length, align 8
  %96 = load i8** %p, align 8
  %incdec.ptr39 = getelementptr inbounds i8* %96, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  br label %for.inc42

if.else:                                          ; preds = %land.lhs.true18, %for.body14
  %97 = load i64* %all_length, align 8
  %inc40 = add i64 %97, 1
  store i64 %inc40, i64* %all_length, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %sw.epilog, %if.else
  %98 = load i8** %p, align 8
  %incdec.ptr43 = getelementptr inbounds i8* %98, i32 1
  store i8* %incdec.ptr43, i8** %p, align 8
  br label %for.cond10

for.end44:                                        ; preds = %for.cond10
  %99 = load i64* %all_length, align 8
  %vla45 = alloca i8, i64 %99, align 16
  store i64 0, i64* %i, align 8
  store i64 0, i64* %k, align 8
  %100 = load i8** %fmt.addr, align 8
  store i8* %100, i8** %p, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc80, %for.end44
  %101 = load i8** %p, align 8
  %102 = load i8* %101, align 1
  %conv47 = sext i8 %102 to i32
  %cmp48 = icmp ne i32 %conv47, 0
  br i1 %cmp48, label %for.body50, label %for.end82

for.body50:                                       ; preds = %for.cond46
  %103 = load i8** %p, align 8
  %104 = load i8* %103, align 1
  %conv51 = sext i8 %104 to i32
  %cmp52 = icmp eq i32 %conv51, 37
  br i1 %cmp52, label %land.lhs.true54, label %if.else74

land.lhs.true54:                                  ; preds = %for.body50
  %105 = load i8** %p, align 8
  %add.ptr55 = getelementptr inbounds i8* %105, i64 1
  %106 = load i8* %add.ptr55, align 1
  %conv56 = sext i8 %106 to i32
  %cmp57 = icmp eq i32 %conv56, 115
  br i1 %cmp57, label %if.then59, label %if.else74

if.then59:                                        ; preds = %land.lhs.true54
  %107 = load i64* %i, align 8
  %arrayidx61 = getelementptr inbounds i8** %vla, i64 %107
  %108 = load i8** %arrayidx61, align 8
  store i8* %108, i8** %s60, align 8
  %109 = load i8** %s60, align 8
  %call62 = call i64 @strlen(i8* %109)
  store i64 %call62, i64* %len, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc70, %if.then59
  %110 = load i64* %j, align 8
  %111 = load i64* %len, align 8
  %cmp64 = icmp ult i64 %110, %111
  br i1 %cmp64, label %for.inc70, label %for.end72

for.inc70:                                        ; preds = %for.cond63
  %112 = load i64* %j, align 8
  %113 = load i8** %s60, align 8
  %arrayidx67 = getelementptr inbounds i8* %113, i64 %112
  %114 = load i8* %arrayidx67, align 1
  %115 = load i64* %i, align 8
  %arrayidx68 = getelementptr inbounds i8* %vla45, i64 %115
  store i8 %114, i8* %arrayidx68, align 1
  %116 = load i64* %i, align 8
  %inc69 = add i64 %116, 1
  store i64 %inc69, i64* %i, align 8
  %117 = load i64* %j, align 8
  %inc71 = add i64 %117, 1
  store i64 %inc71, i64* %j, align 8
  br label %for.cond63

for.end72:                                        ; preds = %for.cond63
  %118 = load i8** %p, align 8
  %incdec.ptr73 = getelementptr inbounds i8* %118, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8
  br label %for.inc80

if.else74:                                        ; preds = %land.lhs.true54, %for.body50
  %119 = load i64* %k, align 8
  %120 = load i8** %fmt.addr, align 8
  %arrayidx75 = getelementptr inbounds i8* %120, i64 %119
  %121 = load i8* %arrayidx75, align 1
  %122 = load i64* %i, align 8
  %arrayidx76 = getelementptr inbounds i8* %vla45, i64 %122
  store i8 %121, i8* %arrayidx76, align 1
  br label %for.inc80

for.inc80:                                        ; preds = %for.end72, %if.else74
  %123 = load i64* %i, align 8
  %inc78 = add i64 %123, 1
  store i64 %inc78, i64* %i, align 8
  %124 = load i64* %k, align 8
  %inc79 = add i64 %124, 1
  store i64 %inc79, i64* %k, align 8
  %125 = load i8** %p, align 8
  %incdec.ptr81 = getelementptr inbounds i8* %125, i32 1
  store i8* %incdec.ptr81, i8** %p, align 8
  br label %for.cond46

for.end82:                                        ; preds = %for.cond46
  %126 = load %struct.__sFILE** @__stderrp, align 8
  %call83 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %126, i8* getelementptr inbounds ([12 x i8]* @.str41, i32 0, i32 0), i8* %vla45)
  %call84 = call i64 @new_String(i8* %vla45)
  %coerce.dive5 = bitcast %union.UnionType* %retval to double*
  %127 = bitcast double* %coerce.dive5 to i64*
  store i64 %call84, i64* %127, align 1
  store i32 1, i32* %cleanup.dest.slot
  %128 = load i8** %saved_stack
  call void @llvm.stackrestore(i8* %128)
  %coerce.dive856 = bitcast %union.UnionType* %retval to double*
  %129 = bitcast double* %coerce.dive856 to i64*
  %130 = load i64* %129, align 1
  ret i64 %130
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

define i64 @main(...) {
entrypoint:
  call void @global_init()
  %string = call i64 @new_String(i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0))
  %union_storage = alloca %union.UnionType
  %cast_to_double_ptr140 = bitcast %union.UnionType* %union_storage to double*
  %cast_to_int_ptr = bitcast double* %cast_to_double_ptr140 to i64*
  store i64 %string, i64* %cast_to_int_ptr
  %ivalue = alloca %union.UnionType
  %union_to_int_ptr = bitcast %union.UnionType* %ivalue to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr
  %string1 = call i64 @new_String(i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0))
  %union_storage2 = alloca %union.UnionType
  %cast_to_double_ptr3141 = bitcast %union.UnionType* %union_storage2 to double*
  %cast_to_int_ptr4 = bitcast double* %cast_to_double_ptr3141 to i64*
  store i64 %string1, i64* %cast_to_int_ptr4
  %ivalue5 = alloca %union.UnionType
  %union_to_int_ptr6 = bitcast %union.UnionType* %ivalue5 to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr6
  %elems = alloca %union.UnionType*, i64 4
  %load_elem142 = bitcast %union.UnionType** %elems to %union.UnionType**
  store %union.UnionType* %union_storage, %union.UnionType** %load_elem142
  %load_elem7 = getelementptr %union.UnionType** %elems, i64 1
  store %union.UnionType* %ivalue, %union.UnionType** %load_elem7
  %load_elem8 = getelementptr %union.UnionType** %elems, i64 2
  store %union.UnionType* %union_storage2, %union.UnionType** %load_elem8
  %load_elem9 = getelementptr %union.UnionType** %elems, i64 3
  store %union.UnionType* %ivalue5, %union.UnionType** %load_elem9
  %fetched_object = call %Object* bitcast (%struct._Object* ()* @fetch_object to %Object* ()*)()
  %cast_to_array_ptr = bitcast %Object* %fetched_object to %ArrayObject*
  %array_type143 = bitcast %ArrayObject* %cast_to_array_ptr to i32*
  %array_list = getelementptr inbounds %ArrayObject* %cast_to_array_ptr, i32 0, i32 1
  %array_size = getelementptr inbounds %ArrayObject* %cast_to_array_ptr, i32 0, i32 2
  store i32 3, i32* %array_type143
  store %union.UnionType** %elems, %union.UnionType*** %array_list
  store i64 4, i64* %array_size
  %base_ptr = alloca %union.UnionType
  %union_ptr_to_int = ptrtoint %ArrayObject* %cast_to_array_ptr to i64
  %or = or i64 %union_ptr_to_int, -4503599627370496
  %or10 = or i64 %or, 844424930131968
  %bitcast = bitcast %union.UnionType* %base_ptr to i64*
  store i64 %or10, i64* %bitcast
  %bitcast11 = bitcast %union.UnionType* %base_ptr to i64*
  %load_ivalue = load i64* %bitcast11
  %xor = xor i64 %load_ivalue, -3659174697238528
  %int_to_ptr = inttoptr i64 %xor to %ArrayObject*
  %hash = call i64 bitcast (i64 (%struct._Array*)* @new_Hash to i64 (%ArrayObject*)*)(%ArrayObject* %int_to_ptr)
  %union_storage12 = alloca %union.UnionType
  %cast_to_double_ptr13144 = bitcast %union.UnionType* %union_storage12 to double*
  %cast_to_int_ptr14 = bitcast double* %cast_to_double_ptr13144 to i64*
  store i64 %hash, i64* %cast_to_int_ptr14
  %load_value = load %union.UnionType* %union_storage12
  store %union.UnionType %load_value, %union.UnionType* @global_value
  %args = alloca %union.UnionType*
  %get_idx145 = bitcast %union.UnionType** %args to %union.UnionType**
  store %union.UnionType* @global_value, %union.UnionType** %get_idx145
  %array = alloca %ArrayObject
  %array_type15146 = bitcast %ArrayObject* %array to i32*
  %array_list16 = getelementptr inbounds %ArrayObject* %array, i32 0, i32 1
  %array_size17 = getelementptr inbounds %ArrayObject* %array, i32 0, i32 2
  store i32 3, i32* %array_type15146
  store %union.UnionType** %args, %union.UnionType*** %array_list16
  store i64 1, i64* %array_size17
  %result = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array)
  %union_storage18 = alloca %union.UnionType
  %cast_to_double_ptr19147 = bitcast %union.UnionType* %union_storage18 to double*
  %cast_to_int_ptr20 = bitcast double* %cast_to_double_ptr19147 to i64*
  store i64 %result, i64* %cast_to_int_ptr20
  %args21 = alloca %union.UnionType*
  %string22 = call i64 @new_String(i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0))
  %union_storage23 = alloca %union.UnionType
  %cast_to_double_ptr24148 = bitcast %union.UnionType* %union_storage23 to double*
  %cast_to_int_ptr25 = bitcast double* %cast_to_double_ptr24148 to i64*
  store i64 %string22, i64* %cast_to_int_ptr25
  %bitcast26 = bitcast %union.UnionType* %union_storage23 to i64*
  %load_ivalue27 = load i64* %bitcast26
  %xor28 = xor i64 %load_ivalue27, -3940649673949184
  %int_to_ptr29 = inttoptr i64 %xor28 to %StringObject*
  %load_ivalue30 = load i64* bitcast (%union.UnionType* @global_value to i64*)
  %xor31 = xor i64 %load_ivalue30, -3096224743817216
  %int_to_ptr32 = inttoptr i64 %xor31 to %HashObject*
  %fetch_table = getelementptr inbounds %HashObject* %int_to_ptr32, i32 0, i32 1
  %load_table = load %union.UnionType** %fetch_table
  %fetch_key_hash = getelementptr inbounds %StringObject* %int_to_ptr29, i32 0, i32 3
  %load_key_hash = load i64* %fetch_key_hash
  %get_hvalue = getelementptr %union.UnionType* %load_table, i64 %load_key_hash
  %get_idx33149 = bitcast %union.UnionType** %args21 to %union.UnionType**
  store %union.UnionType* %get_hvalue, %union.UnionType** %get_idx33149
  %array34 = alloca %ArrayObject
  %array_type35150 = bitcast %ArrayObject* %array34 to i32*
  %array_list36 = getelementptr inbounds %ArrayObject* %array34, i32 0, i32 1
  %array_size37 = getelementptr inbounds %ArrayObject* %array34, i32 0, i32 2
  store i32 3, i32* %array_type35150
  store %union.UnionType** %args21, %union.UnionType*** %array_list36
  store i64 1, i64* %array_size37
  %result38 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array34)
  %union_storage39 = alloca %union.UnionType
  %cast_to_double_ptr40151 = bitcast %union.UnionType* %union_storage39 to double*
  %cast_to_int_ptr41 = bitcast double* %cast_to_double_ptr40151 to i64*
  store i64 %result38, i64* %cast_to_int_ptr41
  %args42 = alloca %union.UnionType*
  %string43 = call i64 @new_String(i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0))
  %union_storage44 = alloca %union.UnionType
  %cast_to_double_ptr45152 = bitcast %union.UnionType* %union_storage44 to double*
  %cast_to_int_ptr46 = bitcast double* %cast_to_double_ptr45152 to i64*
  store i64 %string43, i64* %cast_to_int_ptr46
  %bitcast47 = bitcast %union.UnionType* %union_storage44 to i64*
  %load_ivalue48 = load i64* %bitcast47
  %xor49 = xor i64 %load_ivalue48, -3940649673949184
  %int_to_ptr50 = inttoptr i64 %xor49 to %StringObject*
  %load_ivalue51 = load i64* bitcast (%union.UnionType* @global_value to i64*)
  %xor52 = xor i64 %load_ivalue51, -3096224743817216
  %int_to_ptr53 = inttoptr i64 %xor52 to %HashObject*
  %fetch_table54 = getelementptr inbounds %HashObject* %int_to_ptr53, i32 0, i32 1
  %load_table55 = load %union.UnionType** %fetch_table54
  %fetch_key_hash56 = getelementptr inbounds %StringObject* %int_to_ptr50, i32 0, i32 3
  %load_key_hash57 = load i64* %fetch_key_hash56
  %get_hvalue58 = getelementptr %union.UnionType* %load_table55, i64 %load_key_hash57
  %get_idx59153 = bitcast %union.UnionType** %args42 to %union.UnionType**
  store %union.UnionType* %get_hvalue58, %union.UnionType** %get_idx59153
  %array60 = alloca %ArrayObject
  %array_type61154 = bitcast %ArrayObject* %array60 to i32*
  %array_list62 = getelementptr inbounds %ArrayObject* %array60, i32 0, i32 1
  %array_size63 = getelementptr inbounds %ArrayObject* %array60, i32 0, i32 2
  store i32 3, i32* %array_type61154
  store %union.UnionType** %args42, %union.UnionType*** %array_list62
  store i64 1, i64* %array_size63
  %result64 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array60)
  %union_storage65 = alloca %union.UnionType
  %cast_to_double_ptr66155 = bitcast %union.UnionType* %union_storage65 to double*
  %cast_to_int_ptr67 = bitcast double* %cast_to_double_ptr66155 to i64*
  store i64 %result64, i64* %cast_to_int_ptr67
  %args68 = alloca %union.UnionType*
  %string69 = call i64 @new_String(i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0))
  %union_storage70 = alloca %union.UnionType
  %cast_to_double_ptr71156 = bitcast %union.UnionType* %union_storage70 to double*
  %cast_to_int_ptr72 = bitcast double* %cast_to_double_ptr71156 to i64*
  store i64 %string69, i64* %cast_to_int_ptr72
  %bitcast73 = bitcast %union.UnionType* %union_storage70 to i64*
  %load_ivalue74 = load i64* %bitcast73
  %xor75 = xor i64 %load_ivalue74, -3940649673949184
  %int_to_ptr76 = inttoptr i64 %xor75 to %StringObject*
  %load_ivalue77 = load i64* bitcast (%union.UnionType* @global_value to i64*)
  %xor78 = xor i64 %load_ivalue77, -3096224743817216
  %int_to_ptr79 = inttoptr i64 %xor78 to %HashObject*
  %fetch_table80 = getelementptr inbounds %HashObject* %int_to_ptr79, i32 0, i32 1
  %load_table81 = load %union.UnionType** %fetch_table80
  %fetch_key_hash82 = getelementptr inbounds %StringObject* %int_to_ptr76, i32 0, i32 3
  %load_key_hash83 = load i64* %fetch_key_hash82
  %get_hvalue84 = getelementptr %union.UnionType* %load_table81, i64 %load_key_hash83
  %get_idx85157 = bitcast %union.UnionType** %args68 to %union.UnionType**
  store %union.UnionType* %get_hvalue84, %union.UnionType** %get_idx85157
  %array86 = alloca %ArrayObject
  %array_type87158 = bitcast %ArrayObject* %array86 to i32*
  %array_list88 = getelementptr inbounds %ArrayObject* %array86, i32 0, i32 1
  %array_size89 = getelementptr inbounds %ArrayObject* %array86, i32 0, i32 2
  store i32 3, i32* %array_type87158
  store %union.UnionType** %args68, %union.UnionType*** %array_list88
  store i64 1, i64* %array_size89
  %result90 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array86)
  %union_storage91 = alloca %union.UnionType
  %cast_to_double_ptr92159 = bitcast %union.UnionType* %union_storage91 to double*
  %cast_to_int_ptr93 = bitcast double* %cast_to_double_ptr92159 to i64*
  store i64 %result90, i64* %cast_to_int_ptr93
  %ivalue94 = alloca %union.UnionType
  %union_to_int_ptr95 = bitcast %union.UnionType* %ivalue94 to i64*
  store i64 -4222124650659837, i64* %union_to_int_ptr95
  %string96 = call i64 @new_String(i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0))
  %union_storage97 = alloca %union.UnionType
  %cast_to_double_ptr98160 = bitcast %union.UnionType* %union_storage97 to double*
  %cast_to_int_ptr99 = bitcast double* %cast_to_double_ptr98160 to i64*
  store i64 %string96, i64* %cast_to_int_ptr99
  %bitcast100 = bitcast %union.UnionType* %union_storage97 to i64*
  %load_ivalue101 = load i64* %bitcast100
  %xor102 = xor i64 %load_ivalue101, -3940649673949184
  %int_to_ptr103 = inttoptr i64 %xor102 to %StringObject*
  %load_ivalue104 = load i64* bitcast (%union.UnionType* @global_value to i64*)
  %xor105 = xor i64 %load_ivalue104, -3096224743817216
  %int_to_ptr106 = inttoptr i64 %xor105 to %HashObject*
  %fetch_table107 = getelementptr inbounds %HashObject* %int_to_ptr106, i32 0, i32 1
  %load_table108 = load %union.UnionType** %fetch_table107
  %fetch_key_hash109 = getelementptr inbounds %StringObject* %int_to_ptr103, i32 0, i32 3
  %load_key_hash110 = load i64* %fetch_key_hash109
  %get_hvalue111 = getelementptr %union.UnionType* %load_table108, i64 %load_key_hash110
  %load_value112 = load %union.UnionType* %ivalue94
  store %union.UnionType %load_value112, %union.UnionType* %get_hvalue111
  %args113 = alloca %union.UnionType*
  %get_idx114161 = bitcast %union.UnionType** %args113 to %union.UnionType**
  store %union.UnionType* @global_value, %union.UnionType** %get_idx114161
  %array115 = alloca %ArrayObject
  %array_type116162 = bitcast %ArrayObject* %array115 to i32*
  %array_list117 = getelementptr inbounds %ArrayObject* %array115, i32 0, i32 1
  %array_size118 = getelementptr inbounds %ArrayObject* %array115, i32 0, i32 2
  store i32 3, i32* %array_type116162
  store %union.UnionType** %args113, %union.UnionType*** %array_list117
  store i64 1, i64* %array_size118
  %result119 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array115)
  %union_storage120 = alloca %union.UnionType
  %cast_to_double_ptr121163 = bitcast %union.UnionType* %union_storage120 to double*
  %cast_to_int_ptr122 = bitcast double* %cast_to_double_ptr121163 to i64*
  store i64 %result119, i64* %cast_to_int_ptr122
  %load_ivalue123 = load i64* bitcast (%union.UnionType* @global_value to i64*)
  %xor124 = xor i64 %load_ivalue123, -3096224743817216
  %int_to_ptr125 = inttoptr i64 %xor124 to %HashObject*
  %hash_to_array = call i64 bitcast (i64 (%struct._Hash*)* @Hash_to_array to i64 (%HashObject*)*)(%HashObject* %int_to_ptr125)
  %union_storage126 = alloca %union.UnionType
  %cast_to_double_ptr127164 = bitcast %union.UnionType* %union_storage126 to double*
  %cast_to_int_ptr128 = bitcast double* %cast_to_double_ptr127164 to i64*
  store i64 %hash_to_array, i64* %cast_to_int_ptr128
  %load_value129 = load %union.UnionType* %union_storage126
  store %union.UnionType %load_value129, %union.UnionType* @global_value1
  %args130 = alloca %union.UnionType*
  %get_idx131165 = bitcast %union.UnionType** %args130 to %union.UnionType**
  store %union.UnionType* @global_value1, %union.UnionType** %get_idx131165
  %array132 = alloca %ArrayObject
  %array_type133166 = bitcast %ArrayObject* %array132 to i32*
  %array_list134 = getelementptr inbounds %ArrayObject* %array132, i32 0, i32 1
  %array_size135 = getelementptr inbounds %ArrayObject* %array132, i32 0, i32 2
  store i32 3, i32* %array_type133166
  store %union.UnionType** %args130, %union.UnionType*** %array_list134
  store i64 1, i64* %array_size135
  %result136 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array132)
  %union_storage137 = alloca %union.UnionType
  %cast_to_double_ptr138167 = bitcast %union.UnionType* %union_storage137 to double*
  %cast_to_int_ptr139 = bitcast double* %cast_to_double_ptr138167 to i64*
  store i64 %result136, i64* %cast_to_int_ptr139
  ret i64 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
