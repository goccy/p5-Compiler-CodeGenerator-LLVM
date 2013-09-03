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
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._Array = type { i32, %union.UnionType**, i64 }
%struct._IOHandlerObject = type { i32, %struct.__sFILE*, i8*, i8* }
%struct._Undef = type { i32 }
%struct._HashRef = type { i32, %union.UnionType }
%struct._ArrayRef = type { i32, %union.UnionType }
%struct._BlessedObject = type { i32, %union.UnionType, %struct._Package*, i8* }
%struct._Package = type { i32, %union.UnionType*, %struct._String**, i64, %struct._Array*, i8* }
%struct._CodeRef = type { i32, i64 (%struct._Array*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._FFIObject = type { i32, %union.UnionType, %struct._Package*, i8*, i8* }
%ArrayObject = type { i32, %union.UnionType**, i64 }
%Object = type { i32, %union.UnionType }

@count = global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [15 x i8] c"type = [%llu]\0A\00", align 1
@__func__._open = private unnamed_addr constant [6 x i8] c"_open\00", align 1
@.str1 = private unnamed_addr constant [25 x i8] c"gen/runtime_api_common.c\00", align 1
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
@.str27 = private unnamed_addr constant [26 x i8] c"===== debug_print ======\0A\00", align 1
@.str28 = private unnamed_addr constant [15 x i8] c"=============\0A\00", align 1
@__func__.shift = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str29 = private unnamed_addr constant [30 x i8] c"fetch from function argument\0A\00", align 1
@.str30 = private unnamed_addr constant [34 x i8] c"ERROR!!: cannot allocated memory\0A\00", align 1
@.str31 = private unnamed_addr constant [27 x i8] c"Type Error!: near by push\0A\00", align 1
@__func__.push = private unnamed_addr constant [5 x i8] c"push\00", align 1
@__func__.HashRef_get = private unnamed_addr constant [12 x i8] c"HashRef_get\00", align 1
@.str32 = private unnamed_addr constant [33 x i8] c"0 && \22Type Error!: Unknown Type\22\00", align 1
@__func__.ArrayRef_get = private unnamed_addr constant [13 x i8] c"ArrayRef_get\00", align 1
@base_hash_table = common global %union.UnionType* null, align 8
@pkg_map = common global %struct._Hash* null, align 8
@.str33 = private unnamed_addr constant [54 x i8] c"ERROR!: bless function must be required two argument\0A\00", align 1
@__func__.bless = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@.str34 = private unnamed_addr constant [21 x i8] c"unknown package name\00", align 1
@.str35 = private unnamed_addr constant [30 x i8] c"pkg && \22unknown package name\22\00", align 1
@object_pool = common global %struct._Object** null, align 8
@mutex = common global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@.str36 = private unnamed_addr constant [19 x i8] c"cannot find method\00", align 1
@__func__.get_method_by_name = private unnamed_addr constant [19 x i8] c"get_method_by_name\00", align 1
@.str37 = private unnamed_addr constant [33 x i8] c"code_ref && \22cannot find method\22\00", align 1
@__func__.get_class_method_by_name = private unnamed_addr constant [25 x i8] c"get_class_method_by_name\00", align 1
@__func__.dynamic_blessed_object_cast_code = private unnamed_addr constant [33 x i8] c"dynamic_blessed_object_cast_code\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str40 = private unnamed_addr constant [23 x i8] c"called expandVariable\0A\00", align 1
@.str41 = private unnamed_addr constant [12 x i8] c"buf = [%s]\0A\00", align 1
@.str42 = private unnamed_addr constant [10 x i8] c"ARRAY(%p)\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"HASH(%p)\00", align 1
@.str44 = private unnamed_addr constant [9 x i8] c"CODE(%p)\00", align 1
@.str45 = private unnamed_addr constant [12 x i8] c"%s=HASH(%p)\00", align 1
@0 = private unnamed_addr constant [5 x i8] c"main\00"
@1 = private unnamed_addr constant [2 x i8] c"f\00"
@2 = private unnamed_addr constant [5 x i8] c"main\00"
@3 = private unnamed_addr constant [2 x i8] c"h\00"
@4 = private unnamed_addr constant [5 x i8] c"main\00"
@5 = private unnamed_addr constant [2 x i8] c"g\00"
@6 = private unnamed_addr constant [5 x i8] c"main\00"
@7 = private unnamed_addr constant [31 x i8] c"function_argument_array_sample\00"
@8 = private unnamed_addr constant [5 x i8] c"main\00"
@9 = private unnamed_addr constant [31 x i8] c"function_argument_shift_sample\00"

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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
  call void @exit(i32 1) #8
  unreachable

if.else67:                                        ; preds = %entry
  %53 = load %struct.__sFILE** @__stderrp, align 8
  %54 = load i64* %size, align 8
  %call68 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %53, i8* getelementptr inbounds ([23 x i8]* @.str9, i32 0, i32 0), i64 %54)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 35, i8* getelementptr inbounds ([34 x i8]* @.str10, i32 0, i32 0)) #8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8]* @__func__._binmode, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 46, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
  call void @exit(i32 1) #8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._chr, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 67, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %_str.addr.i = alloca i8*, align 8
  %len.addr.i = alloca i64, align 8
  %str.i = alloca i8*, align 8
  %hash.i = alloca i64, align 8
  %retval = alloca %union.UnionType, align 8
  %str.addr = alloca i8*, align 8
  %ret = alloca %union.UnionType, align 8
  %o = alloca %struct._String*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32* @count, align 4
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, i32* @count, align 4
  %1 = load i32* @count, align 4
  %idxprom.i = sext i32 %1 to i64
  %2 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %2, i64 %idxprom.i
  %3 = load %struct._Object** %arrayidx.i, align 8
  %4 = bitcast %struct._Object* %3 to %struct._String*
  store %struct._String* %4, %struct._String** %o, align 8
  %5 = load %struct._String** %o, align 8
  %header1 = bitcast %struct._String* %5 to i32*
  store i32 2, i32* %header1, align 4
  %6 = load i8** %str.addr, align 8
  %call1 = call i64 @strlen(i8* %6)
  %add = add i64 %call1, 1
  %7 = load %struct._String** %o, align 8
  %len = getelementptr inbounds %struct._String* %7, i32 0, i32 2
  store i64 %add, i64* %len, align 8
  %8 = load %struct._String** %o, align 8
  %len2 = getelementptr inbounds %struct._String* %8, i32 0, i32 2
  %9 = load i64* %len2, align 8
  %call3 = call i8* @malloc(i64 %9)
  %10 = load %struct._String** %o, align 8
  %s = getelementptr inbounds %struct._String* %10, i32 0, i32 1
  store i8* %call3, i8** %s, align 8
  %11 = load %struct._String** %o, align 8
  %s4 = getelementptr inbounds %struct._String* %11, i32 0, i32 1
  %12 = load i8** %s4, align 8
  %13 = load %struct._String** %o, align 8
  %s9 = getelementptr inbounds %struct._String* %13, i32 0, i32 1
  %14 = load i8** %s9, align 8
  %15 = load i8** %str.addr, align 8
  %16 = load %struct._String** %o, align 8
  %len10 = getelementptr inbounds %struct._String* %16, i32 0, i32 2
  %17 = load i64* %len10, align 8
  %18 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %18) #3
  %19 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %19) #3
  %20 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %20) #3
  store i8* %14, i8** %__dest.addr.i, align 8
  store i8* %15, i8** %__src.addr.i, align 8
  store i64 %17, i64* %__len.addr.i, align 8
  %21 = load i8** %__dest.addr.i, align 8
  %22 = load i8** %__src.addr.i, align 8
  %23 = load i64* %__len.addr.i, align 8
  %24 = load i8** %__dest.addr.i, align 8
  %call.i = call i8* @__memcpy_chk(i8* %21, i8* %22, i64 %23, i64 -1) #3
  %25 = bitcast i8** %__dest.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %25) #3
  %26 = bitcast i8** %__src.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %26) #3
  %27 = bitcast i64* %__len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %27) #3
  %28 = load i8** %str.addr, align 8
  %29 = load %struct._String** %o, align 8
  %len12 = getelementptr inbounds %struct._String* %29, i32 0, i32 2
  %30 = load i64* %len12, align 8
  %31 = bitcast i8** %_str.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %31)
  %32 = bitcast i64* %len.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %32)
  %33 = bitcast i8** %str.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %33)
  %34 = bitcast i64* %hash.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %34)
  store i8* %28, i8** %_str.addr.i, align 8
  store i64 %30, i64* %len.addr.i, align 8
  %35 = load i8** %_str.addr.i, align 8
  store i8* %35, i8** %str.i, align 8
  store i64 5381, i64* %hash.i, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %cond.end
  %36 = load i64* %len.addr.i, align 8
  %dec.i = add i64 %36, -1
  store i64 %dec.i, i64* %len.addr.i, align 8
  %tobool.i = icmp ne i64 %36, 0
  br i1 %tobool.i, label %while.body.i, label %make_hash.exit

while.body.i:                                     ; preds = %while.cond.i
  %37 = load i64* %hash.i, align 8
  %shl.i = shl i64 %37, 5
  %38 = load i64* %hash.i, align 8
  %add.i = add i64 %shl.i, %38
  %39 = load i8** %str.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8* %39, i32 1
  store i8* %incdec.ptr.i, i8** %str.i, align 8
  %40 = load i8* %39, align 1
  %conv.i = sext i8 %40 to i64
  %add1.i = add i64 %add.i, %conv.i
  store i64 %add1.i, i64* %hash.i, align 8
  br label %while.cond.i

make_hash.exit:                                   ; preds = %while.cond.i
  %41 = load i64* %hash.i, align 8
  %42 = bitcast i8** %_str.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %42)
  %43 = bitcast i64* %len.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %43)
  %44 = bitcast i8** %str.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %44)
  %45 = bitcast i64* %hash.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %45)
  %rem = urem i64 %41, 512
  %46 = load %struct._String** %o, align 8
  %hash = getelementptr inbounds %struct._String* %46, i32 0, i32 3
  store i64 %rem, i64* %hash, align 8
  %47 = load %struct._String** %o, align 8
  %48 = ptrtoint %struct._String* %47 to i64
  %or = or i64 %48, -4503599627370496
  %or14 = or i64 %or, 562949953421312
  %49 = inttoptr i64 %or14 to i8*
  %o15 = bitcast %union.UnionType* %ret to i8**
  store i8* %49, i8** %o15, align 8
  %50 = bitcast %union.UnionType* %retval to i8*
  %51 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %52 = bitcast double* %coerce.dive2 to i64*
  %53 = load i64* %52, align 1
  ret i64 %53
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
  call void @__assert_rtn(i8* getelementptr inbounds ([7 x i8]* @__func__._close, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 80, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._abs, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 107, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._int, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 125, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._sin, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._cos, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
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
  %or1 = or i64 %or, 3659174697238528
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
    i64 13, label %sw.bb14
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
define void @print_object(%struct.__sFILE* %fp, i64 %o.coerce) #0 {
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
  %o = alloca %union.UnionType, align 8
  %coerce = alloca %union.UnionType, align 8
  %object = alloca %struct._Object*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %coerce.dive1 = bitcast %union.UnionType* %o to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %o.coerce, i64* %0, align 1
  %1 = load %struct.__sFILE** %fp.addr, align 8
  %tobool = icmp ne %struct.__sFILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE** @__stdoutp, align 8
  store %struct.__sFILE* %2, %struct.__sFILE** %fp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %o1 = bitcast %union.UnionType* %o to i8**
  %3 = load i8** %o1, align 8
  %4 = ptrtoint i8* %3 to i64
  %and = and i64 %4, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv2 = sext i32 %conv to i64
  %o3 = bitcast %union.UnionType* %o to i8**
  %5 = load i8** %o3, align 8
  %6 = ptrtoint i8* %5 to i64
  %and4 = and i64 %6, 4222124650659840
  %shr = lshr i64 %and4, 48
  %mul = mul i64 %conv2, %shr
  switch i64 %mul, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.bb7
    i64 2, label %sw.bb9
    i64 3, label %sw.bb12
    i64 4, label %sw.bb23
    i64 5, label %sw.bb26
    i64 6, label %sw.bb29
    i64 9, label %sw.bb32
    i64 7, label %sw.bb35
    i64 8, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.__sFILE** %fp.addr, align 8
  %o5 = bitcast %union.UnionType* %o to i8**
  %8 = load i8** %o5, align 8
  %9 = ptrtoint i8* %8 to i64
  %conv6 = trunc i64 %9 to i32
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i32 %conv6)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %10 = load %struct.__sFILE** %fp.addr, align 8
  %d = bitcast %union.UnionType* %o to double*
  %11 = load double* %d, align 8
  %call8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), double %11)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %12 = load %struct.__sFILE** %fp.addr, align 8
  %o10 = bitcast %union.UnionType* %o to i8**
  %13 = load i8** %o10, align 8
  %14 = ptrtoint i8* %13 to i64
  %xor = xor i64 %14, -3940649673949184
  %15 = inttoptr i64 %xor to %struct._String*
  %s = getelementptr inbounds %struct._String* %15, i32 0, i32 1
  %16 = load i8** %s, align 8
  %call11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %16)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %17 = load %struct.__sFILE** %fp.addr, align 8
  %18 = load %struct.__sFILE** @__stdoutp, align 8
  %cmp13 = icmp ne %struct.__sFILE* %17, %18
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %sw.bb12
  %19 = load %struct.__sFILE** %fp.addr, align 8
  %o16 = bitcast %union.UnionType* %o to i8**
  %20 = load i8** %o16, align 8
  %21 = ptrtoint i8* %20 to i64
  %xor17 = xor i64 %21, -3659174697238528
  %22 = inttoptr i64 %xor17 to %struct._Array*
  %23 = bitcast %struct.__sFILE** %fp.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %23) #3
  %24 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %24) #3
  %25 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %25) #3
  %26 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %26) #3
  store %struct.__sFILE* %19, %struct.__sFILE** %fp.addr.i, align 8
  store %struct._Array* %22, %struct._Array** %array.addr.i, align 8
  %27 = load %struct._Array** %array.addr.i, align 8
  %size1.i = getelementptr inbounds %struct._Array* %27, i32 0, i32 2
  %28 = load i64* %size1.i, align 8
  store i64 %28, i64* %size.i, align 8
  store i64 0, i64* %i.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.then15
  %29 = load i64* %i.i, align 8
  %30 = load i64* %size.i, align 8
  %cmp.i = icmp ult i64 %29, %30
  br i1 %cmp.i, label %for.inc.i, label %_print_with_handler.exit

for.inc.i:                                        ; preds = %for.cond.i
  %31 = load %struct.__sFILE** %fp.addr.i, align 8
  %32 = load i64* %i.i, align 8
  %33 = load %struct._Array** %array.addr.i, align 8
  %list.i = getelementptr inbounds %struct._Array* %33, i32 0, i32 1
  %34 = load %union.UnionType*** %list.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType** %34, i64 %32
  %35 = load %union.UnionType** %arrayidx.i, align 8
  %coerce.dive1.i = bitcast %union.UnionType* %35 to double*
  %36 = bitcast double* %coerce.dive1.i to i64*
  %37 = load i64* %36, align 1
  call void @print_object(%struct.__sFILE* %31, i64 %37) #3
  %38 = load i64* %i.i, align 8
  %inc.i = add i64 %38, 1
  store i64 %inc.i, i64* %i.i, align 8
  br label %for.cond.i

_print_with_handler.exit:                         ; preds = %for.cond.i
  %39 = bitcast %struct.__sFILE** %fp.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %39) #3
  %40 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %40) #3
  %41 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %41) #3
  %42 = bitcast i64* %i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %42) #3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  %o18 = bitcast %union.UnionType* %o to i8**
  %43 = load i8** %o18, align 8
  %44 = ptrtoint i8* %43 to i64
  %xor19 = xor i64 %44, -3659174697238528
  %45 = inttoptr i64 %xor19 to %struct._Array*
  %46 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %46) #3
  %47 = bitcast %struct._Array** %array.addr.i4 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %47) #3
  %48 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %48) #3
  %49 = bitcast i64* %size.i5 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %49) #3
  %50 = bitcast i64* %i.i6 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %50) #3
  store %struct._Array* %45, %struct._Array** %array.addr.i4, align 8
  %51 = load %struct._Array** %array.addr.i4, align 8
  %size1.i7 = getelementptr inbounds %struct._Array* %51, i32 0, i32 2
  %52 = load i64* %size1.i7, align 8
  store i64 %52, i64* %size.i5, align 8
  store i64 0, i64* %i.i6, align 8
  store i64 0, i64* %i.i6, align 8
  br label %for.cond.i9

for.cond.i9:                                      ; preds = %for.inc.i14, %if.else
  %53 = load i64* %i.i6, align 8
  %54 = load i64* %size.i5, align 8
  %cmp.i8 = icmp ult i64 %53, %54
  br i1 %cmp.i8, label %for.inc.i14, label %print.exit

for.inc.i14:                                      ; preds = %for.cond.i9
  %55 = load %struct.__sFILE** @__stdoutp, align 8
  %56 = load i64* %i.i6, align 8
  %57 = load %struct._Array** %array.addr.i4, align 8
  %list.i10 = getelementptr inbounds %struct._Array* %57, i32 0, i32 1
  %58 = load %union.UnionType*** %list.i10, align 8
  %arrayidx.i11 = getelementptr inbounds %union.UnionType** %58, i64 %56
  %59 = load %union.UnionType** %arrayidx.i11, align 8
  %coerce.dive1.i12 = bitcast %union.UnionType* %59 to double*
  %60 = bitcast double* %coerce.dive1.i12 to i64*
  %61 = load i64* %60, align 1
  call void @print_object(%struct.__sFILE* %55, i64 %61) #3
  %62 = load i64* %i.i6, align 8
  %inc.i13 = add i64 %62, 1
  store i64 %inc.i13, i64* %i.i6, align 8
  br label %for.cond.i9

print.exit:                                       ; preds = %for.cond.i9
  %o.i = bitcast %union.UnionType* %ret.i to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o.i, align 8
  %63 = bitcast %union.UnionType* %retval.i to i8*
  %64 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 8, i32 8, i1 false) #3
  %coerce.dive22.i = bitcast %union.UnionType* %retval.i to double*
  %65 = bitcast double* %coerce.dive22.i to i64*
  %66 = load i64* %65, align 1
  %67 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %67) #3
  %68 = bitcast %struct._Array** %array.addr.i4 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %68) #3
  %69 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %69) #3
  %70 = bitcast i64* %size.i5 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %70) #3
  %71 = bitcast i64* %i.i6 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %71) #3
  %coerce.dive212 = bitcast %union.UnionType* %coerce to double*
  %72 = bitcast double* %coerce.dive212 to i64*
  store i64 %66, i64* %72, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %73 = load %struct.__sFILE** %fp.addr, align 8
  %o24 = bitcast %union.UnionType* %o to i8**
  %74 = load i8** %o24, align 8
  %call25 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %73, i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0), i8* %74)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %75 = load %struct.__sFILE** %fp.addr, align 8
  %o27 = bitcast %union.UnionType* %o to i8**
  %76 = load i8** %o27, align 8
  %77 = ptrtoint i8* %76 to i64
  %xor28 = xor i64 %77, -3096224743817216
  %78 = inttoptr i64 %xor28 to %struct._Hash*
  call void @print_hash(%struct.__sFILE* %75, %struct._Hash* %78)
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %79 = load %struct.__sFILE** %fp.addr, align 8
  %o30 = bitcast %union.UnionType* %o to i8**
  %80 = load i8** %o30, align 8
  %call31 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %79, i8* getelementptr inbounds ([9 x i8]* @.str43, i32 0, i32 0), i8* %80)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  %81 = load %struct.__sFILE** %fp.addr, align 8
  %o33 = bitcast %union.UnionType* %o to i8**
  %82 = load i8** %o33, align 8
  %call34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %81, i8* getelementptr inbounds ([9 x i8]* @.str44, i32 0, i32 0), i8* %82)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %o36 = bitcast %union.UnionType* %o to i8**
  %83 = load i8** %o36, align 8
  %84 = ptrtoint i8* %83 to i64
  %xor37 = xor i64 %84, -2533274790395904
  %85 = inttoptr i64 %xor37 to %struct._Object*
  store %struct._Object* %85, %struct._Object** %object, align 8
  %86 = load %struct.__sFILE** %fp.addr, align 8
  %87 = load %struct._Object** %object, align 8
  %v = getelementptr inbounds %struct._Object* %87, i32 0, i32 1
  %coerce.dive383 = bitcast %union.UnionType* %v to double*
  %88 = bitcast double* %coerce.dive383 to i64*
  %89 = load i64* %88, align 1
  call void @print_object(%struct.__sFILE* %86, i64 %89)
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  %90 = load %struct.__sFILE** %fp.addr, align 8
  %o40 = bitcast %union.UnionType* %o to i8**
  %91 = load i8** %o40, align 8
  %92 = ptrtoint i8* %91 to i64
  %xor41 = xor i64 %92, -2251799813685248
  %93 = inttoptr i64 %xor41 to %struct._BlessedObject*
  %pkg_name = getelementptr inbounds %struct._BlessedObject* %93, i32 0, i32 3
  %94 = load i8** %pkg_name, align 8
  %o42 = bitcast %union.UnionType* %o to i8**
  %95 = load i8** %o42, align 8
  %call43 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %90, i8* getelementptr inbounds ([12 x i8]* @.str45, i32 0, i32 0), i8* %94, i8* %95)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %_print_with_handler.exit, %print.exit, %sw.bb39, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb9, %sw.bb7, %sw.bb
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
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([26 x i8]* @.str27, i32 0, i32 0))
  %2 = load %struct.__sFILE** @__stdoutp, align 8
  %coerce.dive13 = bitcast %union.UnionType* %o to double*
  %3 = bitcast double* %coerce.dive13 to i64*
  %4 = load i64* %3, align 1
  call void @print_object(%struct.__sFILE* %2, i64 %4)
  %5 = load %struct.__sFILE** @__stderrp, align 8
  %call2 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([15 x i8]* @.str28, i32 0, i32 0))
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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.shift, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 363, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
  %call41 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %51, i8* getelementptr inbounds ([30 x i8]* @.str29, i32 0, i32 0))
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
  %call3 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str30, i32 0, i32 0))
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
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([27 x i8]* @.str31, i32 0, i32 0))
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__.push, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 403, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
    i64 13, label %sw.bb18
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
  call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.HashRef_get, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 474, i8* getelementptr inbounds ([33 x i8]* @.str32, i32 0, i32 0)) #8
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
define void @Array_add(%struct._Array* %array, %union.UnionType* %elem) #0 {
entry:
  %array.addr = alloca %struct._Array*, align 8
  %elem.addr = alloca %union.UnionType*, align 8
  %size = alloca i64, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  store %union.UnionType* %elem, %union.UnionType** %elem.addr, align 8
  %0 = load %struct._Array** %array.addr, align 8
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size1, align 8
  store i64 %1, i64* %size, align 8
  %2 = load %struct._Array** %array.addr, align 8
  %3 = load i64* %size, align 8
  %add = add i64 %3, 1
  call void @Array_grow(%struct._Array* %2, i64 %add)
  %4 = load %union.UnionType** %elem.addr, align 8
  %5 = load i64* %size, align 8
  %6 = load %struct._Array** %array.addr, align 8
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i64 %5
  store %union.UnionType* %4, %union.UnionType** %arrayidx, align 8
  ret void
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
    i64 13, label %sw.bb16
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
  call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.ArrayRef_get, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 531, i8* getelementptr inbounds ([33 x i8]* @.str32, i32 0, i32 0)) #8
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
  %or1.i = or i64 %or.i, 3659174697238528
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
  %retval = alloca %union.UnionType, align 8
  %args.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %self = alloca %union.UnionType, align 8
  %class = alloca %union.UnionType, align 8
  %blessed = alloca %struct._BlessedObject*, align 8
  %pkg_name = alloca i8*, align 8
  %hash_ref = alloca %struct._HashRef*, align 8
  %hash = alloca %struct._Hash*, align 8
  %pkg = alloca %struct._Package*, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 8
  %0 = load %struct._Array** %args.addr, align 8
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i64* %size, align 8
  %cmp = icmp ne i64 %1, 2
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str33, i32 0, i32 0))
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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 634, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
  br i1 %cmp44, label %if.then46, label %do.end58

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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 636, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

do.end58:                                         ; preds = %do.body34
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
  %call67 = call %struct._Package* @get_pkg(i8* %59)
  store %struct._Package* %call67, %struct._Package** %pkg, align 8
  %60 = load %struct._Package** %pkg, align 8
  %tobool = icmp ne %struct._Package* %60, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end58
  %61 = phi i1 [ false, %do.end58 ], [ true, %land.rhs ]
  %lnot = xor i1 %61, true
  %lnot.ext = zext i1 %lnot to i32
  %conv68 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv68, i64 0)
  %tobool69 = icmp ne i64 %expval, 0
  br i1 %tobool69, label %cond.true70, label %cond.end72

cond.true70:                                      ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 647, i8* getelementptr inbounds ([30 x i8]* @.str35, i32 0, i32 0)) #8
  unreachable

cond.end72:                                       ; preds = %land.end
  %62 = load %struct._Package** %pkg, align 8
  %63 = load %struct._BlessedObject** %blessed, align 8
  %mtds = getelementptr inbounds %struct._BlessedObject* %63, i32 0, i32 2
  store %struct._Package* %62, %struct._Package** %mtds, align 8
  %64 = load %struct._BlessedObject** %blessed, align 8
  %65 = ptrtoint %struct._BlessedObject* %64 to i64
  %or = or i64 %65, -4503599627370496
  %or73 = or i64 %or, 2251799813685248
  %66 = inttoptr i64 %or73 to i8*
  %o74 = bitcast %union.UnionType* %ret to i8**
  store i8* %66, i8** %o74, align 8
  %67 = bitcast %union.UnionType* %retval to i8*
  %68 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 8, i32 8, i1 false)
  %coerce.dive2 = bitcast %union.UnionType* %retval to double*
  %69 = bitcast double* %coerce.dive2 to i64*
  %70 = load i64* %69, align 1
  ret i64 %70
}

; Function Attrs: nounwind ssp uwtable
define %struct._Package* @get_pkg(i8* %pkg_name) #0 {
entry:
  %__dest.addr.i = alloca i8*, align 8
  %__src.addr.i = alloca i8*, align 8
  %__len.addr.i = alloca i64, align 8
  %retval.i10 = alloca %union.UnionType, align 8
  %list.addr.i = alloca %union.UnionType**, align 8
  %size.addr.i = alloca i64, align 8
  %ret.i = alloca %union.UnionType, align 8
  %array.i = alloca %struct._Array*, align 8
  %hash.addr.i5 = alloca %struct._Hash*, align 8
  %key.addr.i6 = alloca %struct._String*, align 8
  %elem.i = alloca %union.UnionType, align 8
  %size.i = alloca i64, align 8
  %retval.i = alloca %union.UnionType, align 8
  %hash.addr.i = alloca %struct._Hash*, align 8
  %key.addr.i = alloca %struct._String*, align 8
  %retval = alloca %struct._Package*, align 8
  %pkg_name.addr = alloca i8*, align 8
  %ret = alloca %struct._Package*, align 8
  %_key = alloca %union.UnionType, align 8
  %key = alloca %struct._String*, align 8
  %_pkg = alloca %union.UnionType, align 8
  %pkg = alloca %struct._Package*, align 8
  %coerce = alloca %union.UnionType, align 8
  %value = alloca %union.UnionType, align 8
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  %call = call i32 @pthread_mutex_lock(%struct._opaque_pthread_mutex_t* @mutex)
  store %struct._Package* null, %struct._Package** %ret, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call1 = call i64 @new_String(i8* %0)
  %coerce.dive1 = bitcast %union.UnionType* %_key to double*
  %1 = bitcast double* %coerce.dive1 to i64*
  store i64 %call1, i64* %1, align 1
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
  %coerce.dive32 = bitcast %union.UnionType* %_pkg to double*
  %21 = bitcast double* %coerce.dive32 to i64*
  store i64 %17, i64* %21, align 1
  %o4 = bitcast %union.UnionType* %_pkg to i8**
  %22 = load i8** %o4, align 8
  %23 = ptrtoint i8* %22 to i64
  %and = and i64 %23, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv5 = sext i32 %conv to i64
  %o6 = bitcast %union.UnionType* %_pkg to i8**
  %24 = load i8** %o6, align 8
  %25 = ptrtoint i8* %24 to i64
  %and7 = and i64 %25, 4222124650659840
  %shr = lshr i64 %and7, 48
  %mul = mul i64 %conv5, %shr
  %cmp8 = icmp eq i64 %mul, 11
  br i1 %cmp8, label %if.then, label %cond.end

if.then:                                          ; preds = %entry
  %o10 = bitcast %union.UnionType* %_pkg to i8**
  %26 = load i8** %o10, align 8
  %27 = ptrtoint i8* %26 to i64
  %xor11 = xor i64 %27, -1407374883553280
  %28 = inttoptr i64 %xor11 to %struct._Package*
  store %struct._Package* %28, %struct._Package** %retval
  br label %return

cond.end:                                         ; preds = %entry
  %call12 = call i8* @calloc(i64 48, i64 1)
  %29 = bitcast i8* %call12 to %struct._Package*
  store %struct._Package* %29, %struct._Package** %pkg, align 8
  %call13 = call i8* @calloc(i64 8, i64 512)
  %30 = bitcast i8* %call13 to %union.UnionType*
  %31 = load %struct._Package** %pkg, align 8
  %table = getelementptr inbounds %struct._Package* %31, i32 0, i32 1
  store %union.UnionType* %30, %union.UnionType** %table, align 8
  %32 = load %struct._Package** %pkg, align 8
  %table14 = getelementptr inbounds %struct._Package* %32, i32 0, i32 1
  %33 = load %union.UnionType** %table14, align 8
  %34 = bitcast %union.UnionType* %33 to i8*
  %35 = load %struct._Package** %pkg, align 8
  %table20 = getelementptr inbounds %struct._Package* %35, i32 0, i32 1
  %36 = load %union.UnionType** %table20, align 8
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
  %call22 = call i8* @calloc(i64 8, i64 512)
  %50 = bitcast i8* %call22 to %struct._String**
  %51 = load %struct._Package** %pkg, align 8
  %keys = getelementptr inbounds %struct._Package* %51, i32 0, i32 2
  store %struct._String** %50, %struct._String*** %keys, align 8
  %52 = bitcast %union.UnionType* %retval.i10 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %52) #3
  %53 = bitcast %union.UnionType*** %list.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %53) #3
  %54 = bitcast i64* %size.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %54) #3
  %55 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %55) #3
  %56 = bitcast %struct._Array** %array.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %56) #3
  store %union.UnionType** null, %union.UnionType*** %list.addr.i, align 8
  store i64 0, i64* %size.addr.i, align 8
  %57 = load i32* @count, align 4
  %inc.i.i = add nsw i32 %57, 1
  store i32 %inc.i.i, i32* @count, align 4
  %58 = load i32* @count, align 4
  %idxprom.i.i = sext i32 %58 to i64
  %59 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i.i = getelementptr inbounds %struct._Object** %59, i64 %idxprom.i.i
  %60 = load %struct._Object** %arrayidx.i.i, align 8
  %61 = bitcast %struct._Object* %60 to %struct._Array*
  store %struct._Array* %61, %struct._Array** %array.i, align 8
  %62 = load %union.UnionType*** %list.addr.i, align 8
  %63 = load %struct._Array** %array.i, align 8
  %list1.i = getelementptr inbounds %struct._Array* %63, i32 0, i32 1
  store %union.UnionType** %62, %union.UnionType*** %list1.i, align 8
  %64 = load i64* %size.addr.i, align 8
  %65 = load %struct._Array** %array.i, align 8
  %size2.i = getelementptr inbounds %struct._Array* %65, i32 0, i32 2
  store i64 %64, i64* %size2.i, align 8
  %66 = load %struct._Array** %array.i, align 8
  %67 = ptrtoint %struct._Array* %66 to i64
  %or.i = or i64 %67, -4503599627370496
  %or3.i = or i64 %or.i, 844424930131968
  %68 = inttoptr i64 %or3.i to i8*
  %o.i = bitcast %union.UnionType* %ret.i to i8**
  store i8* %68, i8** %o.i, align 8
  %69 = bitcast %union.UnionType* %retval.i10 to i8*
  %70 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i11 = bitcast %union.UnionType* %retval.i10 to double*
  %71 = bitcast double* %coerce.dive1.i11 to i64*
  %72 = load i64* %71, align 1
  %73 = bitcast %union.UnionType* %retval.i10 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %73) #3
  %74 = bitcast %union.UnionType*** %list.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %74) #3
  %75 = bitcast i64* %size.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %75) #3
  %76 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %76) #3
  %77 = bitcast %struct._Array** %array.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %77) #3
  %coerce.dive243 = bitcast %union.UnionType* %coerce to double*
  %78 = bitcast double* %coerce.dive243 to i64*
  store i64 %72, i64* %78, align 1
  %o25 = bitcast %union.UnionType* %coerce to i8**
  %79 = load i8** %o25, align 8
  %80 = ptrtoint i8* %79 to i64
  %xor26 = xor i64 %80, -3659174697238528
  %81 = inttoptr i64 %xor26 to %struct._Array*
  %82 = load %struct._Package** %pkg, align 8
  %isa = getelementptr inbounds %struct._Package* %82, i32 0, i32 4
  store %struct._Array* %81, %struct._Array** %isa, align 8
  %83 = load i8** %pkg_name.addr, align 8
  %84 = load %struct._Package** %pkg, align 8
  %name = getelementptr inbounds %struct._Package* %84, i32 0, i32 5
  store i8* %83, i8** %name, align 8
  %85 = load %struct._Package** %pkg, align 8
  %86 = ptrtoint %struct._Package* %85 to i64
  %or = or i64 %86, -4503599627370496
  %or27 = or i64 %or, 3096224743817216
  %87 = inttoptr i64 %or27 to i8*
  %o28 = bitcast %union.UnionType* %value to i8**
  store i8* %87, i8** %o28, align 8
  %88 = load %struct._Hash** @pkg_map, align 8
  %89 = load %struct._String** %key, align 8
  %coerce.dive294 = bitcast %union.UnionType* %value to double*
  %90 = bitcast double* %coerce.dive294 to i64*
  %91 = load i64* %90, align 1
  %92 = bitcast %struct._Hash** %hash.addr.i5 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %92) #3
  %93 = bitcast %struct._String** %key.addr.i6 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %93) #3
  %94 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %94) #3
  %95 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %95) #3
  store %struct._Hash* %88, %struct._Hash** %hash.addr.i5, align 8
  store %struct._String* %89, %struct._String** %key.addr.i6, align 8
  %coerce.dive1.i7 = bitcast %union.UnionType* %elem.i to double*
  %96 = bitcast double* %coerce.dive1.i7 to i64*
  store i64 %91, i64* %96, align 1
  %97 = load %struct._Hash** %hash.addr.i5, align 8
  %size1.i = getelementptr inbounds %struct._Hash* %97, i32 0, i32 3
  %98 = load i64* %size1.i, align 8
  store i64 %98, i64* %size.i, align 8
  %99 = load %struct._String** %key.addr.i6, align 8
  %hash2.i = getelementptr inbounds %struct._String* %99, i32 0, i32 3
  %100 = load i64* %hash2.i, align 8
  %101 = load %struct._Hash** %hash.addr.i5, align 8
  %table.i8 = getelementptr inbounds %struct._Hash* %101, i32 0, i32 1
  %102 = load %union.UnionType** %table.i8, align 8
  %arrayidx.i9 = getelementptr inbounds %union.UnionType* %102, i64 %100
  %103 = bitcast %union.UnionType* %arrayidx.i9 to i8*
  %104 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 8, i32 8, i1 false) #3
  %105 = load %struct._String** %key.addr.i6, align 8
  %106 = load i64* %size.i, align 8
  %add.i = add i64 %106, 1
  %107 = load %struct._Hash** %hash.addr.i5, align 8
  %keys.i = getelementptr inbounds %struct._Hash* %107, i32 0, i32 2
  %108 = load %struct._String*** %keys.i, align 8
  %arrayidx3.i = getelementptr inbounds %struct._String** %108, i64 %add.i
  store %struct._String* %105, %struct._String** %arrayidx3.i, align 8
  %109 = load %struct._Hash** %hash.addr.i5, align 8
  %size4.i = getelementptr inbounds %struct._Hash* %109, i32 0, i32 3
  %110 = load i64* %size4.i, align 8
  %inc.i = add i64 %110, 1
  store i64 %inc.i, i64* %size4.i, align 8
  %111 = bitcast %struct._Hash** %hash.addr.i5 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %111) #3
  %112 = bitcast %struct._String** %key.addr.i6 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %112) #3
  %113 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %113) #3
  %114 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %114) #3
  %call30 = call i32 @pthread_mutex_unlock(%struct._opaque_pthread_mutex_t* @mutex)
  %115 = load %struct._Package** %pkg, align 8
  store %struct._Package* %115, %struct._Package** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %116 = load %struct._Package** %retval
  ret %struct._Package* %116
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #5

declare i32 @pthread_mutex_lock(%struct._opaque_pthread_mutex_t*) #1

declare i32 @pthread_mutex_unlock(%struct._opaque_pthread_mutex_t*) #1

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
  %pkg = alloca %struct._Package*, align 8
  %_mtd_name = alloca %union.UnionType, align 8
  %o = alloca %struct._CodeRef*, align 8
  %code_ref = alloca %union.UnionType, align 8
  %s = alloca %struct._String*, align 8
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  store i8* %mtd_name, i8** %mtd_name.addr, align 8
  store i64 (%struct._Array*)* %code, i64 (%struct._Array*)** %code.addr, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call = call %struct._Package* @get_pkg(i8* %0)
  store %struct._Package* %call, %struct._Package** %pkg, align 8
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
  %o6 = bitcast %union.UnionType* %_mtd_name to i8**
  %9 = load i8** %o6, align 8
  %10 = ptrtoint i8* %9 to i64
  %xor = xor i64 %10, -3940649673949184
  %11 = inttoptr i64 %xor to %struct._String*
  store %struct._String* %11, %struct._String** %s, align 8
  %12 = load %struct._Package** %pkg, align 8
  %13 = bitcast %struct._Package* %12 to %struct._Hash*
  %o7 = bitcast %union.UnionType* %_mtd_name to i8**
  %14 = load i8** %o7, align 8
  %15 = ptrtoint i8* %14 to i64
  %xor8 = xor i64 %15, -3940649673949184
  %16 = inttoptr i64 %xor8 to %struct._String*
  %coerce.dive92 = bitcast %union.UnionType* %code_ref to double*
  %17 = bitcast double* %coerce.dive92 to i64*
  %18 = load i64* %17, align 1
  %19 = bitcast %struct._Hash** %hash.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %19) #3
  %20 = bitcast %struct._String** %key.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %20) #3
  %21 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %21) #3
  %22 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %22) #3
  store %struct._Hash* %13, %struct._Hash** %hash.addr.i, align 8
  store %struct._String* %16, %struct._String** %key.addr.i, align 8
  %coerce.dive1.i = bitcast %union.UnionType* %elem.i to double*
  %23 = bitcast double* %coerce.dive1.i to i64*
  store i64 %18, i64* %23, align 1
  %24 = load %struct._Hash** %hash.addr.i, align 8
  %size1.i = getelementptr inbounds %struct._Hash* %24, i32 0, i32 3
  %25 = load i64* %size1.i, align 8
  store i64 %25, i64* %size.i, align 8
  %26 = load %struct._String** %key.addr.i, align 8
  %hash2.i = getelementptr inbounds %struct._String* %26, i32 0, i32 3
  %27 = load i64* %hash2.i, align 8
  %28 = load %struct._Hash** %hash.addr.i, align 8
  %table.i = getelementptr inbounds %struct._Hash* %28, i32 0, i32 1
  %29 = load %union.UnionType** %table.i, align 8
  %arrayidx.i = getelementptr inbounds %union.UnionType* %29, i64 %27
  %30 = bitcast %union.UnionType* %arrayidx.i to i8*
  %31 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false) #3
  %32 = load %struct._String** %key.addr.i, align 8
  %33 = load i64* %size.i, align 8
  %add.i = add i64 %33, 1
  %34 = load %struct._Hash** %hash.addr.i, align 8
  %keys.i = getelementptr inbounds %struct._Hash* %34, i32 0, i32 2
  %35 = load %struct._String*** %keys.i, align 8
  %arrayidx3.i = getelementptr inbounds %struct._String** %35, i64 %add.i
  store %struct._String* %32, %struct._String** %arrayidx3.i, align 8
  %36 = load %struct._Hash** %hash.addr.i, align 8
  %size4.i = getelementptr inbounds %struct._Hash* %36, i32 0, i32 3
  %37 = load i64* %size4.i, align 8
  %inc.i = add i64 %37, 1
  store i64 %inc.i, i64* %size4.i, align 8
  %38 = bitcast %struct._Hash** %hash.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %38) #3
  %39 = bitcast %struct._String** %key.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %39) #3
  %40 = bitcast %union.UnionType* %elem.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %40) #3
  %41 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %41) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 (%struct._Array*)* @get_method_by_name(%struct._BlessedObject* %self, i8* %mtd_name) #0 {
entry:
  %self.addr = alloca %struct._BlessedObject*, align 8
  %mtd_name.addr = alloca i8*, align 8
  %mtds = alloca %struct._Package*, align 8
  %str = alloca %union.UnionType, align 8
  %s = alloca %struct._String*, align 8
  %mtd = alloca %union.UnionType, align 8
  %code_ref = alloca %struct._CodeRef*, align 8
  %isa = alloca %struct._Array*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %base = alloca %struct._Package*, align 8
  %mtd17 = alloca %union.UnionType, align 8
  store %struct._BlessedObject* %self, %struct._BlessedObject** %self.addr, align 8
  store i8* %mtd_name, i8** %mtd_name.addr, align 8
  %0 = load %struct._BlessedObject** %self.addr, align 8
  %mtds1 = getelementptr inbounds %struct._BlessedObject* %0, i32 0, i32 2
  %1 = load %struct._Package** %mtds1, align 8
  store %struct._Package* %1, %struct._Package** %mtds, align 8
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
  %9 = load %struct._Package** %mtds, align 8
  %table = getelementptr inbounds %struct._Package* %9, i32 0, i32 1
  %10 = load %union.UnionType** %table, align 8
  %arrayidx = getelementptr inbounds %union.UnionType* %10, i64 %8
  %11 = bitcast %union.UnionType* %mtd to i8*
  %12 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  store %struct._CodeRef* null, %struct._CodeRef** %code_ref, align 8
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
  %cmp6 = icmp eq i64 %mul, 9
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %o8 = bitcast %union.UnionType* %mtd to i8**
  %17 = load i8** %o8, align 8
  %18 = ptrtoint i8* %17 to i64
  %xor9 = xor i64 %18, -1970324836974592
  %19 = inttoptr i64 %xor9 to %struct._CodeRef*
  store %struct._CodeRef* %19, %struct._CodeRef** %code_ref, align 8
  br label %if.end35

if.else:                                          ; preds = %entry
  %20 = load %struct._Package** %mtds, align 8
  %isa10 = getelementptr inbounds %struct._Package* %20, i32 0, i32 4
  %21 = load %struct._Array** %isa10, align 8
  store %struct._Array* %21, %struct._Array** %isa, align 8
  %22 = load %struct._Array** %isa, align 8
  %size11 = getelementptr inbounds %struct._Array* %22, i32 0, i32 2
  %23 = load i64* %size11, align 8
  store i64 %23, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %24 = load i64* %i, align 8
  %25 = load i64* %size, align 8
  %cmp12 = icmp ult i64 %24, %25
  br i1 %cmp12, label %for.body, label %if.end35

for.body:                                         ; preds = %for.cond
  %26 = load i64* %i, align 8
  %27 = load %struct._Array** %isa, align 8
  %list = getelementptr inbounds %struct._Array* %27, i32 0, i32 1
  %28 = load %union.UnionType*** %list, align 8
  %arrayidx14 = getelementptr inbounds %union.UnionType** %28, i64 %26
  %29 = load %union.UnionType** %arrayidx14, align 8
  %o15 = bitcast %union.UnionType* %29 to i8**
  %30 = load i8** %o15, align 8
  %31 = ptrtoint i8* %30 to i64
  %xor16 = xor i64 %31, -1407374883553280
  %32 = inttoptr i64 %xor16 to %struct._Package*
  store %struct._Package* %32, %struct._Package** %base, align 8
  %33 = load %struct._String** %s, align 8
  %hash18 = getelementptr inbounds %struct._String* %33, i32 0, i32 3
  %34 = load i64* %hash18, align 8
  %35 = load %struct._Package** %base, align 8
  %table19 = getelementptr inbounds %struct._Package* %35, i32 0, i32 1
  %36 = load %union.UnionType** %table19, align 8
  %arrayidx20 = getelementptr inbounds %union.UnionType* %36, i64 %34
  %37 = bitcast %union.UnionType* %mtd17 to i8*
  %38 = bitcast %union.UnionType* %arrayidx20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 8, i32 8, i1 false)
  %o21 = bitcast %union.UnionType* %mtd17 to i8**
  %39 = load i8** %o21, align 8
  %40 = ptrtoint i8* %39 to i64
  %and22 = and i64 %40, -4503599627370496
  %cmp23 = icmp eq i64 %and22, -4503599627370496
  %conv24 = zext i1 %cmp23 to i32
  %conv25 = sext i32 %conv24 to i64
  %o26 = bitcast %union.UnionType* %mtd17 to i8**
  %41 = load i8** %o26, align 8
  %42 = ptrtoint i8* %41 to i64
  %and27 = and i64 %42, 4222124650659840
  %shr28 = lshr i64 %and27, 48
  %mul29 = mul i64 %conv25, %shr28
  %cmp30 = icmp eq i64 %mul29, 9
  br i1 %cmp30, label %if.then32, label %for.inc

if.then32:                                        ; preds = %for.body
  %o33 = bitcast %union.UnionType* %mtd17 to i8**
  %43 = load i8** %o33, align 8
  %44 = ptrtoint i8* %43 to i64
  %xor34 = xor i64 %44, -1970324836974592
  %45 = inttoptr i64 %xor34 to %struct._CodeRef*
  store %struct._CodeRef* %45, %struct._CodeRef** %code_ref, align 8
  br label %if.end35

for.inc:                                          ; preds = %for.body
  %46 = load i64* %i, align 8
  %inc = add i64 %46, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

if.end35:                                         ; preds = %for.cond, %if.then32, %if.then
  %47 = load %struct._CodeRef** %code_ref, align 8
  %tobool = icmp ne %struct._CodeRef* %47, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end35
  %48 = phi i1 [ false, %if.end35 ], [ true, %land.rhs ]
  %lnot = xor i1 %48, true
  %lnot.ext = zext i1 %lnot to i32
  %conv36 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv36, i64 0)
  %tobool37 = icmp ne i64 %expval, 0
  br i1 %tobool37, label %cond.true, label %cond.end

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.get_method_by_name, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 731, i8* getelementptr inbounds ([33 x i8]* @.str37, i32 0, i32 0)) #8
  unreachable

cond.end:                                         ; preds = %land.end
  %49 = load %struct._CodeRef** %code_ref, align 8
  %code = getelementptr inbounds %struct._CodeRef* %49, i32 0, i32 1
  %50 = load i64 (%struct._Array*)** %code, align 8
  ret i64 (%struct._Array*)* %50
}

; Function Attrs: nounwind ssp uwtable
define i64 (%struct._Array*)* @get_class_method_by_name(i8* %pkg_name, i8* %mtd_name) #0 {
entry:
  %pkg_name.addr = alloca i8*, align 8
  %mtd_name.addr = alloca i8*, align 8
  %pkg = alloca %struct._Package*, align 8
  %str = alloca %union.UnionType, align 8
  %s = alloca %struct._String*, align 8
  %mtd = alloca %union.UnionType, align 8
  %code_ref = alloca %struct._CodeRef*, align 8
  %isa = alloca %struct._Array*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %base = alloca %struct._Package*, align 8
  %mtd17 = alloca %union.UnionType, align 8
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  store i8* %mtd_name, i8** %mtd_name.addr, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call = call %struct._Package* @get_pkg(i8* %0)
  store %struct._Package* %call, %struct._Package** %pkg, align 8
  %1 = load i8** %mtd_name.addr, align 8
  %call1 = call i64 @new_String(i8* %1)
  %coerce.dive1 = bitcast %union.UnionType* %str to double*
  %2 = bitcast double* %coerce.dive1 to i64*
  store i64 %call1, i64* %2, align 1
  %o = bitcast %union.UnionType* %str to i8**
  %3 = load i8** %o, align 8
  %4 = ptrtoint i8* %3 to i64
  %xor = xor i64 %4, -3940649673949184
  %5 = inttoptr i64 %xor to %struct._String*
  store %struct._String* %5, %struct._String** %s, align 8
  %6 = load %struct._String** %s, align 8
  %hash = getelementptr inbounds %struct._String* %6, i32 0, i32 3
  %7 = load i64* %hash, align 8
  %8 = load %struct._Package** %pkg, align 8
  %table = getelementptr inbounds %struct._Package* %8, i32 0, i32 1
  %9 = load %union.UnionType** %table, align 8
  %arrayidx = getelementptr inbounds %union.UnionType* %9, i64 %7
  %10 = bitcast %union.UnionType* %mtd to i8*
  %11 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  store %struct._CodeRef* null, %struct._CodeRef** %code_ref, align 8
  %o2 = bitcast %union.UnionType* %mtd to i8**
  %12 = load i8** %o2, align 8
  %13 = ptrtoint i8* %12 to i64
  %and = and i64 %13, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv3 = sext i32 %conv to i64
  %o4 = bitcast %union.UnionType* %mtd to i8**
  %14 = load i8** %o4, align 8
  %15 = ptrtoint i8* %14 to i64
  %and5 = and i64 %15, 4222124650659840
  %shr = lshr i64 %and5, 48
  %mul = mul i64 %conv3, %shr
  %cmp6 = icmp eq i64 %mul, 9
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %o8 = bitcast %union.UnionType* %mtd to i8**
  %16 = load i8** %o8, align 8
  %17 = ptrtoint i8* %16 to i64
  %xor9 = xor i64 %17, -1970324836974592
  %18 = inttoptr i64 %xor9 to %struct._CodeRef*
  store %struct._CodeRef* %18, %struct._CodeRef** %code_ref, align 8
  br label %if.end35

if.else:                                          ; preds = %entry
  %19 = load %struct._Package** %pkg, align 8
  %isa10 = getelementptr inbounds %struct._Package* %19, i32 0, i32 4
  %20 = load %struct._Array** %isa10, align 8
  store %struct._Array* %20, %struct._Array** %isa, align 8
  %21 = load %struct._Array** %isa, align 8
  %size11 = getelementptr inbounds %struct._Array* %21, i32 0, i32 2
  %22 = load i64* %size11, align 8
  store i64 %22, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %23 = load i64* %i, align 8
  %24 = load i64* %size, align 8
  %cmp12 = icmp ult i64 %23, %24
  br i1 %cmp12, label %for.body, label %if.end35

for.body:                                         ; preds = %for.cond
  %25 = load i64* %i, align 8
  %26 = load %struct._Array** %isa, align 8
  %list = getelementptr inbounds %struct._Array* %26, i32 0, i32 1
  %27 = load %union.UnionType*** %list, align 8
  %arrayidx14 = getelementptr inbounds %union.UnionType** %27, i64 %25
  %28 = load %union.UnionType** %arrayidx14, align 8
  %o15 = bitcast %union.UnionType* %28 to i8**
  %29 = load i8** %o15, align 8
  %30 = ptrtoint i8* %29 to i64
  %xor16 = xor i64 %30, -1407374883553280
  %31 = inttoptr i64 %xor16 to %struct._Package*
  store %struct._Package* %31, %struct._Package** %base, align 8
  %32 = load %struct._String** %s, align 8
  %hash18 = getelementptr inbounds %struct._String* %32, i32 0, i32 3
  %33 = load i64* %hash18, align 8
  %34 = load %struct._Package** %base, align 8
  %table19 = getelementptr inbounds %struct._Package* %34, i32 0, i32 1
  %35 = load %union.UnionType** %table19, align 8
  %arrayidx20 = getelementptr inbounds %union.UnionType* %35, i64 %33
  %36 = bitcast %union.UnionType* %mtd17 to i8*
  %37 = bitcast %union.UnionType* %arrayidx20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 8, i1 false)
  %o21 = bitcast %union.UnionType* %mtd17 to i8**
  %38 = load i8** %o21, align 8
  %39 = ptrtoint i8* %38 to i64
  %and22 = and i64 %39, -4503599627370496
  %cmp23 = icmp eq i64 %and22, -4503599627370496
  %conv24 = zext i1 %cmp23 to i32
  %conv25 = sext i32 %conv24 to i64
  %o26 = bitcast %union.UnionType* %mtd17 to i8**
  %40 = load i8** %o26, align 8
  %41 = ptrtoint i8* %40 to i64
  %and27 = and i64 %41, 4222124650659840
  %shr28 = lshr i64 %and27, 48
  %mul29 = mul i64 %conv25, %shr28
  %cmp30 = icmp eq i64 %mul29, 9
  br i1 %cmp30, label %if.then32, label %for.inc

if.then32:                                        ; preds = %for.body
  %o33 = bitcast %union.UnionType* %mtd17 to i8**
  %42 = load i8** %o33, align 8
  %43 = ptrtoint i8* %42 to i64
  %xor34 = xor i64 %43, -1970324836974592
  %44 = inttoptr i64 %xor34 to %struct._CodeRef*
  store %struct._CodeRef* %44, %struct._CodeRef** %code_ref, align 8
  br label %if.end35

for.inc:                                          ; preds = %for.body
  %45 = load i64* %i, align 8
  %inc = add i64 %45, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

if.end35:                                         ; preds = %for.cond, %if.then32, %if.then
  %46 = load %struct._CodeRef** %code_ref, align 8
  %tobool = icmp ne %struct._CodeRef* %46, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end35
  %47 = phi i1 [ false, %if.end35 ], [ true, %land.rhs ]
  %lnot = xor i1 %47, true
  %lnot.ext = zext i1 %lnot to i32
  %conv36 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv36, i64 0)
  %tobool37 = icmp ne i64 %expval, 0
  br i1 %tobool37, label %cond.true, label %cond.end

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([25 x i8]* @__func__.get_class_method_by_name, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 762, i8* getelementptr inbounds ([33 x i8]* @.str37, i32 0, i32 0)) #8
  unreachable

cond.end:                                         ; preds = %land.end
  %48 = load %struct._CodeRef** %code_ref, align 8
  %code = getelementptr inbounds %struct._CodeRef* %48, i32 0, i32 1
  %49 = load i64 (%struct._Array*)** %code, align 8
  ret i64 (%struct._Array*)* %49
}

; Function Attrs: nounwind ssp uwtable
define void @add_base_name(i8* %pkg_name, i8* %base_name) #0 {
entry:
  %array.addr.i = alloca %struct._Array*, align 8
  %elem.addr.i = alloca %union.UnionType*, align 8
  %size.i = alloca i64, align 8
  %pkg_name.addr = alloca i8*, align 8
  %base_name.addr = alloca i8*, align 8
  %pkg = alloca %struct._Package*, align 8
  %base = alloca %struct._Package*, align 8
  %boxed_base = alloca %union.UnionType*, align 8
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  store i8* %base_name, i8** %base_name.addr, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call = call %struct._Package* @get_pkg(i8* %0)
  store %struct._Package* %call, %struct._Package** %pkg, align 8
  %1 = load i8** %base_name.addr, align 8
  %call1 = call %struct._Package* @get_pkg(i8* %1)
  store %struct._Package* %call1, %struct._Package** %base, align 8
  %2 = load i32* @count, align 4
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, i32* @count, align 4
  %3 = load i32* @count, align 4
  %idxprom.i = sext i32 %3 to i64
  %4 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %4, i64 %idxprom.i
  %5 = load %struct._Object** %arrayidx.i, align 8
  %6 = bitcast %struct._Object* %5 to %union.UnionType*
  store %union.UnionType* %6, %union.UnionType** %boxed_base, align 8
  %7 = load %struct._Package** %base, align 8
  %8 = ptrtoint %struct._Package* %7 to i64
  %or = or i64 %8, -4503599627370496
  %or3 = or i64 %or, 3096224743817216
  %9 = inttoptr i64 %or3 to i8*
  %10 = load %union.UnionType** %boxed_base, align 8
  %o = bitcast %union.UnionType* %10 to i8**
  store i8* %9, i8** %o, align 8
  %11 = load %struct._Package** %pkg, align 8
  %isa = getelementptr inbounds %struct._Package* %11, i32 0, i32 4
  %12 = load %struct._Array** %isa, align 8
  %13 = load %union.UnionType** %boxed_base, align 8
  %14 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %14) #3
  %15 = bitcast %union.UnionType** %elem.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %15) #3
  %16 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %16) #3
  store %struct._Array* %12, %struct._Array** %array.addr.i, align 8
  store %union.UnionType* %13, %union.UnionType** %elem.addr.i, align 8
  %17 = load %struct._Array** %array.addr.i, align 8
  %size1.i = getelementptr inbounds %struct._Array* %17, i32 0, i32 2
  %18 = load i64* %size1.i, align 8
  store i64 %18, i64* %size.i, align 8
  %19 = load %struct._Array** %array.addr.i, align 8
  %20 = load i64* %size.i, align 8
  %add.i = add i64 %20, 1
  call void @Array_grow(%struct._Array* %19, i64 %add.i) #3
  %21 = load %union.UnionType** %elem.addr.i, align 8
  %22 = load i64* %size.i, align 8
  %23 = load %struct._Array** %array.addr.i, align 8
  %list.i = getelementptr inbounds %struct._Array* %23, i32 0, i32 1
  %24 = load %union.UnionType*** %list.i, align 8
  %arrayidx.i1 = getelementptr inbounds %union.UnionType** %24, i64 %22
  store %union.UnionType* %21, %union.UnionType** %arrayidx.i1, align 8
  %25 = bitcast %struct._Array** %array.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %25) #3
  %26 = bitcast %union.UnionType** %elem.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %26) #3
  %27 = bitcast i64* %size.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %27) #3
  ret void
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
  call void @__assert_rtn(i8* getelementptr inbounds ([33 x i8]* @__func__.dynamic_blessed_object_cast_code, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 893, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
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
  %coerce.dive1 = bitcast %union.UnionType* %a to double*
  %0 = bitcast double* %coerce.dive1 to i64*
  store i64 %a.coerce, i64* %0, align 1
  store i32 0, i32* %ret, align 4
  %o = bitcast %union.UnionType* %a to i8**
  %1 = load i8** %o, align 8
  %2 = ptrtoint i8* %1 to i64
  %and = and i64 %2, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %o2 = bitcast %union.UnionType* %a to i8**
  %3 = load i8** %o2, align 8
  %4 = ptrtoint i8* %3 to i64
  %and3 = and i64 %4, 4222124650659840
  %shr = lshr i64 %and3, 48
  %mul = mul i64 %conv1, %shr
  switch i64 %mul, label %sw.epilog [
    i64 1, label %sw.bb
    i64 0, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %o4 = bitcast %union.UnionType* %a to i8**
  %5 = load i8** %o4, align 8
  %6 = ptrtoint i8* %5 to i64
  %conv5 = trunc i64 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %ret, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %d = bitcast %union.UnionType* %a to double*
  %7 = load double* %d, align 8
  %cmp9 = fcmp une double %7, 0.000000e+00
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb8, %sw.bb
  %8 = load i32* %ret, align 4
  ret i32 %8
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
  %call = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay2, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i32 %1)
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
  %call = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay2, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), double %1)
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
  %call.i = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay2.i, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i32 %40) #3
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
  %call.i15 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay2.i14, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), double %67) #3
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

; Function Attrs: nounwind ssp uwtable
define i64 @new_FFI(i8* %name, i8* %ptr) #0 {
entry:
  %retval.i = alloca %union.UnionType, align 8
  %hash.i = alloca %union.UnionType, align 8
  %ret.i = alloca %union.UnionType, align 8
  %o.i = alloca %struct._HashRef*, align 8
  %retval = alloca %union.UnionType, align 8
  %name.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %ret = alloca %union.UnionType, align 8
  %ffi = alloca %struct._FFIObject*, align 8
  %array = alloca %struct._Array, align 8
  %hash_ref = alloca %union.UnionType, align 8
  %agg.tmp = alloca %union.UnionType, align 8
  %pkg = alloca %struct._Package*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i32* @count, align 4
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, i32* @count, align 4
  %1 = load i32* @count, align 4
  %idxprom.i = sext i32 %1 to i64
  %2 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i = getelementptr inbounds %struct._Object** %2, i64 %idxprom.i
  %3 = load %struct._Object** %arrayidx.i, align 8
  %4 = bitcast %struct._Object* %3 to %struct._FFIObject*
  store %struct._FFIObject* %4, %struct._FFIObject** %ffi, align 8
  %size = getelementptr inbounds %struct._Array* %array, i32 0, i32 2
  store i64 0, i64* %size, align 8
  %list = getelementptr inbounds %struct._Array* %array, i32 0, i32 1
  store %union.UnionType** null, %union.UnionType*** %list, align 8
  %call1 = call i64 @new_Hash(%struct._Array* %array)
  %coerce.dive1 = bitcast %union.UnionType* %agg.tmp to double*
  %5 = bitcast double* %coerce.dive1 to i64*
  store i64 %call1, i64* %5, align 1
  %coerce.dive22 = bitcast %union.UnionType* %agg.tmp to double*
  %6 = bitcast double* %coerce.dive22 to i64*
  %7 = load i64* %6, align 1
  %8 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8) #3
  %9 = bitcast %union.UnionType* %hash.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %9) #3
  %10 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %10) #3
  %11 = bitcast %struct._HashRef** %o.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %11) #3
  %coerce.dive1.i = bitcast %union.UnionType* %hash.i to double*
  %12 = bitcast double* %coerce.dive1.i to i64*
  store i64 %7, i64* %12, align 1
  %13 = load i32* @count, align 4
  %inc.i.i = add nsw i32 %13, 1
  store i32 %inc.i.i, i32* @count, align 4
  %14 = load i32* @count, align 4
  %idxprom.i.i = sext i32 %14 to i64
  %15 = load %struct._Object*** @object_pool, align 8
  %arrayidx.i.i = getelementptr inbounds %struct._Object** %15, i64 %idxprom.i.i
  %16 = load %struct._Object** %arrayidx.i.i, align 8
  %17 = bitcast %struct._Object* %16 to %struct._HashRef*
  store %struct._HashRef* %17, %struct._HashRef** %o.i, align 8
  %18 = load %struct._HashRef** %o.i, align 8
  %v.i = getelementptr inbounds %struct._HashRef* %18, i32 0, i32 1
  %19 = bitcast %union.UnionType* %v.i to i8*
  %20 = bitcast %union.UnionType* %hash.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false) #3
  %21 = load %struct._HashRef** %o.i, align 8
  %22 = ptrtoint %struct._HashRef* %21 to i64
  %or.i = or i64 %22, -4503599627370496
  %or1.i = or i64 %or.i, 1688849860263936
  %23 = inttoptr i64 %or1.i to i8*
  %o2.i = bitcast %union.UnionType* %ret.i to i8**
  store i8* %23, i8** %o2.i, align 8
  %24 = bitcast %union.UnionType* %retval.i to i8*
  %25 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false) #3
  %coerce.dive32.i = bitcast %union.UnionType* %retval.i to double*
  %26 = bitcast double* %coerce.dive32.i to i64*
  %27 = load i64* %26, align 1
  %28 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %28) #3
  %29 = bitcast %union.UnionType* %hash.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %29) #3
  %30 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %30) #3
  %31 = bitcast %struct._HashRef** %o.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %31) #3
  %coerce.dive43 = bitcast %union.UnionType* %hash_ref to double*
  %32 = bitcast double* %coerce.dive43 to i64*
  store i64 %27, i64* %32, align 1
  %33 = load i8** %name.addr, align 8
  %call5 = call %struct._Package* @get_pkg(i8* %33)
  store %struct._Package* %call5, %struct._Package** %pkg, align 8
  %34 = load %struct._FFIObject** %ffi, align 8
  %header4 = bitcast %struct._FFIObject* %34 to i32*
  store i32 12, i32* %header4, align 4
  %35 = load %struct._FFIObject** %ffi, align 8
  %members = getelementptr inbounds %struct._FFIObject* %35, i32 0, i32 1
  %36 = bitcast %union.UnionType* %members to i8*
  %37 = bitcast %union.UnionType* %hash_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 8, i1 false)
  %38 = load %struct._Package** %pkg, align 8
  %39 = load %struct._FFIObject** %ffi, align 8
  %mtds = getelementptr inbounds %struct._FFIObject* %39, i32 0, i32 2
  store %struct._Package* %38, %struct._Package** %mtds, align 8
  %40 = load i8** %name.addr, align 8
  %41 = load %struct._FFIObject** %ffi, align 8
  %pkg_name = getelementptr inbounds %struct._FFIObject* %41, i32 0, i32 3
  store i8* %40, i8** %pkg_name, align 8
  %42 = load i8** %ptr.addr, align 8
  %43 = load %struct._FFIObject** %ffi, align 8
  %ptr6 = getelementptr inbounds %struct._FFIObject* %43, i32 0, i32 4
  store i8* %42, i8** %ptr6, align 8
  %44 = load %struct._FFIObject** %ffi, align 8
  %45 = ptrtoint %struct._FFIObject* %44 to i64
  %or = or i64 %45, -4503599627370496
  %or7 = or i64 %or, 3377699720527872
  %46 = inttoptr i64 %or7 to i8*
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* %46, i8** %o, align 8
  %47 = bitcast %union.UnionType* %retval to i8*
  %48 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 8, i32 8, i1 false)
  %coerce.dive85 = bitcast %union.UnionType* %retval to double*
  %49 = bitcast double* %coerce.dive85 to i64*
  %50 = load i64* %49, align 1
  ret i64 %50
}

define i64 @main(...) {
entrypoint:
  %ivalue.i.i = alloca %union.UnionType
  %ivalue2.i.i = alloca %union.UnionType
  %union_storage.i.i = alloca %union.UnionType
  %args.i = alloca %union.UnionType*
  %ivalue.i = alloca %union.UnionType
  %ivalue2.i = alloca %union.UnionType
  %union_storage.i = alloca %union.UnionType
  %array.i = alloca %ArrayObject
  %union_storage8.i = alloca %union.UnionType
  call void @global_init()
  call void bitcast (void (i8*, i8*, i64 (%struct._Array*)*)* @store_method_by_pkg_name to void (i8*, i8*, i64 (%ArrayObject*)*)*)(i8* getelementptr inbounds ([5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 (%ArrayObject*)* @f)
  %args = alloca %union.UnionType*
  %ivalue = alloca %union.UnionType
  %union_to_int_ptr = bitcast %union.UnionType* %ivalue to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr
  %double_ptr = alloca %union.UnionType
  %cast_to_double_ptr = bitcast %union.UnionType* %double_ptr to double*
  store double 2.300000e+00, double* %cast_to_double_ptr
  %args1 = alloca %union.UnionType*, i64 2
  %load_arg72 = bitcast %union.UnionType** %args1 to %union.UnionType**
  store %union.UnionType* %ivalue, %union.UnionType** %load_arg72
  %load_arg2 = getelementptr %union.UnionType** %args1, i64 1
  store %union.UnionType* %double_ptr, %union.UnionType** %load_arg2
  %array = alloca %ArrayObject
  %array_type73 = bitcast %ArrayObject* %array to i32*
  %array_list = getelementptr inbounds %ArrayObject* %array, i32 0, i32 1
  %array_size = getelementptr inbounds %ArrayObject* %array, i32 0, i32 2
  store i32 3, i32* %array_type73
  store %union.UnionType** %args1, %union.UnionType*** %array_list
  store i64 2, i64* %array_size
  %function_rvalue = tail call fastcc i64 @f(%ArrayObject* %array)
  %union_storage = alloca %union.UnionType
  %cast_to_double_ptr374 = bitcast %union.UnionType* %union_storage to double*
  %cast_to_int_ptr = bitcast double* %cast_to_double_ptr374 to i64*
  store i64 %function_rvalue, i64* %cast_to_int_ptr
  %get_idx75 = bitcast %union.UnionType** %args to %union.UnionType**
  store %union.UnionType* %union_storage, %union.UnionType** %get_idx75
  %array4 = alloca %ArrayObject
  %array_type576 = bitcast %ArrayObject* %array4 to i32*
  %array_list6 = getelementptr inbounds %ArrayObject* %array4, i32 0, i32 1
  %array_size7 = getelementptr inbounds %ArrayObject* %array4, i32 0, i32 2
  store i32 3, i32* %array_type576
  store %union.UnionType** %args, %union.UnionType*** %array_list6
  store i64 1, i64* %array_size7
  %result = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array4)
  %union_storage8 = alloca %union.UnionType
  %cast_to_double_ptr977 = bitcast %union.UnionType* %union_storage8 to double*
  %cast_to_int_ptr10 = bitcast double* %cast_to_double_ptr977 to i64*
  store i64 %result, i64* %cast_to_int_ptr10
  call void bitcast (void (i8*, i8*, i64 (%struct._Array*)*)* @store_method_by_pkg_name to void (i8*, i8*, i64 (%ArrayObject*)*)*)(i8* getelementptr inbounds ([5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 (%ArrayObject*)* @h)
  call void bitcast (void (i8*, i8*, i64 (%struct._Array*)*)* @store_method_by_pkg_name to void (i8*, i8*, i64 (%ArrayObject*)*)*)(i8* getelementptr inbounds ([5 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 (%ArrayObject*)* @g)
  %args11 = alloca %union.UnionType*
  %args12 = alloca %union.UnionType*
  %ivalue13 = alloca %union.UnionType
  %union_to_int_ptr14 = bitcast %union.UnionType* %ivalue13 to i64*
  store i64 -4222124650659837, i64* %union_to_int_ptr14
  %get_idx1578 = bitcast %union.UnionType** %args12 to %union.UnionType**
  store %union.UnionType* %ivalue13, %union.UnionType** %get_idx1578
  %array16 = alloca %ArrayObject
  %array_type1779 = bitcast %ArrayObject* %array16 to i32*
  %array_list18 = getelementptr inbounds %ArrayObject* %array16, i32 0, i32 1
  %array_size19 = getelementptr inbounds %ArrayObject* %array16, i32 0, i32 2
  store i32 3, i32* %array_type1779
  store %union.UnionType** %args12, %union.UnionType*** %array_list18
  store i64 1, i64* %array_size19
  %0 = bitcast %union.UnionType** %args.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %0)
  %1 = bitcast %union.UnionType* %ivalue.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %1)
  %2 = bitcast %union.UnionType* %ivalue2.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %2)
  %3 = bitcast %union.UnionType* %union_storage.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %3)
  %4 = bitcast %ArrayObject* %array.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %4)
  %5 = bitcast %union.UnionType* %union_storage8.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %5)
  %union_to_int_ptr.i = bitcast %union.UnionType* %ivalue.i to i64*
  store i64 -4222124650659840, i64* %union_to_int_ptr.i
  %union_to_int_ptr1.i = bitcast %union.UnionType* %ivalue.i to i64*
  %dereference.i = load i64* %union_to_int_ptr1.i
  %trunc_int_cast.i = trunc i64 %dereference.i to i32
  %i32_to_i64_cast.i = sext i32 %trunc_int_cast.i to i64
  %fetch_list.i = getelementptr inbounds %ArrayObject* %array16, i32 0, i32 1
  %load_list.i = load %union.UnionType*** %fetch_list.i
  %get_elem.i = getelementptr %union.UnionType** %load_list.i, i64 %i32_to_i64_cast.i
  %load_arg.i = load %union.UnionType** %get_elem.i
  %union_to_int_ptr3.i = bitcast %union.UnionType* %ivalue2.i to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr3.i
  %union_to_int_ptr4.i = bitcast %union.UnionType* %ivalue2.i to i64*
  %dereference5.i = load i64* %union_to_int_ptr4.i
  %trunc_int_cast6.i = trunc i64 %dereference5.i to i32
  %i32_to_i64_cast7.i = sext i32 %trunc_int_cast6.i to i64
  %object.i = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_addInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %load_arg.i, i64 %i32_to_i64_cast7.i)
  %cast_to_double_ptr13.i = bitcast %union.UnionType* %union_storage.i to double*
  %cast_to_int_ptr.i = bitcast double* %cast_to_double_ptr13.i to i64*
  store i64 %object.i, i64* %cast_to_int_ptr.i
  %get_idx14.i = bitcast %union.UnionType** %args.i to %union.UnionType**
  store %union.UnionType* %union_storage.i, %union.UnionType** %get_idx14.i
  %array_type15.i = bitcast %ArrayObject* %array.i to i32*
  %array_list.i = getelementptr inbounds %ArrayObject* %array.i, i32 0, i32 1
  %array_size.i = getelementptr inbounds %ArrayObject* %array.i, i32 0, i32 2
  store i32 3, i32* %array_type15.i
  store %union.UnionType** %args.i, %union.UnionType*** %array_list.i
  store i64 1, i64* %array_size.i
  %6 = bitcast %union.UnionType* %ivalue.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %6)
  %7 = bitcast %union.UnionType* %ivalue2.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %7)
  %8 = bitcast %union.UnionType* %union_storage.i.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %8)
  %union_to_int_ptr.i.i = bitcast %union.UnionType* %ivalue.i.i to i64*
  store i64 -4222124650659840, i64* %union_to_int_ptr.i.i
  %union_to_int_ptr1.i.i = bitcast %union.UnionType* %ivalue.i.i to i64*
  %dereference.i.i = load i64* %union_to_int_ptr1.i.i
  %trunc_int_cast.i.i = trunc i64 %dereference.i.i to i32
  %i32_to_i64_cast.i.i = sext i32 %trunc_int_cast.i.i to i64
  %fetch_list.i.i = getelementptr inbounds %ArrayObject* %array.i, i32 0, i32 1
  %load_list.i.i = load %union.UnionType*** %fetch_list.i.i
  %get_elem.i.i = getelementptr %union.UnionType** %load_list.i.i, i64 %i32_to_i64_cast.i.i
  %load_arg.i.i = load %union.UnionType** %get_elem.i.i
  %union_to_int_ptr3.i.i = bitcast %union.UnionType* %ivalue2.i.i to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr3.i.i
  %union_to_int_ptr4.i.i = bitcast %union.UnionType* %ivalue2.i.i to i64*
  %dereference5.i.i = load i64* %union_to_int_ptr4.i.i
  %trunc_int_cast6.i.i = trunc i64 %dereference5.i.i to i32
  %i32_to_i64_cast7.i.i = sext i32 %trunc_int_cast6.i.i to i64
  %object.i.i = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_addInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %load_arg.i.i, i64 %i32_to_i64_cast7.i.i)
  %cast_to_double_ptr10.i.i = bitcast %union.UnionType* %union_storage.i.i to double*
  %cast_to_int_ptr.i.i = bitcast double* %cast_to_double_ptr10.i.i to i64*
  store i64 %object.i.i, i64* %cast_to_int_ptr.i.i
  %cast_to_double_ptr811.i.i = bitcast %union.UnionType* %union_storage.i.i to double*
  %cast_to_int_ptr9.i.i = bitcast double* %cast_to_double_ptr811.i.i to i64*
  %cast_to_int.i.i = load i64* %cast_to_int_ptr9.i.i
  %9 = bitcast %union.UnionType* %ivalue.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %9)
  %10 = bitcast %union.UnionType* %ivalue2.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %10)
  %11 = bitcast %union.UnionType* %union_storage.i.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %11)
  %cast_to_double_ptr916.i = bitcast %union.UnionType* %union_storage8.i to double*
  %cast_to_int_ptr10.i = bitcast double* %cast_to_double_ptr916.i to i64*
  store i64 %cast_to_int.i.i, i64* %cast_to_int_ptr10.i
  %cast_to_double_ptr1117.i = bitcast %union.UnionType* %union_storage8.i to double*
  %cast_to_int_ptr12.i = bitcast double* %cast_to_double_ptr1117.i to i64*
  %cast_to_int.i = load i64* %cast_to_int_ptr12.i
  %12 = bitcast %union.UnionType** %args.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %12)
  %13 = bitcast %union.UnionType* %ivalue.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %13)
  %14 = bitcast %union.UnionType* %ivalue2.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %14)
  %15 = bitcast %union.UnionType* %union_storage.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %15)
  %16 = bitcast %ArrayObject* %array.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %16)
  %17 = bitcast %union.UnionType* %union_storage8.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %17)
  %union_storage21 = alloca %union.UnionType
  %cast_to_double_ptr2280 = bitcast %union.UnionType* %union_storage21 to double*
  %cast_to_int_ptr23 = bitcast double* %cast_to_double_ptr2280 to i64*
  store i64 %cast_to_int.i, i64* %cast_to_int_ptr23
  %get_idx2481 = bitcast %union.UnionType** %args11 to %union.UnionType**
  store %union.UnionType* %union_storage21, %union.UnionType** %get_idx2481
  %array25 = alloca %ArrayObject
  %array_type2682 = bitcast %ArrayObject* %array25 to i32*
  %array_list27 = getelementptr inbounds %ArrayObject* %array25, i32 0, i32 1
  %array_size28 = getelementptr inbounds %ArrayObject* %array25, i32 0, i32 2
  store i32 3, i32* %array_type2682
  store %union.UnionType** %args11, %union.UnionType*** %array_list27
  store i64 1, i64* %array_size28
  %result29 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array25)
  %union_storage30 = alloca %union.UnionType
  %cast_to_double_ptr3183 = bitcast %union.UnionType* %union_storage30 to double*
  %cast_to_int_ptr32 = bitcast double* %cast_to_double_ptr3183 to i64*
  store i64 %result29, i64* %cast_to_int_ptr32
  call void bitcast (void (i8*, i8*, i64 (%struct._Array*)*)* @store_method_by_pkg_name to void (i8*, i8*, i64 (%ArrayObject*)*)*)(i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @7, i32 0, i32 0), i64 (%ArrayObject*)* @function_argument_array_sample)
  %ivalue33 = alloca %union.UnionType
  %union_to_int_ptr34 = bitcast %union.UnionType* %ivalue33 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr34
  %ivalue35 = alloca %union.UnionType
  %union_to_int_ptr36 = bitcast %union.UnionType* %ivalue35 to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr36
  %ivalue37 = alloca %union.UnionType
  %union_to_int_ptr38 = bitcast %union.UnionType* %ivalue37 to i64*
  store i64 -4222124650659837, i64* %union_to_int_ptr38
  %args39 = alloca %union.UnionType*, i64 3
  %load_arg4084 = bitcast %union.UnionType** %args39 to %union.UnionType**
  store %union.UnionType* %ivalue33, %union.UnionType** %load_arg4084
  %load_arg41 = getelementptr %union.UnionType** %args39, i64 1
  store %union.UnionType* %ivalue35, %union.UnionType** %load_arg41
  %load_arg42 = getelementptr %union.UnionType** %args39, i64 2
  store %union.UnionType* %ivalue37, %union.UnionType** %load_arg42
  %array43 = alloca %ArrayObject
  %array_type4485 = bitcast %ArrayObject* %array43 to i32*
  %array_list45 = getelementptr inbounds %ArrayObject* %array43, i32 0, i32 1
  %array_size46 = getelementptr inbounds %ArrayObject* %array43, i32 0, i32 2
  store i32 3, i32* %array_type4485
  store %union.UnionType** %args39, %union.UnionType*** %array_list45
  store i64 3, i64* %array_size46
  %function_rvalue47 = tail call fastcc i64 @function_argument_array_sample(%ArrayObject* %array43)
  %union_storage48 = alloca %union.UnionType
  %cast_to_double_ptr4986 = bitcast %union.UnionType* %union_storage48 to double*
  %cast_to_int_ptr50 = bitcast double* %cast_to_double_ptr4986 to i64*
  store i64 %function_rvalue47, i64* %cast_to_int_ptr50
  call void bitcast (void (i8*, i8*, i64 (%struct._Array*)*)* @store_method_by_pkg_name to void (i8*, i8*, i64 (%ArrayObject*)*)*)(i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @9, i32 0, i32 0), i64 (%ArrayObject*)* @function_argument_shift_sample)
  %ivalue51 = alloca %union.UnionType
  %union_to_int_ptr52 = bitcast %union.UnionType* %ivalue51 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr52
  %ivalue53 = alloca %union.UnionType
  %union_to_int_ptr54 = bitcast %union.UnionType* %ivalue53 to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr54
  %ivalue55 = alloca %union.UnionType
  %union_to_int_ptr56 = bitcast %union.UnionType* %ivalue55 to i64*
  store i64 -4222124650659837, i64* %union_to_int_ptr56
  %ivalue57 = alloca %union.UnionType
  %union_to_int_ptr58 = bitcast %union.UnionType* %ivalue57 to i64*
  store i64 -4222124650659836, i64* %union_to_int_ptr58
  %args59 = alloca %union.UnionType*, i64 4
  %load_arg6087 = bitcast %union.UnionType** %args59 to %union.UnionType**
  store %union.UnionType* %ivalue51, %union.UnionType** %load_arg6087
  %load_arg61 = getelementptr %union.UnionType** %args59, i64 1
  store %union.UnionType* %ivalue53, %union.UnionType** %load_arg61
  %load_arg62 = getelementptr %union.UnionType** %args59, i64 2
  store %union.UnionType* %ivalue55, %union.UnionType** %load_arg62
  %load_arg63 = getelementptr %union.UnionType** %args59, i64 3
  store %union.UnionType* %ivalue57, %union.UnionType** %load_arg63
  %array64 = alloca %ArrayObject
  %array_type6588 = bitcast %ArrayObject* %array64 to i32*
  %array_list66 = getelementptr inbounds %ArrayObject* %array64, i32 0, i32 1
  %array_size67 = getelementptr inbounds %ArrayObject* %array64, i32 0, i32 2
  store i32 3, i32* %array_type6588
  store %union.UnionType** %args59, %union.UnionType*** %array_list66
  store i64 4, i64* %array_size67
  %function_rvalue68 = tail call fastcc i64 @function_argument_shift_sample(%ArrayObject* %array64)
  %union_storage69 = alloca %union.UnionType
  %cast_to_double_ptr7089 = bitcast %union.UnionType* %union_storage69 to double*
  %cast_to_int_ptr71 = bitcast double* %cast_to_double_ptr7089 to i64*
  store i64 %function_rvalue68, i64* %cast_to_int_ptr71
  ret i64 0
}

; Function Attrs: ssp
define fastcc i64 @f(%ArrayObject*) #7 {
entrypoint:
  %retval.i1344 = alloca %union.UnionType, align 8
  %a.addr.i1345 = alloca double, align 8
  %b.addr.i1346 = alloca %union.UnionType*, align 8
  %ret.i1347 = alloca %union.UnionType, align 8
  %retval.i1323 = alloca %union.UnionType, align 8
  %a.addr.i1324 = alloca double, align 8
  %b.addr.i1325 = alloca %union.UnionType*, align 8
  %ret.i1326 = alloca %union.UnionType, align 8
  %retval.i1300 = alloca %union.UnionType, align 8
  %a.addr.i1301 = alloca double, align 8
  %b.addr.i1302 = alloca %union.UnionType*, align 8
  %ret.i1303 = alloca %union.UnionType, align 8
  %retval.i1280 = alloca %union.UnionType, align 8
  %a.addr.i1281 = alloca double, align 8
  %b.addr.i1282 = alloca %union.UnionType*, align 8
  %ret.i1283 = alloca %union.UnionType, align 8
  %retval.i1258 = alloca %union.UnionType, align 8
  %a.addr.i1259 = alloca %union.UnionType*, align 8
  %b.addr.i1260 = alloca double, align 8
  %ret.i1261 = alloca %union.UnionType, align 8
  %retval.i1239 = alloca %union.UnionType, align 8
  %a.addr.i1240 = alloca %union.UnionType*, align 8
  %b.addr.i1241 = alloca double, align 8
  %ret.i1242 = alloca %union.UnionType, align 8
  %retval.i1217 = alloca %union.UnionType, align 8
  %a.addr.i1218 = alloca %union.UnionType*, align 8
  %b.addr.i1219 = alloca double, align 8
  %ret.i1220 = alloca %union.UnionType, align 8
  %retval.i = alloca %union.UnionType, align 8
  %a.addr.i = alloca %union.UnionType*, align 8
  %b.addr.i = alloca double, align 8
  %ret.i = alloca %union.UnionType, align 8
  %double_ptr = alloca %union.UnionType
  %cast_to_double_ptr = bitcast %union.UnionType* %double_ptr to double*
  store double 4.500000e+00, double* %cast_to_double_ptr
  %"$d" = alloca %Object
  %object_body = getelementptr inbounds %Object* %"$d", i32 0, i32 1
  %load_value = load %union.UnionType* %double_ptr
  store %union.UnionType %load_value, %union.UnionType* %object_body
  %base_ptr = alloca %union.UnionType
  %union_ptr_to_int = ptrtoint %Object* %"$d" to i64
  %or = or i64 %union_ptr_to_int, -4503599627370496
  %or1 = or i64 %or, 1970324836974592
  %bitcast = bitcast %union.UnionType* %base_ptr to i64*
  store i64 %or1, i64* %bitcast
  %ivalue = alloca %union.UnionType
  %union_to_int_ptr = bitcast %union.UnionType* %ivalue to i64*
  store i64 -4222124650659840, i64* %union_to_int_ptr
  %union_to_int_ptr2 = bitcast %union.UnionType* %ivalue to i64*
  %dereference = load i64* %union_to_int_ptr2
  %trunc_int_cast = trunc i64 %dereference to i32
  %i32_to_i64_cast = sext i32 %trunc_int_cast to i64
  %fetch_list = getelementptr inbounds %ArrayObject* %0, i32 0, i32 1
  %load_list = load %union.UnionType*** %fetch_list
  %get_elem = getelementptr %union.UnionType** %load_list, i64 %i32_to_i64_cast
  %load_arg = load %union.UnionType** %get_elem
  %"$a" = alloca %Object
  %object_body3 = getelementptr inbounds %Object* %"$a", i32 0, i32 1
  %load_value4 = load %union.UnionType* %load_arg
  store %union.UnionType %load_value4, %union.UnionType* %object_body3
  %base_ptr5 = alloca %union.UnionType
  %union_ptr_to_int6 = ptrtoint %Object* %"$a" to i64
  %or7 = or i64 %union_ptr_to_int6, -4503599627370496
  %or8 = or i64 %or7, 1970324836974592
  %bitcast9 = bitcast %union.UnionType* %base_ptr5 to i64*
  store i64 %or8, i64* %bitcast9
  %ivalue10 = alloca %union.UnionType
  %union_to_int_ptr11 = bitcast %union.UnionType* %ivalue10 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr11
  %union_to_int_ptr12 = bitcast %union.UnionType* %ivalue10 to i64*
  %dereference13 = load i64* %union_to_int_ptr12
  %trunc_int_cast14 = trunc i64 %dereference13 to i32
  %i32_to_i64_cast15 = sext i32 %trunc_int_cast14 to i64
  %fetch_list16 = getelementptr inbounds %ArrayObject* %0, i32 0, i32 1
  %load_list17 = load %union.UnionType*** %fetch_list16
  %get_elem18 = getelementptr %union.UnionType** %load_list17, i64 %i32_to_i64_cast15
  %load_arg19 = load %union.UnionType** %get_elem18
  %"$b" = alloca %Object
  %object_body20 = getelementptr inbounds %Object* %"$b", i32 0, i32 1
  %load_value21 = load %union.UnionType* %load_arg19
  store %union.UnionType %load_value21, %union.UnionType* %object_body20
  %base_ptr22 = alloca %union.UnionType
  %union_ptr_to_int23 = ptrtoint %Object* %"$b" to i64
  %or24 = or i64 %union_ptr_to_int23, -4503599627370496
  %or25 = or i64 %or24, 1970324836974592
  %bitcast26 = bitcast %union.UnionType* %base_ptr22 to i64*
  store i64 %or25, i64* %bitcast26
  %bitcast27 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue = load i64* %bitcast27
  %xor = xor i64 %load_ivalue, -2533274790395904
  %int_to_ptr = inttoptr i64 %xor to %Object*
  %object_body28 = getelementptr inbounds %Object* %int_to_ptr, i32 0, i32 1
  %bitcast29 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue30 = load i64* %bitcast29
  %xor31 = xor i64 %load_ivalue30, -2533274790395904
  %int_to_ptr32 = inttoptr i64 %xor31 to %Object*
  %object_body33 = getelementptr inbounds %Object* %int_to_ptr32, i32 0, i32 1
  %object = call i64 @Object_addObject(%union.UnionType* %object_body28, %union.UnionType* %object_body33)
  %union_storage = alloca %union.UnionType
  %cast_to_double_ptr341046 = bitcast %union.UnionType* %union_storage to double*
  %cast_to_int_ptr = bitcast double* %cast_to_double_ptr341046 to i64*
  store i64 %object, i64* %cast_to_int_ptr
  %"$c" = alloca %Object
  %object_body35 = getelementptr inbounds %Object* %"$c", i32 0, i32 1
  %load_value36 = load %union.UnionType* %union_storage
  store %union.UnionType %load_value36, %union.UnionType* %object_body35
  %base_ptr37 = alloca %union.UnionType
  %union_ptr_to_int38 = ptrtoint %Object* %"$c" to i64
  %or39 = or i64 %union_ptr_to_int38, -4503599627370496
  %or40 = or i64 %or39, 1970324836974592
  %bitcast41 = bitcast %union.UnionType* %base_ptr37 to i64*
  store i64 %or40, i64* %bitcast41
  %args = alloca %union.UnionType*
  %bitcast42 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue43 = load i64* %bitcast42
  %xor44 = xor i64 %load_ivalue43, -2533274790395904
  %int_to_ptr45 = inttoptr i64 %xor44 to %Object*
  %object_body46 = getelementptr inbounds %Object* %int_to_ptr45, i32 0, i32 1
  %get_idx1047 = bitcast %union.UnionType** %args to %union.UnionType**
  store %union.UnionType* %object_body46, %union.UnionType** %get_idx1047
  %array = alloca %ArrayObject
  %array_type1048 = bitcast %ArrayObject* %array to i32*
  %array_list = getelementptr inbounds %ArrayObject* %array, i32 0, i32 1
  %array_size = getelementptr inbounds %ArrayObject* %array, i32 0, i32 2
  store i32 3, i32* %array_type1048
  store %union.UnionType** %args, %union.UnionType*** %array_list
  store i64 1, i64* %array_size
  %result = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array)
  %union_storage47 = alloca %union.UnionType
  %cast_to_double_ptr481049 = bitcast %union.UnionType* %union_storage47 to double*
  %cast_to_int_ptr49 = bitcast double* %cast_to_double_ptr481049 to i64*
  store i64 %result, i64* %cast_to_int_ptr49
  %args50 = alloca %union.UnionType*
  %bitcast51 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue52 = load i64* %bitcast51
  %xor53 = xor i64 %load_ivalue52, -2533274790395904
  %int_to_ptr54 = inttoptr i64 %xor53 to %Object*
  %object_body55 = getelementptr inbounds %Object* %int_to_ptr54, i32 0, i32 1
  %get_idx561050 = bitcast %union.UnionType** %args50 to %union.UnionType**
  store %union.UnionType* %object_body55, %union.UnionType** %get_idx561050
  %array57 = alloca %ArrayObject
  %array_type581051 = bitcast %ArrayObject* %array57 to i32*
  %array_list59 = getelementptr inbounds %ArrayObject* %array57, i32 0, i32 1
  %array_size60 = getelementptr inbounds %ArrayObject* %array57, i32 0, i32 2
  store i32 3, i32* %array_type581051
  store %union.UnionType** %args50, %union.UnionType*** %array_list59
  store i64 1, i64* %array_size60
  %result61 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array57)
  %union_storage62 = alloca %union.UnionType
  %cast_to_double_ptr631052 = bitcast %union.UnionType* %union_storage62 to double*
  %cast_to_int_ptr64 = bitcast double* %cast_to_double_ptr631052 to i64*
  store i64 %result61, i64* %cast_to_int_ptr64
  %args65 = alloca %union.UnionType*
  %bitcast66 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue67 = load i64* %bitcast66
  %xor68 = xor i64 %load_ivalue67, -2533274790395904
  %int_to_ptr69 = inttoptr i64 %xor68 to %Object*
  %object_body70 = getelementptr inbounds %Object* %int_to_ptr69, i32 0, i32 1
  %bitcast71 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue72 = load i64* %bitcast71
  %xor73 = xor i64 %load_ivalue72, -2533274790395904
  %int_to_ptr74 = inttoptr i64 %xor73 to %Object*
  %object_body75 = getelementptr inbounds %Object* %int_to_ptr74, i32 0, i32 1
  %object76 = call i64 @Object_addObject(%union.UnionType* %object_body70, %union.UnionType* %object_body75)
  %union_storage77 = alloca %union.UnionType
  %cast_to_double_ptr781053 = bitcast %union.UnionType* %union_storage77 to double*
  %cast_to_int_ptr79 = bitcast double* %cast_to_double_ptr781053 to i64*
  store i64 %object76, i64* %cast_to_int_ptr79
  %get_idx801054 = bitcast %union.UnionType** %args65 to %union.UnionType**
  store %union.UnionType* %union_storage77, %union.UnionType** %get_idx801054
  %array81 = alloca %ArrayObject
  %array_type821055 = bitcast %ArrayObject* %array81 to i32*
  %array_list83 = getelementptr inbounds %ArrayObject* %array81, i32 0, i32 1
  %array_size84 = getelementptr inbounds %ArrayObject* %array81, i32 0, i32 2
  store i32 3, i32* %array_type821055
  store %union.UnionType** %args65, %union.UnionType*** %array_list83
  store i64 1, i64* %array_size84
  %result85 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array81)
  %union_storage86 = alloca %union.UnionType
  %cast_to_double_ptr871056 = bitcast %union.UnionType* %union_storage86 to double*
  %cast_to_int_ptr88 = bitcast double* %cast_to_double_ptr871056 to i64*
  store i64 %result85, i64* %cast_to_int_ptr88
  %args89 = alloca %union.UnionType*
  %bitcast90 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue91 = load i64* %bitcast90
  %xor92 = xor i64 %load_ivalue91, -2533274790395904
  %int_to_ptr93 = inttoptr i64 %xor92 to %Object*
  %object_body94 = getelementptr inbounds %Object* %int_to_ptr93, i32 0, i32 1
  %bitcast95 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue96 = load i64* %bitcast95
  %xor97 = xor i64 %load_ivalue96, -2533274790395904
  %int_to_ptr98 = inttoptr i64 %xor97 to %Object*
  %object_body99 = getelementptr inbounds %Object* %int_to_ptr98, i32 0, i32 1
  %object100 = call i64 @Object_subObject(%union.UnionType* %object_body94, %union.UnionType* %object_body99)
  %union_storage101 = alloca %union.UnionType
  %cast_to_double_ptr1021057 = bitcast %union.UnionType* %union_storage101 to double*
  %cast_to_int_ptr103 = bitcast double* %cast_to_double_ptr1021057 to i64*
  store i64 %object100, i64* %cast_to_int_ptr103
  %get_idx1041058 = bitcast %union.UnionType** %args89 to %union.UnionType**
  store %union.UnionType* %union_storage101, %union.UnionType** %get_idx1041058
  %array105 = alloca %ArrayObject
  %array_type1061059 = bitcast %ArrayObject* %array105 to i32*
  %array_list107 = getelementptr inbounds %ArrayObject* %array105, i32 0, i32 1
  %array_size108 = getelementptr inbounds %ArrayObject* %array105, i32 0, i32 2
  store i32 3, i32* %array_type1061059
  store %union.UnionType** %args89, %union.UnionType*** %array_list107
  store i64 1, i64* %array_size108
  %result109 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array105)
  %union_storage110 = alloca %union.UnionType
  %cast_to_double_ptr1111060 = bitcast %union.UnionType* %union_storage110 to double*
  %cast_to_int_ptr112 = bitcast double* %cast_to_double_ptr1111060 to i64*
  store i64 %result109, i64* %cast_to_int_ptr112
  %args113 = alloca %union.UnionType*
  %bitcast114 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue115 = load i64* %bitcast114
  %xor116 = xor i64 %load_ivalue115, -2533274790395904
  %int_to_ptr117 = inttoptr i64 %xor116 to %Object*
  %object_body118 = getelementptr inbounds %Object* %int_to_ptr117, i32 0, i32 1
  %bitcast119 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue120 = load i64* %bitcast119
  %xor121 = xor i64 %load_ivalue120, -2533274790395904
  %int_to_ptr122 = inttoptr i64 %xor121 to %Object*
  %object_body123 = getelementptr inbounds %Object* %int_to_ptr122, i32 0, i32 1
  %object124 = call i64 @Object_mulObject(%union.UnionType* %object_body118, %union.UnionType* %object_body123)
  %union_storage125 = alloca %union.UnionType
  %cast_to_double_ptr1261061 = bitcast %union.UnionType* %union_storage125 to double*
  %cast_to_int_ptr127 = bitcast double* %cast_to_double_ptr1261061 to i64*
  store i64 %object124, i64* %cast_to_int_ptr127
  %get_idx1281062 = bitcast %union.UnionType** %args113 to %union.UnionType**
  store %union.UnionType* %union_storage125, %union.UnionType** %get_idx1281062
  %array129 = alloca %ArrayObject
  %array_type1301063 = bitcast %ArrayObject* %array129 to i32*
  %array_list131 = getelementptr inbounds %ArrayObject* %array129, i32 0, i32 1
  %array_size132 = getelementptr inbounds %ArrayObject* %array129, i32 0, i32 2
  store i32 3, i32* %array_type1301063
  store %union.UnionType** %args113, %union.UnionType*** %array_list131
  store i64 1, i64* %array_size132
  %result133 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array129)
  %union_storage134 = alloca %union.UnionType
  %cast_to_double_ptr1351064 = bitcast %union.UnionType* %union_storage134 to double*
  %cast_to_int_ptr136 = bitcast double* %cast_to_double_ptr1351064 to i64*
  store i64 %result133, i64* %cast_to_int_ptr136
  %args137 = alloca %union.UnionType*
  %bitcast138 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue139 = load i64* %bitcast138
  %xor140 = xor i64 %load_ivalue139, -2533274790395904
  %int_to_ptr141 = inttoptr i64 %xor140 to %Object*
  %object_body142 = getelementptr inbounds %Object* %int_to_ptr141, i32 0, i32 1
  %bitcast143 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue144 = load i64* %bitcast143
  %xor145 = xor i64 %load_ivalue144, -2533274790395904
  %int_to_ptr146 = inttoptr i64 %xor145 to %Object*
  %object_body147 = getelementptr inbounds %Object* %int_to_ptr146, i32 0, i32 1
  %object148 = call i64 @Object_divObject(%union.UnionType* %object_body142, %union.UnionType* %object_body147)
  %union_storage149 = alloca %union.UnionType
  %cast_to_double_ptr1501065 = bitcast %union.UnionType* %union_storage149 to double*
  %cast_to_int_ptr151 = bitcast double* %cast_to_double_ptr1501065 to i64*
  store i64 %object148, i64* %cast_to_int_ptr151
  %get_idx1521066 = bitcast %union.UnionType** %args137 to %union.UnionType**
  store %union.UnionType* %union_storage149, %union.UnionType** %get_idx1521066
  %array153 = alloca %ArrayObject
  %array_type1541067 = bitcast %ArrayObject* %array153 to i32*
  %array_list155 = getelementptr inbounds %ArrayObject* %array153, i32 0, i32 1
  %array_size156 = getelementptr inbounds %ArrayObject* %array153, i32 0, i32 2
  store i32 3, i32* %array_type1541067
  store %union.UnionType** %args137, %union.UnionType*** %array_list155
  store i64 1, i64* %array_size156
  %result157 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array153)
  %union_storage158 = alloca %union.UnionType
  %cast_to_double_ptr1591068 = bitcast %union.UnionType* %union_storage158 to double*
  %cast_to_int_ptr160 = bitcast double* %cast_to_double_ptr1591068 to i64*
  store i64 %result157, i64* %cast_to_int_ptr160
  %args161 = alloca %union.UnionType*
  %bitcast162 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue163 = load i64* %bitcast162
  %xor164 = xor i64 %load_ivalue163, -2533274790395904
  %int_to_ptr165 = inttoptr i64 %xor164 to %Object*
  %object_body166 = getelementptr inbounds %Object* %int_to_ptr165, i32 0, i32 1
  %bitcast167 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue168 = load i64* %bitcast167
  %xor169 = xor i64 %load_ivalue168, -2533274790395904
  %int_to_ptr170 = inttoptr i64 %xor169 to %Object*
  %object_body171 = getelementptr inbounds %Object* %int_to_ptr170, i32 0, i32 1
  %object172 = call i64 @Object_ltObject(%union.UnionType* %object_body166, %union.UnionType* %object_body171)
  %union_storage173 = alloca %union.UnionType
  %cast_to_double_ptr1741069 = bitcast %union.UnionType* %union_storage173 to double*
  %cast_to_int_ptr175 = bitcast double* %cast_to_double_ptr1741069 to i64*
  store i64 %object172, i64* %cast_to_int_ptr175
  %get_idx1761070 = bitcast %union.UnionType** %args161 to %union.UnionType**
  store %union.UnionType* %union_storage173, %union.UnionType** %get_idx1761070
  %array177 = alloca %ArrayObject
  %array_type1781071 = bitcast %ArrayObject* %array177 to i32*
  %array_list179 = getelementptr inbounds %ArrayObject* %array177, i32 0, i32 1
  %array_size180 = getelementptr inbounds %ArrayObject* %array177, i32 0, i32 2
  store i32 3, i32* %array_type1781071
  store %union.UnionType** %args161, %union.UnionType*** %array_list179
  store i64 1, i64* %array_size180
  %result181 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array177)
  %union_storage182 = alloca %union.UnionType
  %cast_to_double_ptr1831072 = bitcast %union.UnionType* %union_storage182 to double*
  %cast_to_int_ptr184 = bitcast double* %cast_to_double_ptr1831072 to i64*
  store i64 %result181, i64* %cast_to_int_ptr184
  %args185 = alloca %union.UnionType*
  %bitcast186 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue187 = load i64* %bitcast186
  %xor188 = xor i64 %load_ivalue187, -2533274790395904
  %int_to_ptr189 = inttoptr i64 %xor188 to %Object*
  %object_body190 = getelementptr inbounds %Object* %int_to_ptr189, i32 0, i32 1
  %bitcast191 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue192 = load i64* %bitcast191
  %xor193 = xor i64 %load_ivalue192, -2533274790395904
  %int_to_ptr194 = inttoptr i64 %xor193 to %Object*
  %object_body195 = getelementptr inbounds %Object* %int_to_ptr194, i32 0, i32 1
  %object196 = call i64 @Object_gtObject(%union.UnionType* %object_body190, %union.UnionType* %object_body195)
  %union_storage197 = alloca %union.UnionType
  %cast_to_double_ptr1981073 = bitcast %union.UnionType* %union_storage197 to double*
  %cast_to_int_ptr199 = bitcast double* %cast_to_double_ptr1981073 to i64*
  store i64 %object196, i64* %cast_to_int_ptr199
  %get_idx2001074 = bitcast %union.UnionType** %args185 to %union.UnionType**
  store %union.UnionType* %union_storage197, %union.UnionType** %get_idx2001074
  %array201 = alloca %ArrayObject
  %array_type2021075 = bitcast %ArrayObject* %array201 to i32*
  %array_list203 = getelementptr inbounds %ArrayObject* %array201, i32 0, i32 1
  %array_size204 = getelementptr inbounds %ArrayObject* %array201, i32 0, i32 2
  store i32 3, i32* %array_type2021075
  store %union.UnionType** %args185, %union.UnionType*** %array_list203
  store i64 1, i64* %array_size204
  %result205 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array201)
  %union_storage206 = alloca %union.UnionType
  %cast_to_double_ptr2071076 = bitcast %union.UnionType* %union_storage206 to double*
  %cast_to_int_ptr208 = bitcast double* %cast_to_double_ptr2071076 to i64*
  store i64 %result205, i64* %cast_to_int_ptr208
  %args209 = alloca %union.UnionType*
  %bitcast210 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue211 = load i64* %bitcast210
  %xor212 = xor i64 %load_ivalue211, -2533274790395904
  %int_to_ptr213 = inttoptr i64 %xor212 to %Object*
  %object_body214 = getelementptr inbounds %Object* %int_to_ptr213, i32 0, i32 1
  %bitcast215 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue216 = load i64* %bitcast215
  %xor217 = xor i64 %load_ivalue216, -2533274790395904
  %int_to_ptr218 = inttoptr i64 %xor217 to %Object*
  %object_body219 = getelementptr inbounds %Object* %int_to_ptr218, i32 0, i32 1
  %object220 = call i64 @Object_eqObject(%union.UnionType* %object_body214, %union.UnionType* %object_body219)
  %union_storage221 = alloca %union.UnionType
  %cast_to_double_ptr2221077 = bitcast %union.UnionType* %union_storage221 to double*
  %cast_to_int_ptr223 = bitcast double* %cast_to_double_ptr2221077 to i64*
  store i64 %object220, i64* %cast_to_int_ptr223
  %get_idx2241078 = bitcast %union.UnionType** %args209 to %union.UnionType**
  store %union.UnionType* %union_storage221, %union.UnionType** %get_idx2241078
  %array225 = alloca %ArrayObject
  %array_type2261079 = bitcast %ArrayObject* %array225 to i32*
  %array_list227 = getelementptr inbounds %ArrayObject* %array225, i32 0, i32 1
  %array_size228 = getelementptr inbounds %ArrayObject* %array225, i32 0, i32 2
  store i32 3, i32* %array_type2261079
  store %union.UnionType** %args209, %union.UnionType*** %array_list227
  store i64 1, i64* %array_size228
  %result229 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array225)
  %union_storage230 = alloca %union.UnionType
  %cast_to_double_ptr2311080 = bitcast %union.UnionType* %union_storage230 to double*
  %cast_to_int_ptr232 = bitcast double* %cast_to_double_ptr2311080 to i64*
  store i64 %result229, i64* %cast_to_int_ptr232
  %args233 = alloca %union.UnionType*
  %bitcast234 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue235 = load i64* %bitcast234
  %xor236 = xor i64 %load_ivalue235, -2533274790395904
  %int_to_ptr237 = inttoptr i64 %xor236 to %Object*
  %object_body238 = getelementptr inbounds %Object* %int_to_ptr237, i32 0, i32 1
  %bitcast239 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue240 = load i64* %bitcast239
  %xor241 = xor i64 %load_ivalue240, -2533274790395904
  %int_to_ptr242 = inttoptr i64 %xor241 to %Object*
  %object_body243 = getelementptr inbounds %Object* %int_to_ptr242, i32 0, i32 1
  %object244 = call i64 @Object_neObject(%union.UnionType* %object_body238, %union.UnionType* %object_body243)
  %union_storage245 = alloca %union.UnionType
  %cast_to_double_ptr2461081 = bitcast %union.UnionType* %union_storage245 to double*
  %cast_to_int_ptr247 = bitcast double* %cast_to_double_ptr2461081 to i64*
  store i64 %object244, i64* %cast_to_int_ptr247
  %get_idx2481082 = bitcast %union.UnionType** %args233 to %union.UnionType**
  store %union.UnionType* %union_storage245, %union.UnionType** %get_idx2481082
  %array249 = alloca %ArrayObject
  %array_type2501083 = bitcast %ArrayObject* %array249 to i32*
  %array_list251 = getelementptr inbounds %ArrayObject* %array249, i32 0, i32 1
  %array_size252 = getelementptr inbounds %ArrayObject* %array249, i32 0, i32 2
  store i32 3, i32* %array_type2501083
  store %union.UnionType** %args233, %union.UnionType*** %array_list251
  store i64 1, i64* %array_size252
  %result253 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array249)
  %union_storage254 = alloca %union.UnionType
  %cast_to_double_ptr2551084 = bitcast %union.UnionType* %union_storage254 to double*
  %cast_to_int_ptr256 = bitcast double* %cast_to_double_ptr2551084 to i64*
  store i64 %result253, i64* %cast_to_int_ptr256
  %args257 = alloca %union.UnionType*
  %bitcast258 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue259 = load i64* %bitcast258
  %xor260 = xor i64 %load_ivalue259, -2533274790395904
  %int_to_ptr261 = inttoptr i64 %xor260 to %Object*
  %object_body262 = getelementptr inbounds %Object* %int_to_ptr261, i32 0, i32 1
  %ivalue263 = alloca %union.UnionType
  %union_to_int_ptr264 = bitcast %union.UnionType* %ivalue263 to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr264
  %union_to_int_ptr265 = bitcast %union.UnionType* %ivalue263 to i64*
  %dereference266 = load i64* %union_to_int_ptr265
  %trunc_int_cast267 = trunc i64 %dereference266 to i32
  %i32_to_i64_cast268 = sext i32 %trunc_int_cast267 to i64
  %object269 = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_addInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %object_body262, i64 %i32_to_i64_cast268)
  %union_storage270 = alloca %union.UnionType
  %cast_to_double_ptr2711085 = bitcast %union.UnionType* %union_storage270 to double*
  %cast_to_int_ptr272 = bitcast double* %cast_to_double_ptr2711085 to i64*
  store i64 %object269, i64* %cast_to_int_ptr272
  %get_idx2731086 = bitcast %union.UnionType** %args257 to %union.UnionType**
  store %union.UnionType* %union_storage270, %union.UnionType** %get_idx2731086
  %array274 = alloca %ArrayObject
  %array_type2751087 = bitcast %ArrayObject* %array274 to i32*
  %array_list276 = getelementptr inbounds %ArrayObject* %array274, i32 0, i32 1
  %array_size277 = getelementptr inbounds %ArrayObject* %array274, i32 0, i32 2
  store i32 3, i32* %array_type2751087
  store %union.UnionType** %args257, %union.UnionType*** %array_list276
  store i64 1, i64* %array_size277
  %result278 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array274)
  %union_storage279 = alloca %union.UnionType
  %cast_to_double_ptr2801088 = bitcast %union.UnionType* %union_storage279 to double*
  %cast_to_int_ptr281 = bitcast double* %cast_to_double_ptr2801088 to i64*
  store i64 %result278, i64* %cast_to_int_ptr281
  %args282 = alloca %union.UnionType*
  %bitcast283 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue284 = load i64* %bitcast283
  %xor285 = xor i64 %load_ivalue284, -2533274790395904
  %int_to_ptr286 = inttoptr i64 %xor285 to %Object*
  %object_body287 = getelementptr inbounds %Object* %int_to_ptr286, i32 0, i32 1
  %ivalue288 = alloca %union.UnionType
  %union_to_int_ptr289 = bitcast %union.UnionType* %ivalue288 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr289
  %union_to_int_ptr290 = bitcast %union.UnionType* %ivalue288 to i64*
  %dereference291 = load i64* %union_to_int_ptr290
  %trunc_int_cast292 = trunc i64 %dereference291 to i32
  %i32_to_i64_cast293 = sext i32 %trunc_int_cast292 to i64
  %object294 = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_subInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %object_body287, i64 %i32_to_i64_cast293)
  %union_storage295 = alloca %union.UnionType
  %cast_to_double_ptr2961089 = bitcast %union.UnionType* %union_storage295 to double*
  %cast_to_int_ptr297 = bitcast double* %cast_to_double_ptr2961089 to i64*
  store i64 %object294, i64* %cast_to_int_ptr297
  %get_idx2981090 = bitcast %union.UnionType** %args282 to %union.UnionType**
  store %union.UnionType* %union_storage295, %union.UnionType** %get_idx2981090
  %array299 = alloca %ArrayObject
  %array_type3001091 = bitcast %ArrayObject* %array299 to i32*
  %array_list301 = getelementptr inbounds %ArrayObject* %array299, i32 0, i32 1
  %array_size302 = getelementptr inbounds %ArrayObject* %array299, i32 0, i32 2
  store i32 3, i32* %array_type3001091
  store %union.UnionType** %args282, %union.UnionType*** %array_list301
  store i64 1, i64* %array_size302
  %result303 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array299)
  %union_storage304 = alloca %union.UnionType
  %cast_to_double_ptr3051092 = bitcast %union.UnionType* %union_storage304 to double*
  %cast_to_int_ptr306 = bitcast double* %cast_to_double_ptr3051092 to i64*
  store i64 %result303, i64* %cast_to_int_ptr306
  %args307 = alloca %union.UnionType*
  %bitcast308 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue309 = load i64* %bitcast308
  %xor310 = xor i64 %load_ivalue309, -2533274790395904
  %int_to_ptr311 = inttoptr i64 %xor310 to %Object*
  %object_body312 = getelementptr inbounds %Object* %int_to_ptr311, i32 0, i32 1
  %ivalue313 = alloca %union.UnionType
  %union_to_int_ptr314 = bitcast %union.UnionType* %ivalue313 to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr314
  %union_to_int_ptr315 = bitcast %union.UnionType* %ivalue313 to i64*
  %dereference316 = load i64* %union_to_int_ptr315
  %trunc_int_cast317 = trunc i64 %dereference316 to i32
  %i32_to_i64_cast318 = sext i32 %trunc_int_cast317 to i64
  %object319 = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_mulInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %object_body312, i64 %i32_to_i64_cast318)
  %union_storage320 = alloca %union.UnionType
  %cast_to_double_ptr3211093 = bitcast %union.UnionType* %union_storage320 to double*
  %cast_to_int_ptr322 = bitcast double* %cast_to_double_ptr3211093 to i64*
  store i64 %object319, i64* %cast_to_int_ptr322
  %get_idx3231094 = bitcast %union.UnionType** %args307 to %union.UnionType**
  store %union.UnionType* %union_storage320, %union.UnionType** %get_idx3231094
  %array324 = alloca %ArrayObject
  %array_type3251095 = bitcast %ArrayObject* %array324 to i32*
  %array_list326 = getelementptr inbounds %ArrayObject* %array324, i32 0, i32 1
  %array_size327 = getelementptr inbounds %ArrayObject* %array324, i32 0, i32 2
  store i32 3, i32* %array_type3251095
  store %union.UnionType** %args307, %union.UnionType*** %array_list326
  store i64 1, i64* %array_size327
  %result328 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array324)
  %union_storage329 = alloca %union.UnionType
  %cast_to_double_ptr3301096 = bitcast %union.UnionType* %union_storage329 to double*
  %cast_to_int_ptr331 = bitcast double* %cast_to_double_ptr3301096 to i64*
  store i64 %result328, i64* %cast_to_int_ptr331
  %args332 = alloca %union.UnionType*
  %bitcast333 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue334 = load i64* %bitcast333
  %xor335 = xor i64 %load_ivalue334, -2533274790395904
  %int_to_ptr336 = inttoptr i64 %xor335 to %Object*
  %object_body337 = getelementptr inbounds %Object* %int_to_ptr336, i32 0, i32 1
  %ivalue338 = alloca %union.UnionType
  %union_to_int_ptr339 = bitcast %union.UnionType* %ivalue338 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr339
  %union_to_int_ptr340 = bitcast %union.UnionType* %ivalue338 to i64*
  %dereference341 = load i64* %union_to_int_ptr340
  %trunc_int_cast342 = trunc i64 %dereference341 to i32
  %i32_to_i64_cast343 = sext i32 %trunc_int_cast342 to i64
  %object344 = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_divInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %object_body337, i64 %i32_to_i64_cast343)
  %union_storage345 = alloca %union.UnionType
  %cast_to_double_ptr3461097 = bitcast %union.UnionType* %union_storage345 to double*
  %cast_to_int_ptr347 = bitcast double* %cast_to_double_ptr3461097 to i64*
  store i64 %object344, i64* %cast_to_int_ptr347
  %get_idx3481098 = bitcast %union.UnionType** %args332 to %union.UnionType**
  store %union.UnionType* %union_storage345, %union.UnionType** %get_idx3481098
  %array349 = alloca %ArrayObject
  %array_type3501099 = bitcast %ArrayObject* %array349 to i32*
  %array_list351 = getelementptr inbounds %ArrayObject* %array349, i32 0, i32 1
  %array_size352 = getelementptr inbounds %ArrayObject* %array349, i32 0, i32 2
  store i32 3, i32* %array_type3501099
  store %union.UnionType** %args332, %union.UnionType*** %array_list351
  store i64 1, i64* %array_size352
  %result353 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array349)
  %union_storage354 = alloca %union.UnionType
  %cast_to_double_ptr3551100 = bitcast %union.UnionType* %union_storage354 to double*
  %cast_to_int_ptr356 = bitcast double* %cast_to_double_ptr3551100 to i64*
  store i64 %result353, i64* %cast_to_int_ptr356
  %args357 = alloca %union.UnionType*
  %bitcast358 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue359 = load i64* %bitcast358
  %xor360 = xor i64 %load_ivalue359, -2533274790395904
  %int_to_ptr361 = inttoptr i64 %xor360 to %Object*
  %object_body362 = getelementptr inbounds %Object* %int_to_ptr361, i32 0, i32 1
  %ivalue363 = alloca %union.UnionType
  %union_to_int_ptr364 = bitcast %union.UnionType* %ivalue363 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr364
  %union_to_int_ptr365 = bitcast %union.UnionType* %ivalue363 to i64*
  %dereference366 = load i64* %union_to_int_ptr365
  %trunc_int_cast367 = trunc i64 %dereference366 to i32
  %i32_to_i64_cast368 = sext i32 %trunc_int_cast367 to i64
  %object369 = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_ltInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %object_body362, i64 %i32_to_i64_cast368)
  %union_storage370 = alloca %union.UnionType
  %cast_to_double_ptr3711101 = bitcast %union.UnionType* %union_storage370 to double*
  %cast_to_int_ptr372 = bitcast double* %cast_to_double_ptr3711101 to i64*
  store i64 %object369, i64* %cast_to_int_ptr372
  %get_idx3731102 = bitcast %union.UnionType** %args357 to %union.UnionType**
  store %union.UnionType* %union_storage370, %union.UnionType** %get_idx3731102
  %array374 = alloca %ArrayObject
  %array_type3751103 = bitcast %ArrayObject* %array374 to i32*
  %array_list376 = getelementptr inbounds %ArrayObject* %array374, i32 0, i32 1
  %array_size377 = getelementptr inbounds %ArrayObject* %array374, i32 0, i32 2
  store i32 3, i32* %array_type3751103
  store %union.UnionType** %args357, %union.UnionType*** %array_list376
  store i64 1, i64* %array_size377
  %result378 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array374)
  %union_storage379 = alloca %union.UnionType
  %cast_to_double_ptr3801104 = bitcast %union.UnionType* %union_storage379 to double*
  %cast_to_int_ptr381 = bitcast double* %cast_to_double_ptr3801104 to i64*
  store i64 %result378, i64* %cast_to_int_ptr381
  %args382 = alloca %union.UnionType*
  %bitcast383 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue384 = load i64* %bitcast383
  %xor385 = xor i64 %load_ivalue384, -2533274790395904
  %int_to_ptr386 = inttoptr i64 %xor385 to %Object*
  %object_body387 = getelementptr inbounds %Object* %int_to_ptr386, i32 0, i32 1
  %ivalue388 = alloca %union.UnionType
  %union_to_int_ptr389 = bitcast %union.UnionType* %ivalue388 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr389
  %union_to_int_ptr390 = bitcast %union.UnionType* %ivalue388 to i64*
  %dereference391 = load i64* %union_to_int_ptr390
  %trunc_int_cast392 = trunc i64 %dereference391 to i32
  %i32_to_i64_cast393 = sext i32 %trunc_int_cast392 to i64
  %object394 = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_gtInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %object_body387, i64 %i32_to_i64_cast393)
  %union_storage395 = alloca %union.UnionType
  %cast_to_double_ptr3961105 = bitcast %union.UnionType* %union_storage395 to double*
  %cast_to_int_ptr397 = bitcast double* %cast_to_double_ptr3961105 to i64*
  store i64 %object394, i64* %cast_to_int_ptr397
  %get_idx3981106 = bitcast %union.UnionType** %args382 to %union.UnionType**
  store %union.UnionType* %union_storage395, %union.UnionType** %get_idx3981106
  %array399 = alloca %ArrayObject
  %array_type4001107 = bitcast %ArrayObject* %array399 to i32*
  %array_list401 = getelementptr inbounds %ArrayObject* %array399, i32 0, i32 1
  %array_size402 = getelementptr inbounds %ArrayObject* %array399, i32 0, i32 2
  store i32 3, i32* %array_type4001107
  store %union.UnionType** %args382, %union.UnionType*** %array_list401
  store i64 1, i64* %array_size402
  %result403 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array399)
  %union_storage404 = alloca %union.UnionType
  %cast_to_double_ptr4051108 = bitcast %union.UnionType* %union_storage404 to double*
  %cast_to_int_ptr406 = bitcast double* %cast_to_double_ptr4051108 to i64*
  store i64 %result403, i64* %cast_to_int_ptr406
  %args407 = alloca %union.UnionType*
  %bitcast408 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue409 = load i64* %bitcast408
  %xor410 = xor i64 %load_ivalue409, -2533274790395904
  %int_to_ptr411 = inttoptr i64 %xor410 to %Object*
  %object_body412 = getelementptr inbounds %Object* %int_to_ptr411, i32 0, i32 1
  %ivalue413 = alloca %union.UnionType
  %union_to_int_ptr414 = bitcast %union.UnionType* %ivalue413 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr414
  %union_to_int_ptr415 = bitcast %union.UnionType* %ivalue413 to i64*
  %dereference416 = load i64* %union_to_int_ptr415
  %trunc_int_cast417 = trunc i64 %dereference416 to i32
  %i32_to_i64_cast418 = sext i32 %trunc_int_cast417 to i64
  %object419 = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_eqInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %object_body412, i64 %i32_to_i64_cast418)
  %union_storage420 = alloca %union.UnionType
  %cast_to_double_ptr4211109 = bitcast %union.UnionType* %union_storage420 to double*
  %cast_to_int_ptr422 = bitcast double* %cast_to_double_ptr4211109 to i64*
  store i64 %object419, i64* %cast_to_int_ptr422
  %get_idx4231110 = bitcast %union.UnionType** %args407 to %union.UnionType**
  store %union.UnionType* %union_storage420, %union.UnionType** %get_idx4231110
  %array424 = alloca %ArrayObject
  %array_type4251111 = bitcast %ArrayObject* %array424 to i32*
  %array_list426 = getelementptr inbounds %ArrayObject* %array424, i32 0, i32 1
  %array_size427 = getelementptr inbounds %ArrayObject* %array424, i32 0, i32 2
  store i32 3, i32* %array_type4251111
  store %union.UnionType** %args407, %union.UnionType*** %array_list426
  store i64 1, i64* %array_size427
  %result428 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array424)
  %union_storage429 = alloca %union.UnionType
  %cast_to_double_ptr4301112 = bitcast %union.UnionType* %union_storage429 to double*
  %cast_to_int_ptr431 = bitcast double* %cast_to_double_ptr4301112 to i64*
  store i64 %result428, i64* %cast_to_int_ptr431
  %args432 = alloca %union.UnionType*
  %bitcast433 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue434 = load i64* %bitcast433
  %xor435 = xor i64 %load_ivalue434, -2533274790395904
  %int_to_ptr436 = inttoptr i64 %xor435 to %Object*
  %object_body437 = getelementptr inbounds %Object* %int_to_ptr436, i32 0, i32 1
  %ivalue438 = alloca %union.UnionType
  %union_to_int_ptr439 = bitcast %union.UnionType* %ivalue438 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr439
  %union_to_int_ptr440 = bitcast %union.UnionType* %ivalue438 to i64*
  %dereference441 = load i64* %union_to_int_ptr440
  %trunc_int_cast442 = trunc i64 %dereference441 to i32
  %i32_to_i64_cast443 = sext i32 %trunc_int_cast442 to i64
  %object444 = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_neInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %object_body437, i64 %i32_to_i64_cast443)
  %union_storage445 = alloca %union.UnionType
  %cast_to_double_ptr4461113 = bitcast %union.UnionType* %union_storage445 to double*
  %cast_to_int_ptr447 = bitcast double* %cast_to_double_ptr4461113 to i64*
  store i64 %object444, i64* %cast_to_int_ptr447
  %get_idx4481114 = bitcast %union.UnionType** %args432 to %union.UnionType**
  store %union.UnionType* %union_storage445, %union.UnionType** %get_idx4481114
  %array449 = alloca %ArrayObject
  %array_type4501115 = bitcast %ArrayObject* %array449 to i32*
  %array_list451 = getelementptr inbounds %ArrayObject* %array449, i32 0, i32 1
  %array_size452 = getelementptr inbounds %ArrayObject* %array449, i32 0, i32 2
  store i32 3, i32* %array_type4501115
  store %union.UnionType** %args432, %union.UnionType*** %array_list451
  store i64 1, i64* %array_size452
  %result453 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array449)
  %union_storage454 = alloca %union.UnionType
  %cast_to_double_ptr4551116 = bitcast %union.UnionType* %union_storage454 to double*
  %cast_to_int_ptr456 = bitcast double* %cast_to_double_ptr4551116 to i64*
  store i64 %result453, i64* %cast_to_int_ptr456
  %args457 = alloca %union.UnionType*
  %ivalue458 = alloca %union.UnionType
  %union_to_int_ptr459 = bitcast %union.UnionType* %ivalue458 to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr459
  %bitcast460 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue461 = load i64* %bitcast460
  %xor462 = xor i64 %load_ivalue461, -2533274790395904
  %int_to_ptr463 = inttoptr i64 %xor462 to %Object*
  %object_body464 = getelementptr inbounds %Object* %int_to_ptr463, i32 0, i32 1
  %union_to_int_ptr465 = bitcast %union.UnionType* %ivalue458 to i64*
  %dereference466 = load i64* %union_to_int_ptr465
  %trunc_int_cast467 = trunc i64 %dereference466 to i32
  %i32_to_i64_cast468 = sext i32 %trunc_int_cast467 to i64
  %object469 = call i64 bitcast (i64 (i32, %union.UnionType*)* @Object_addInt2 to i64 (i64, %union.UnionType*)*)(i64 %i32_to_i64_cast468, %union.UnionType* %object_body464)
  %union_storage470 = alloca %union.UnionType
  %cast_to_double_ptr4711117 = bitcast %union.UnionType* %union_storage470 to double*
  %cast_to_int_ptr472 = bitcast double* %cast_to_double_ptr4711117 to i64*
  store i64 %object469, i64* %cast_to_int_ptr472
  %get_idx4731118 = bitcast %union.UnionType** %args457 to %union.UnionType**
  store %union.UnionType* %union_storage470, %union.UnionType** %get_idx4731118
  %array474 = alloca %ArrayObject
  %array_type4751119 = bitcast %ArrayObject* %array474 to i32*
  %array_list476 = getelementptr inbounds %ArrayObject* %array474, i32 0, i32 1
  %array_size477 = getelementptr inbounds %ArrayObject* %array474, i32 0, i32 2
  store i32 3, i32* %array_type4751119
  store %union.UnionType** %args457, %union.UnionType*** %array_list476
  store i64 1, i64* %array_size477
  %result478 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array474)
  %union_storage479 = alloca %union.UnionType
  %cast_to_double_ptr4801120 = bitcast %union.UnionType* %union_storage479 to double*
  %cast_to_int_ptr481 = bitcast double* %cast_to_double_ptr4801120 to i64*
  store i64 %result478, i64* %cast_to_int_ptr481
  %args482 = alloca %union.UnionType*
  %ivalue483 = alloca %union.UnionType
  %union_to_int_ptr484 = bitcast %union.UnionType* %ivalue483 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr484
  %bitcast485 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue486 = load i64* %bitcast485
  %xor487 = xor i64 %load_ivalue486, -2533274790395904
  %int_to_ptr488 = inttoptr i64 %xor487 to %Object*
  %object_body489 = getelementptr inbounds %Object* %int_to_ptr488, i32 0, i32 1
  %union_to_int_ptr490 = bitcast %union.UnionType* %ivalue483 to i64*
  %dereference491 = load i64* %union_to_int_ptr490
  %trunc_int_cast492 = trunc i64 %dereference491 to i32
  %i32_to_i64_cast493 = sext i32 %trunc_int_cast492 to i64
  %object494 = call i64 bitcast (i64 (i32, %union.UnionType*)* @Object_subInt2 to i64 (i64, %union.UnionType*)*)(i64 %i32_to_i64_cast493, %union.UnionType* %object_body489)
  %union_storage495 = alloca %union.UnionType
  %cast_to_double_ptr4961121 = bitcast %union.UnionType* %union_storage495 to double*
  %cast_to_int_ptr497 = bitcast double* %cast_to_double_ptr4961121 to i64*
  store i64 %object494, i64* %cast_to_int_ptr497
  %get_idx4981122 = bitcast %union.UnionType** %args482 to %union.UnionType**
  store %union.UnionType* %union_storage495, %union.UnionType** %get_idx4981122
  %array499 = alloca %ArrayObject
  %array_type5001123 = bitcast %ArrayObject* %array499 to i32*
  %array_list501 = getelementptr inbounds %ArrayObject* %array499, i32 0, i32 1
  %array_size502 = getelementptr inbounds %ArrayObject* %array499, i32 0, i32 2
  store i32 3, i32* %array_type5001123
  store %union.UnionType** %args482, %union.UnionType*** %array_list501
  store i64 1, i64* %array_size502
  %result503 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array499)
  %union_storage504 = alloca %union.UnionType
  %cast_to_double_ptr5051124 = bitcast %union.UnionType* %union_storage504 to double*
  %cast_to_int_ptr506 = bitcast double* %cast_to_double_ptr5051124 to i64*
  store i64 %result503, i64* %cast_to_int_ptr506
  %args507 = alloca %union.UnionType*
  %ivalue508 = alloca %union.UnionType
  %union_to_int_ptr509 = bitcast %union.UnionType* %ivalue508 to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr509
  %bitcast510 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue511 = load i64* %bitcast510
  %xor512 = xor i64 %load_ivalue511, -2533274790395904
  %int_to_ptr513 = inttoptr i64 %xor512 to %Object*
  %object_body514 = getelementptr inbounds %Object* %int_to_ptr513, i32 0, i32 1
  %union_to_int_ptr515 = bitcast %union.UnionType* %ivalue508 to i64*
  %dereference516 = load i64* %union_to_int_ptr515
  %trunc_int_cast517 = trunc i64 %dereference516 to i32
  %i32_to_i64_cast518 = sext i32 %trunc_int_cast517 to i64
  %object519 = call i64 bitcast (i64 (i32, %union.UnionType*)* @Object_mulInt2 to i64 (i64, %union.UnionType*)*)(i64 %i32_to_i64_cast518, %union.UnionType* %object_body514)
  %union_storage520 = alloca %union.UnionType
  %cast_to_double_ptr5211125 = bitcast %union.UnionType* %union_storage520 to double*
  %cast_to_int_ptr522 = bitcast double* %cast_to_double_ptr5211125 to i64*
  store i64 %object519, i64* %cast_to_int_ptr522
  %get_idx5231126 = bitcast %union.UnionType** %args507 to %union.UnionType**
  store %union.UnionType* %union_storage520, %union.UnionType** %get_idx5231126
  %array524 = alloca %ArrayObject
  %array_type5251127 = bitcast %ArrayObject* %array524 to i32*
  %array_list526 = getelementptr inbounds %ArrayObject* %array524, i32 0, i32 1
  %array_size527 = getelementptr inbounds %ArrayObject* %array524, i32 0, i32 2
  store i32 3, i32* %array_type5251127
  store %union.UnionType** %args507, %union.UnionType*** %array_list526
  store i64 1, i64* %array_size527
  %result528 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array524)
  %union_storage529 = alloca %union.UnionType
  %cast_to_double_ptr5301128 = bitcast %union.UnionType* %union_storage529 to double*
  %cast_to_int_ptr531 = bitcast double* %cast_to_double_ptr5301128 to i64*
  store i64 %result528, i64* %cast_to_int_ptr531
  %args532 = alloca %union.UnionType*
  %ivalue533 = alloca %union.UnionType
  %union_to_int_ptr534 = bitcast %union.UnionType* %ivalue533 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr534
  %bitcast535 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue536 = load i64* %bitcast535
  %xor537 = xor i64 %load_ivalue536, -2533274790395904
  %int_to_ptr538 = inttoptr i64 %xor537 to %Object*
  %object_body539 = getelementptr inbounds %Object* %int_to_ptr538, i32 0, i32 1
  %union_to_int_ptr540 = bitcast %union.UnionType* %ivalue533 to i64*
  %dereference541 = load i64* %union_to_int_ptr540
  %trunc_int_cast542 = trunc i64 %dereference541 to i32
  %i32_to_i64_cast543 = sext i32 %trunc_int_cast542 to i64
  %object544 = call i64 bitcast (i64 (i32, %union.UnionType*)* @Object_divInt2 to i64 (i64, %union.UnionType*)*)(i64 %i32_to_i64_cast543, %union.UnionType* %object_body539)
  %union_storage545 = alloca %union.UnionType
  %cast_to_double_ptr5461129 = bitcast %union.UnionType* %union_storage545 to double*
  %cast_to_int_ptr547 = bitcast double* %cast_to_double_ptr5461129 to i64*
  store i64 %object544, i64* %cast_to_int_ptr547
  %get_idx5481130 = bitcast %union.UnionType** %args532 to %union.UnionType**
  store %union.UnionType* %union_storage545, %union.UnionType** %get_idx5481130
  %array549 = alloca %ArrayObject
  %array_type5501131 = bitcast %ArrayObject* %array549 to i32*
  %array_list551 = getelementptr inbounds %ArrayObject* %array549, i32 0, i32 1
  %array_size552 = getelementptr inbounds %ArrayObject* %array549, i32 0, i32 2
  store i32 3, i32* %array_type5501131
  store %union.UnionType** %args532, %union.UnionType*** %array_list551
  store i64 1, i64* %array_size552
  %result553 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array549)
  %union_storage554 = alloca %union.UnionType
  %cast_to_double_ptr5551132 = bitcast %union.UnionType* %union_storage554 to double*
  %cast_to_int_ptr556 = bitcast double* %cast_to_double_ptr5551132 to i64*
  store i64 %result553, i64* %cast_to_int_ptr556
  %args557 = alloca %union.UnionType*
  %ivalue558 = alloca %union.UnionType
  %union_to_int_ptr559 = bitcast %union.UnionType* %ivalue558 to i64*
  store i64 -4222124650659840, i64* %union_to_int_ptr559
  %bitcast560 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue561 = load i64* %bitcast560
  %xor562 = xor i64 %load_ivalue561, -2533274790395904
  %int_to_ptr563 = inttoptr i64 %xor562 to %Object*
  %object_body564 = getelementptr inbounds %Object* %int_to_ptr563, i32 0, i32 1
  %union_to_int_ptr565 = bitcast %union.UnionType* %ivalue558 to i64*
  %dereference566 = load i64* %union_to_int_ptr565
  %trunc_int_cast567 = trunc i64 %dereference566 to i32
  %i32_to_i64_cast568 = sext i32 %trunc_int_cast567 to i64
  %object569 = call i64 bitcast (i64 (i32, %union.UnionType*)* @Object_ltInt2 to i64 (i64, %union.UnionType*)*)(i64 %i32_to_i64_cast568, %union.UnionType* %object_body564)
  %union_storage570 = alloca %union.UnionType
  %cast_to_double_ptr5711133 = bitcast %union.UnionType* %union_storage570 to double*
  %cast_to_int_ptr572 = bitcast double* %cast_to_double_ptr5711133 to i64*
  store i64 %object569, i64* %cast_to_int_ptr572
  %get_idx5731134 = bitcast %union.UnionType** %args557 to %union.UnionType**
  store %union.UnionType* %union_storage570, %union.UnionType** %get_idx5731134
  %array574 = alloca %ArrayObject
  %array_type5751135 = bitcast %ArrayObject* %array574 to i32*
  %array_list576 = getelementptr inbounds %ArrayObject* %array574, i32 0, i32 1
  %array_size577 = getelementptr inbounds %ArrayObject* %array574, i32 0, i32 2
  store i32 3, i32* %array_type5751135
  store %union.UnionType** %args557, %union.UnionType*** %array_list576
  store i64 1, i64* %array_size577
  %result578 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array574)
  %union_storage579 = alloca %union.UnionType
  %cast_to_double_ptr5801136 = bitcast %union.UnionType* %union_storage579 to double*
  %cast_to_int_ptr581 = bitcast double* %cast_to_double_ptr5801136 to i64*
  store i64 %result578, i64* %cast_to_int_ptr581
  %args582 = alloca %union.UnionType*
  %ivalue583 = alloca %union.UnionType
  %union_to_int_ptr584 = bitcast %union.UnionType* %ivalue583 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr584
  %bitcast585 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue586 = load i64* %bitcast585
  %xor587 = xor i64 %load_ivalue586, -2533274790395904
  %int_to_ptr588 = inttoptr i64 %xor587 to %Object*
  %object_body589 = getelementptr inbounds %Object* %int_to_ptr588, i32 0, i32 1
  %union_to_int_ptr590 = bitcast %union.UnionType* %ivalue583 to i64*
  %dereference591 = load i64* %union_to_int_ptr590
  %trunc_int_cast592 = trunc i64 %dereference591 to i32
  %i32_to_i64_cast593 = sext i32 %trunc_int_cast592 to i64
  %object594 = call i64 bitcast (i64 (i32, %union.UnionType*)* @Object_gtInt2 to i64 (i64, %union.UnionType*)*)(i64 %i32_to_i64_cast593, %union.UnionType* %object_body589)
  %union_storage595 = alloca %union.UnionType
  %cast_to_double_ptr5961137 = bitcast %union.UnionType* %union_storage595 to double*
  %cast_to_int_ptr597 = bitcast double* %cast_to_double_ptr5961137 to i64*
  store i64 %object594, i64* %cast_to_int_ptr597
  %get_idx5981138 = bitcast %union.UnionType** %args582 to %union.UnionType**
  store %union.UnionType* %union_storage595, %union.UnionType** %get_idx5981138
  %array599 = alloca %ArrayObject
  %array_type6001139 = bitcast %ArrayObject* %array599 to i32*
  %array_list601 = getelementptr inbounds %ArrayObject* %array599, i32 0, i32 1
  %array_size602 = getelementptr inbounds %ArrayObject* %array599, i32 0, i32 2
  store i32 3, i32* %array_type6001139
  store %union.UnionType** %args582, %union.UnionType*** %array_list601
  store i64 1, i64* %array_size602
  %result603 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array599)
  %union_storage604 = alloca %union.UnionType
  %cast_to_double_ptr6051140 = bitcast %union.UnionType* %union_storage604 to double*
  %cast_to_int_ptr606 = bitcast double* %cast_to_double_ptr6051140 to i64*
  store i64 %result603, i64* %cast_to_int_ptr606
  %args607 = alloca %union.UnionType*
  %ivalue608 = alloca %union.UnionType
  %union_to_int_ptr609 = bitcast %union.UnionType* %ivalue608 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr609
  %bitcast610 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue611 = load i64* %bitcast610
  %xor612 = xor i64 %load_ivalue611, -2533274790395904
  %int_to_ptr613 = inttoptr i64 %xor612 to %Object*
  %object_body614 = getelementptr inbounds %Object* %int_to_ptr613, i32 0, i32 1
  %union_to_int_ptr615 = bitcast %union.UnionType* %ivalue608 to i64*
  %dereference616 = load i64* %union_to_int_ptr615
  %trunc_int_cast617 = trunc i64 %dereference616 to i32
  %i32_to_i64_cast618 = sext i32 %trunc_int_cast617 to i64
  %object619 = call i64 bitcast (i64 (i32, %union.UnionType*)* @Object_eqInt2 to i64 (i64, %union.UnionType*)*)(i64 %i32_to_i64_cast618, %union.UnionType* %object_body614)
  %union_storage620 = alloca %union.UnionType
  %cast_to_double_ptr6211141 = bitcast %union.UnionType* %union_storage620 to double*
  %cast_to_int_ptr622 = bitcast double* %cast_to_double_ptr6211141 to i64*
  store i64 %object619, i64* %cast_to_int_ptr622
  %get_idx6231142 = bitcast %union.UnionType** %args607 to %union.UnionType**
  store %union.UnionType* %union_storage620, %union.UnionType** %get_idx6231142
  %array624 = alloca %ArrayObject
  %array_type6251143 = bitcast %ArrayObject* %array624 to i32*
  %array_list626 = getelementptr inbounds %ArrayObject* %array624, i32 0, i32 1
  %array_size627 = getelementptr inbounds %ArrayObject* %array624, i32 0, i32 2
  store i32 3, i32* %array_type6251143
  store %union.UnionType** %args607, %union.UnionType*** %array_list626
  store i64 1, i64* %array_size627
  %result628 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array624)
  %union_storage629 = alloca %union.UnionType
  %cast_to_double_ptr6301144 = bitcast %union.UnionType* %union_storage629 to double*
  %cast_to_int_ptr631 = bitcast double* %cast_to_double_ptr6301144 to i64*
  store i64 %result628, i64* %cast_to_int_ptr631
  %args632 = alloca %union.UnionType*
  %ivalue633 = alloca %union.UnionType
  %union_to_int_ptr634 = bitcast %union.UnionType* %ivalue633 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr634
  %bitcast635 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue636 = load i64* %bitcast635
  %xor637 = xor i64 %load_ivalue636, -2533274790395904
  %int_to_ptr638 = inttoptr i64 %xor637 to %Object*
  %object_body639 = getelementptr inbounds %Object* %int_to_ptr638, i32 0, i32 1
  %union_to_int_ptr640 = bitcast %union.UnionType* %ivalue633 to i64*
  %dereference641 = load i64* %union_to_int_ptr640
  %trunc_int_cast642 = trunc i64 %dereference641 to i32
  %i32_to_i64_cast643 = sext i32 %trunc_int_cast642 to i64
  %object644 = call i64 bitcast (i64 (i32, %union.UnionType*)* @Object_neInt2 to i64 (i64, %union.UnionType*)*)(i64 %i32_to_i64_cast643, %union.UnionType* %object_body639)
  %union_storage645 = alloca %union.UnionType
  %cast_to_double_ptr6461145 = bitcast %union.UnionType* %union_storage645 to double*
  %cast_to_int_ptr647 = bitcast double* %cast_to_double_ptr6461145 to i64*
  store i64 %object644, i64* %cast_to_int_ptr647
  %get_idx6481146 = bitcast %union.UnionType** %args632 to %union.UnionType**
  store %union.UnionType* %union_storage645, %union.UnionType** %get_idx6481146
  %array649 = alloca %ArrayObject
  %array_type6501147 = bitcast %ArrayObject* %array649 to i32*
  %array_list651 = getelementptr inbounds %ArrayObject* %array649, i32 0, i32 1
  %array_size652 = getelementptr inbounds %ArrayObject* %array649, i32 0, i32 2
  store i32 3, i32* %array_type6501147
  store %union.UnionType** %args632, %union.UnionType*** %array_list651
  store i64 1, i64* %array_size652
  %result653 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array649)
  %union_storage654 = alloca %union.UnionType
  %cast_to_double_ptr6551148 = bitcast %union.UnionType* %union_storage654 to double*
  %cast_to_int_ptr656 = bitcast double* %cast_to_double_ptr6551148 to i64*
  store i64 %result653, i64* %cast_to_int_ptr656
  %args657 = alloca %union.UnionType*
  %bitcast658 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue659 = load i64* %bitcast658
  %xor660 = xor i64 %load_ivalue659, -2533274790395904
  %int_to_ptr661 = inttoptr i64 %xor660 to %Object*
  %object_body662 = getelementptr inbounds %Object* %int_to_ptr661, i32 0, i32 1
  %double_ptr663 = alloca %union.UnionType
  %cast_to_double_ptr664 = bitcast %union.UnionType* %double_ptr663 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr664
  %cast_to_double_ptr665 = bitcast %union.UnionType* %double_ptr663 to double*
  %load_double = load double* %cast_to_double_ptr665
  %object666 = call i64 @Object_ltDouble(%union.UnionType* %object_body662, double %load_double)
  %union_storage667 = alloca %union.UnionType
  %cast_to_double_ptr6681149 = bitcast %union.UnionType* %union_storage667 to double*
  %cast_to_int_ptr669 = bitcast double* %cast_to_double_ptr6681149 to i64*
  store i64 %object666, i64* %cast_to_int_ptr669
  %get_idx6701150 = bitcast %union.UnionType** %args657 to %union.UnionType**
  store %union.UnionType* %union_storage667, %union.UnionType** %get_idx6701150
  %array671 = alloca %ArrayObject
  %array_type6721151 = bitcast %ArrayObject* %array671 to i32*
  %array_list673 = getelementptr inbounds %ArrayObject* %array671, i32 0, i32 1
  %array_size674 = getelementptr inbounds %ArrayObject* %array671, i32 0, i32 2
  store i32 3, i32* %array_type6721151
  store %union.UnionType** %args657, %union.UnionType*** %array_list673
  store i64 1, i64* %array_size674
  %result675 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array671)
  %union_storage676 = alloca %union.UnionType
  %cast_to_double_ptr6771152 = bitcast %union.UnionType* %union_storage676 to double*
  %cast_to_int_ptr678 = bitcast double* %cast_to_double_ptr6771152 to i64*
  store i64 %result675, i64* %cast_to_int_ptr678
  %args679 = alloca %union.UnionType*
  %bitcast680 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue681 = load i64* %bitcast680
  %xor682 = xor i64 %load_ivalue681, -2533274790395904
  %int_to_ptr683 = inttoptr i64 %xor682 to %Object*
  %object_body684 = getelementptr inbounds %Object* %int_to_ptr683, i32 0, i32 1
  %double_ptr685 = alloca %union.UnionType
  %cast_to_double_ptr686 = bitcast %union.UnionType* %double_ptr685 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr686
  %cast_to_double_ptr687 = bitcast %union.UnionType* %double_ptr685 to double*
  %load_double688 = load double* %cast_to_double_ptr687
  %object689 = call i64 @Object_gtDouble(%union.UnionType* %object_body684, double %load_double688)
  %union_storage690 = alloca %union.UnionType
  %cast_to_double_ptr6911153 = bitcast %union.UnionType* %union_storage690 to double*
  %cast_to_int_ptr692 = bitcast double* %cast_to_double_ptr6911153 to i64*
  store i64 %object689, i64* %cast_to_int_ptr692
  %get_idx6931154 = bitcast %union.UnionType** %args679 to %union.UnionType**
  store %union.UnionType* %union_storage690, %union.UnionType** %get_idx6931154
  %array694 = alloca %ArrayObject
  %array_type6951155 = bitcast %ArrayObject* %array694 to i32*
  %array_list696 = getelementptr inbounds %ArrayObject* %array694, i32 0, i32 1
  %array_size697 = getelementptr inbounds %ArrayObject* %array694, i32 0, i32 2
  store i32 3, i32* %array_type6951155
  store %union.UnionType** %args679, %union.UnionType*** %array_list696
  store i64 1, i64* %array_size697
  %result698 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array694)
  %union_storage699 = alloca %union.UnionType
  %cast_to_double_ptr7001156 = bitcast %union.UnionType* %union_storage699 to double*
  %cast_to_int_ptr701 = bitcast double* %cast_to_double_ptr7001156 to i64*
  store i64 %result698, i64* %cast_to_int_ptr701
  %args702 = alloca %union.UnionType*
  %bitcast703 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue704 = load i64* %bitcast703
  %xor705 = xor i64 %load_ivalue704, -2533274790395904
  %int_to_ptr706 = inttoptr i64 %xor705 to %Object*
  %object_body707 = getelementptr inbounds %Object* %int_to_ptr706, i32 0, i32 1
  %double_ptr708 = alloca %union.UnionType
  %cast_to_double_ptr709 = bitcast %union.UnionType* %double_ptr708 to double*
  store double 2.100000e+00, double* %cast_to_double_ptr709
  %cast_to_double_ptr710 = bitcast %union.UnionType* %double_ptr708 to double*
  %load_double711 = load double* %cast_to_double_ptr710
  %1 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %1) #3
  %2 = bitcast %union.UnionType** %a.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %2) #3
  %3 = bitcast double* %b.addr.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %3) #3
  %4 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %4) #3
  store %union.UnionType* %object_body707, %union.UnionType** %a.addr.i, align 8
  store double %load_double711, double* %b.addr.i, align 8
  %5 = load %union.UnionType** %a.addr.i, align 8
  %o.i = bitcast %union.UnionType* %5 to i8**
  %6 = load i8** %o.i, align 8
  %7 = ptrtoint i8* %6 to i64
  %and.i = and i64 %7, -4503599627370496
  %cmp.i = icmp eq i64 %and.i, -4503599627370496
  %conv.i = zext i1 %cmp.i to i32
  %conv1.i = sext i32 %conv.i to i64
  %8 = load %union.UnionType** %a.addr.i, align 8
  %o2.i = bitcast %union.UnionType* %8 to i8**
  %9 = load i8** %o2.i, align 8
  %10 = ptrtoint i8* %9 to i64
  %and3.i = and i64 %10, 4222124650659840
  %shr.i = lshr i64 %and3.i, 48
  %mul.i = mul i64 %conv1.i, %shr.i
  switch i64 %mul.i, label %Object_addDouble.exit [
    i64 1, label %sw.bb.i
    i64 0, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %entrypoint
  %11 = load %union.UnionType** %a.addr.i, align 8
  %o4.i = bitcast %union.UnionType* %11 to i8**
  %12 = load i8** %o4.i, align 8
  %13 = ptrtoint i8* %12 to i64
  %conv5.i = trunc i64 %13 to i32
  %conv6.i = sitofp i32 %conv5.i to double
  %14 = load double* %b.addr.i, align 8
  %add.i = fadd double %conv6.i, %14
  %d.i = bitcast %union.UnionType* %ret.i to double*
  store double %add.i, double* %d.i, align 8
  br label %Object_addDouble.exit

sw.bb7.i:                                         ; preds = %entrypoint
  %15 = load %union.UnionType** %a.addr.i, align 8
  %d8.i = bitcast %union.UnionType* %15 to double*
  %16 = load double* %d8.i, align 8
  %17 = load double* %b.addr.i, align 8
  %add9.i = fadd double %16, %17
  %d10.i = bitcast %union.UnionType* %ret.i to double*
  store double %add9.i, double* %d10.i, align 8
  br label %Object_addDouble.exit

Object_addDouble.exit:                            ; preds = %entrypoint, %sw.bb.i, %sw.bb7.i
  %18 = bitcast %union.UnionType* %retval.i to i8*
  %19 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i = bitcast %union.UnionType* %retval.i to double*
  %20 = bitcast double* %coerce.dive1.i to i64*
  %21 = load i64* %20, align 1
  %22 = bitcast %union.UnionType* %retval.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %22) #3
  %23 = bitcast %union.UnionType** %a.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %23) #3
  %24 = bitcast double* %b.addr.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %24) #3
  %25 = bitcast %union.UnionType* %ret.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %25) #3
  %union_storage713 = alloca %union.UnionType
  %cast_to_double_ptr7141157 = bitcast %union.UnionType* %union_storage713 to double*
  %cast_to_int_ptr715 = bitcast double* %cast_to_double_ptr7141157 to i64*
  store i64 %21, i64* %cast_to_int_ptr715
  %get_idx7161158 = bitcast %union.UnionType** %args702 to %union.UnionType**
  store %union.UnionType* %union_storage713, %union.UnionType** %get_idx7161158
  %array717 = alloca %ArrayObject
  %array_type7181159 = bitcast %ArrayObject* %array717 to i32*
  %array_list719 = getelementptr inbounds %ArrayObject* %array717, i32 0, i32 1
  %array_size720 = getelementptr inbounds %ArrayObject* %array717, i32 0, i32 2
  store i32 3, i32* %array_type7181159
  store %union.UnionType** %args702, %union.UnionType*** %array_list719
  store i64 1, i64* %array_size720
  %result721 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array717)
  %union_storage722 = alloca %union.UnionType
  %cast_to_double_ptr7231160 = bitcast %union.UnionType* %union_storage722 to double*
  %cast_to_int_ptr724 = bitcast double* %cast_to_double_ptr7231160 to i64*
  store i64 %result721, i64* %cast_to_int_ptr724
  %args725 = alloca %union.UnionType*
  %bitcast726 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue727 = load i64* %bitcast726
  %xor728 = xor i64 %load_ivalue727, -2533274790395904
  %int_to_ptr729 = inttoptr i64 %xor728 to %Object*
  %object_body730 = getelementptr inbounds %Object* %int_to_ptr729, i32 0, i32 1
  %double_ptr731 = alloca %union.UnionType
  %cast_to_double_ptr732 = bitcast %union.UnionType* %double_ptr731 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr732
  %cast_to_double_ptr733 = bitcast %union.UnionType* %double_ptr731 to double*
  %load_double734 = load double* %cast_to_double_ptr733
  %26 = bitcast %union.UnionType* %retval.i1217 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %26) #3
  %27 = bitcast %union.UnionType** %a.addr.i1218 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %27) #3
  %28 = bitcast double* %b.addr.i1219 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %28) #3
  %29 = bitcast %union.UnionType* %ret.i1220 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %29) #3
  store %union.UnionType* %object_body730, %union.UnionType** %a.addr.i1218, align 8
  store double %load_double734, double* %b.addr.i1219, align 8
  %30 = load %union.UnionType** %a.addr.i1218, align 8
  %o.i1221 = bitcast %union.UnionType* %30 to i8**
  %31 = load i8** %o.i1221, align 8
  %32 = ptrtoint i8* %31 to i64
  %and.i1222 = and i64 %32, -4503599627370496
  %cmp.i1223 = icmp eq i64 %and.i1222, -4503599627370496
  %conv.i1224 = zext i1 %cmp.i1223 to i32
  %conv1.i1225 = sext i32 %conv.i1224 to i64
  %33 = load %union.UnionType** %a.addr.i1218, align 8
  %o2.i1226 = bitcast %union.UnionType* %33 to i8**
  %34 = load i8** %o2.i1226, align 8
  %35 = ptrtoint i8* %34 to i64
  %and3.i1227 = and i64 %35, 4222124650659840
  %shr.i1228 = lshr i64 %and3.i1227, 48
  %mul.i1229 = mul i64 %conv1.i1225, %shr.i1228
  switch i64 %mul.i1229, label %Object_subDouble.exit [
    i64 1, label %sw.bb.i1234
    i64 0, label %sw.bb7.i1237
  ]

sw.bb.i1234:                                      ; preds = %Object_addDouble.exit
  %36 = load %union.UnionType** %a.addr.i1218, align 8
  %o4.i1230 = bitcast %union.UnionType* %36 to i8**
  %37 = load i8** %o4.i1230, align 8
  %38 = ptrtoint i8* %37 to i64
  %conv5.i1231 = trunc i64 %38 to i32
  %conv6.i1232 = sitofp i32 %conv5.i1231 to double
  %39 = load double* %b.addr.i1219, align 8
  %sub.i = fsub double %conv6.i1232, %39
  %d.i1233 = bitcast %union.UnionType* %ret.i1220 to double*
  store double %sub.i, double* %d.i1233, align 8
  br label %Object_subDouble.exit

sw.bb7.i1237:                                     ; preds = %Object_addDouble.exit
  %40 = load %union.UnionType** %a.addr.i1218, align 8
  %d8.i1235 = bitcast %union.UnionType* %40 to double*
  %41 = load double* %d8.i1235, align 8
  %42 = load double* %b.addr.i1219, align 8
  %sub9.i = fsub double %41, %42
  %d10.i1236 = bitcast %union.UnionType* %ret.i1220 to double*
  store double %sub9.i, double* %d10.i1236, align 8
  br label %Object_subDouble.exit

Object_subDouble.exit:                            ; preds = %Object_addDouble.exit, %sw.bb.i1234, %sw.bb7.i1237
  %43 = bitcast %union.UnionType* %retval.i1217 to i8*
  %44 = bitcast %union.UnionType* %ret.i1220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i1238 = bitcast %union.UnionType* %retval.i1217 to double*
  %45 = bitcast double* %coerce.dive1.i1238 to i64*
  %46 = load i64* %45, align 1
  %47 = bitcast %union.UnionType* %retval.i1217 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %47) #3
  %48 = bitcast %union.UnionType** %a.addr.i1218 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %48) #3
  %49 = bitcast double* %b.addr.i1219 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %49) #3
  %50 = bitcast %union.UnionType* %ret.i1220 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %50) #3
  %union_storage736 = alloca %union.UnionType
  %cast_to_double_ptr7371161 = bitcast %union.UnionType* %union_storage736 to double*
  %cast_to_int_ptr738 = bitcast double* %cast_to_double_ptr7371161 to i64*
  store i64 %46, i64* %cast_to_int_ptr738
  %get_idx7391162 = bitcast %union.UnionType** %args725 to %union.UnionType**
  store %union.UnionType* %union_storage736, %union.UnionType** %get_idx7391162
  %array740 = alloca %ArrayObject
  %array_type7411163 = bitcast %ArrayObject* %array740 to i32*
  %array_list742 = getelementptr inbounds %ArrayObject* %array740, i32 0, i32 1
  %array_size743 = getelementptr inbounds %ArrayObject* %array740, i32 0, i32 2
  store i32 3, i32* %array_type7411163
  store %union.UnionType** %args725, %union.UnionType*** %array_list742
  store i64 1, i64* %array_size743
  %result744 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array740)
  %union_storage745 = alloca %union.UnionType
  %cast_to_double_ptr7461164 = bitcast %union.UnionType* %union_storage745 to double*
  %cast_to_int_ptr747 = bitcast double* %cast_to_double_ptr7461164 to i64*
  store i64 %result744, i64* %cast_to_int_ptr747
  %args748 = alloca %union.UnionType*
  %bitcast749 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue750 = load i64* %bitcast749
  %xor751 = xor i64 %load_ivalue750, -2533274790395904
  %int_to_ptr752 = inttoptr i64 %xor751 to %Object*
  %object_body753 = getelementptr inbounds %Object* %int_to_ptr752, i32 0, i32 1
  %double_ptr754 = alloca %union.UnionType
  %cast_to_double_ptr755 = bitcast %union.UnionType* %double_ptr754 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr755
  %cast_to_double_ptr756 = bitcast %union.UnionType* %double_ptr754 to double*
  %load_double757 = load double* %cast_to_double_ptr756
  %51 = bitcast %union.UnionType* %retval.i1239 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %51) #3
  %52 = bitcast %union.UnionType** %a.addr.i1240 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %52) #3
  %53 = bitcast double* %b.addr.i1241 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %53) #3
  %54 = bitcast %union.UnionType* %ret.i1242 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %54) #3
  store %union.UnionType* %object_body753, %union.UnionType** %a.addr.i1240, align 8
  store double %load_double757, double* %b.addr.i1241, align 8
  %55 = load %union.UnionType** %a.addr.i1240, align 8
  %o.i1243 = bitcast %union.UnionType* %55 to i8**
  %56 = load i8** %o.i1243, align 8
  %57 = ptrtoint i8* %56 to i64
  %and.i1244 = and i64 %57, -4503599627370496
  %cmp.i1245 = icmp eq i64 %and.i1244, -4503599627370496
  %conv.i1246 = zext i1 %cmp.i1245 to i32
  %conv1.i1247 = sext i32 %conv.i1246 to i64
  %58 = load %union.UnionType** %a.addr.i1240, align 8
  %o2.i1248 = bitcast %union.UnionType* %58 to i8**
  %59 = load i8** %o2.i1248, align 8
  %60 = ptrtoint i8* %59 to i64
  %and3.i1249 = and i64 %60, 4222124650659840
  %shr.i1250 = lshr i64 %and3.i1249, 48
  %mul.i1251 = mul i64 %conv1.i1247, %shr.i1250
  switch i64 %mul.i1251, label %Object_mulDouble.exit [
    i64 1, label %sw.bb.i1256
    i64 0, label %sw.bb8.i
  ]

sw.bb.i1256:                                      ; preds = %Object_subDouble.exit
  %61 = load %union.UnionType** %a.addr.i1240, align 8
  %o4.i1252 = bitcast %union.UnionType* %61 to i8**
  %62 = load i8** %o4.i1252, align 8
  %63 = ptrtoint i8* %62 to i64
  %conv5.i1253 = trunc i64 %63 to i32
  %conv6.i1254 = sitofp i32 %conv5.i1253 to double
  %64 = load double* %b.addr.i1241, align 8
  %mul7.i = fmul double %conv6.i1254, %64
  %d.i1255 = bitcast %union.UnionType* %ret.i1242 to double*
  store double %mul7.i, double* %d.i1255, align 8
  br label %Object_mulDouble.exit

sw.bb8.i:                                         ; preds = %Object_subDouble.exit
  %65 = load %union.UnionType** %a.addr.i1240, align 8
  %d9.i = bitcast %union.UnionType* %65 to double*
  %66 = load double* %d9.i, align 8
  %67 = load double* %b.addr.i1241, align 8
  %mul10.i = fmul double %66, %67
  %d11.i = bitcast %union.UnionType* %ret.i1242 to double*
  store double %mul10.i, double* %d11.i, align 8
  br label %Object_mulDouble.exit

Object_mulDouble.exit:                            ; preds = %Object_subDouble.exit, %sw.bb.i1256, %sw.bb8.i
  %68 = bitcast %union.UnionType* %retval.i1239 to i8*
  %69 = bitcast %union.UnionType* %ret.i1242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i1257 = bitcast %union.UnionType* %retval.i1239 to double*
  %70 = bitcast double* %coerce.dive1.i1257 to i64*
  %71 = load i64* %70, align 1
  %72 = bitcast %union.UnionType* %retval.i1239 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %72) #3
  %73 = bitcast %union.UnionType** %a.addr.i1240 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %73) #3
  %74 = bitcast double* %b.addr.i1241 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %74) #3
  %75 = bitcast %union.UnionType* %ret.i1242 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %75) #3
  %union_storage759 = alloca %union.UnionType
  %cast_to_double_ptr7601165 = bitcast %union.UnionType* %union_storage759 to double*
  %cast_to_int_ptr761 = bitcast double* %cast_to_double_ptr7601165 to i64*
  store i64 %71, i64* %cast_to_int_ptr761
  %get_idx7621166 = bitcast %union.UnionType** %args748 to %union.UnionType**
  store %union.UnionType* %union_storage759, %union.UnionType** %get_idx7621166
  %array763 = alloca %ArrayObject
  %array_type7641167 = bitcast %ArrayObject* %array763 to i32*
  %array_list765 = getelementptr inbounds %ArrayObject* %array763, i32 0, i32 1
  %array_size766 = getelementptr inbounds %ArrayObject* %array763, i32 0, i32 2
  store i32 3, i32* %array_type7641167
  store %union.UnionType** %args748, %union.UnionType*** %array_list765
  store i64 1, i64* %array_size766
  %result767 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array763)
  %union_storage768 = alloca %union.UnionType
  %cast_to_double_ptr7691168 = bitcast %union.UnionType* %union_storage768 to double*
  %cast_to_int_ptr770 = bitcast double* %cast_to_double_ptr7691168 to i64*
  store i64 %result767, i64* %cast_to_int_ptr770
  %args771 = alloca %union.UnionType*
  %bitcast772 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue773 = load i64* %bitcast772
  %xor774 = xor i64 %load_ivalue773, -2533274790395904
  %int_to_ptr775 = inttoptr i64 %xor774 to %Object*
  %object_body776 = getelementptr inbounds %Object* %int_to_ptr775, i32 0, i32 1
  %double_ptr777 = alloca %union.UnionType
  %cast_to_double_ptr778 = bitcast %union.UnionType* %double_ptr777 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr778
  %cast_to_double_ptr779 = bitcast %union.UnionType* %double_ptr777 to double*
  %load_double780 = load double* %cast_to_double_ptr779
  %76 = bitcast %union.UnionType* %retval.i1258 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %76) #3
  %77 = bitcast %union.UnionType** %a.addr.i1259 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %77) #3
  %78 = bitcast double* %b.addr.i1260 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %78) #3
  %79 = bitcast %union.UnionType* %ret.i1261 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %79) #3
  store %union.UnionType* %object_body776, %union.UnionType** %a.addr.i1259, align 8
  store double %load_double780, double* %b.addr.i1260, align 8
  %80 = load %union.UnionType** %a.addr.i1259, align 8
  %o.i1262 = bitcast %union.UnionType* %80 to i8**
  %81 = load i8** %o.i1262, align 8
  %82 = ptrtoint i8* %81 to i64
  %and.i1263 = and i64 %82, -4503599627370496
  %cmp.i1264 = icmp eq i64 %and.i1263, -4503599627370496
  %conv.i1265 = zext i1 %cmp.i1264 to i32
  %conv1.i1266 = sext i32 %conv.i1265 to i64
  %83 = load %union.UnionType** %a.addr.i1259, align 8
  %o2.i1267 = bitcast %union.UnionType* %83 to i8**
  %84 = load i8** %o2.i1267, align 8
  %85 = ptrtoint i8* %84 to i64
  %and3.i1268 = and i64 %85, 4222124650659840
  %shr.i1269 = lshr i64 %and3.i1268, 48
  %mul.i1270 = mul i64 %conv1.i1266, %shr.i1269
  switch i64 %mul.i1270, label %Object_divDouble.exit [
    i64 1, label %sw.bb.i1275
    i64 0, label %sw.bb7.i1278
  ]

sw.bb.i1275:                                      ; preds = %Object_mulDouble.exit
  %86 = load %union.UnionType** %a.addr.i1259, align 8
  %o4.i1271 = bitcast %union.UnionType* %86 to i8**
  %87 = load i8** %o4.i1271, align 8
  %88 = ptrtoint i8* %87 to i64
  %conv5.i1272 = trunc i64 %88 to i32
  %conv6.i1273 = sitofp i32 %conv5.i1272 to double
  %89 = load double* %b.addr.i1260, align 8
  %div.i = fdiv double %conv6.i1273, %89
  %d.i1274 = bitcast %union.UnionType* %ret.i1261 to double*
  store double %div.i, double* %d.i1274, align 8
  br label %Object_divDouble.exit

sw.bb7.i1278:                                     ; preds = %Object_mulDouble.exit
  %90 = load %union.UnionType** %a.addr.i1259, align 8
  %d8.i1276 = bitcast %union.UnionType* %90 to double*
  %91 = load double* %d8.i1276, align 8
  %92 = load double* %b.addr.i1260, align 8
  %div9.i = fdiv double %91, %92
  %d10.i1277 = bitcast %union.UnionType* %ret.i1261 to double*
  store double %div9.i, double* %d10.i1277, align 8
  br label %Object_divDouble.exit

Object_divDouble.exit:                            ; preds = %Object_mulDouble.exit, %sw.bb.i1275, %sw.bb7.i1278
  %93 = bitcast %union.UnionType* %retval.i1258 to i8*
  %94 = bitcast %union.UnionType* %ret.i1261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i1279 = bitcast %union.UnionType* %retval.i1258 to double*
  %95 = bitcast double* %coerce.dive1.i1279 to i64*
  %96 = load i64* %95, align 1
  %97 = bitcast %union.UnionType* %retval.i1258 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %97) #3
  %98 = bitcast %union.UnionType** %a.addr.i1259 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %98) #3
  %99 = bitcast double* %b.addr.i1260 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %99) #3
  %100 = bitcast %union.UnionType* %ret.i1261 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %100) #3
  %union_storage782 = alloca %union.UnionType
  %cast_to_double_ptr7831169 = bitcast %union.UnionType* %union_storage782 to double*
  %cast_to_int_ptr784 = bitcast double* %cast_to_double_ptr7831169 to i64*
  store i64 %96, i64* %cast_to_int_ptr784
  %get_idx7851170 = bitcast %union.UnionType** %args771 to %union.UnionType**
  store %union.UnionType* %union_storage782, %union.UnionType** %get_idx7851170
  %array786 = alloca %ArrayObject
  %array_type7871171 = bitcast %ArrayObject* %array786 to i32*
  %array_list788 = getelementptr inbounds %ArrayObject* %array786, i32 0, i32 1
  %array_size789 = getelementptr inbounds %ArrayObject* %array786, i32 0, i32 2
  store i32 3, i32* %array_type7871171
  store %union.UnionType** %args771, %union.UnionType*** %array_list788
  store i64 1, i64* %array_size789
  %result790 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array786)
  %union_storage791 = alloca %union.UnionType
  %cast_to_double_ptr7921172 = bitcast %union.UnionType* %union_storage791 to double*
  %cast_to_int_ptr793 = bitcast double* %cast_to_double_ptr7921172 to i64*
  store i64 %result790, i64* %cast_to_int_ptr793
  %args794 = alloca %union.UnionType*
  %bitcast795 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue796 = load i64* %bitcast795
  %xor797 = xor i64 %load_ivalue796, -2533274790395904
  %int_to_ptr798 = inttoptr i64 %xor797 to %Object*
  %object_body799 = getelementptr inbounds %Object* %int_to_ptr798, i32 0, i32 1
  %double_ptr800 = alloca %union.UnionType
  %cast_to_double_ptr801 = bitcast %union.UnionType* %double_ptr800 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr801
  %cast_to_double_ptr802 = bitcast %union.UnionType* %double_ptr800 to double*
  %load_double803 = load double* %cast_to_double_ptr802
  %object804 = call i64 @Object_eqDouble(%union.UnionType* %object_body799, double %load_double803)
  %union_storage805 = alloca %union.UnionType
  %cast_to_double_ptr8061173 = bitcast %union.UnionType* %union_storage805 to double*
  %cast_to_int_ptr807 = bitcast double* %cast_to_double_ptr8061173 to i64*
  store i64 %object804, i64* %cast_to_int_ptr807
  %get_idx8081174 = bitcast %union.UnionType** %args794 to %union.UnionType**
  store %union.UnionType* %union_storage805, %union.UnionType** %get_idx8081174
  %array809 = alloca %ArrayObject
  %array_type8101175 = bitcast %ArrayObject* %array809 to i32*
  %array_list811 = getelementptr inbounds %ArrayObject* %array809, i32 0, i32 1
  %array_size812 = getelementptr inbounds %ArrayObject* %array809, i32 0, i32 2
  store i32 3, i32* %array_type8101175
  store %union.UnionType** %args794, %union.UnionType*** %array_list811
  store i64 1, i64* %array_size812
  %result813 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array809)
  %union_storage814 = alloca %union.UnionType
  %cast_to_double_ptr8151176 = bitcast %union.UnionType* %union_storage814 to double*
  %cast_to_int_ptr816 = bitcast double* %cast_to_double_ptr8151176 to i64*
  store i64 %result813, i64* %cast_to_int_ptr816
  %args817 = alloca %union.UnionType*
  %bitcast818 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue819 = load i64* %bitcast818
  %xor820 = xor i64 %load_ivalue819, -2533274790395904
  %int_to_ptr821 = inttoptr i64 %xor820 to %Object*
  %object_body822 = getelementptr inbounds %Object* %int_to_ptr821, i32 0, i32 1
  %double_ptr823 = alloca %union.UnionType
  %cast_to_double_ptr824 = bitcast %union.UnionType* %double_ptr823 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr824
  %cast_to_double_ptr825 = bitcast %union.UnionType* %double_ptr823 to double*
  %load_double826 = load double* %cast_to_double_ptr825
  %object827 = call i64 @Object_neDouble(%union.UnionType* %object_body822, double %load_double826)
  %union_storage828 = alloca %union.UnionType
  %cast_to_double_ptr8291177 = bitcast %union.UnionType* %union_storage828 to double*
  %cast_to_int_ptr830 = bitcast double* %cast_to_double_ptr8291177 to i64*
  store i64 %object827, i64* %cast_to_int_ptr830
  %get_idx8311178 = bitcast %union.UnionType** %args817 to %union.UnionType**
  store %union.UnionType* %union_storage828, %union.UnionType** %get_idx8311178
  %array832 = alloca %ArrayObject
  %array_type8331179 = bitcast %ArrayObject* %array832 to i32*
  %array_list834 = getelementptr inbounds %ArrayObject* %array832, i32 0, i32 1
  %array_size835 = getelementptr inbounds %ArrayObject* %array832, i32 0, i32 2
  store i32 3, i32* %array_type8331179
  store %union.UnionType** %args817, %union.UnionType*** %array_list834
  store i64 1, i64* %array_size835
  %result836 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array832)
  %union_storage837 = alloca %union.UnionType
  %cast_to_double_ptr8381180 = bitcast %union.UnionType* %union_storage837 to double*
  %cast_to_int_ptr839 = bitcast double* %cast_to_double_ptr8381180 to i64*
  store i64 %result836, i64* %cast_to_int_ptr839
  %args840 = alloca %union.UnionType*
  %double_ptr841 = alloca %union.UnionType
  %cast_to_double_ptr842 = bitcast %union.UnionType* %double_ptr841 to double*
  store double 2.100000e+00, double* %cast_to_double_ptr842
  %bitcast843 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue844 = load i64* %bitcast843
  %xor845 = xor i64 %load_ivalue844, -2533274790395904
  %int_to_ptr846 = inttoptr i64 %xor845 to %Object*
  %object_body847 = getelementptr inbounds %Object* %int_to_ptr846, i32 0, i32 1
  %cast_to_double_ptr848 = bitcast %union.UnionType* %double_ptr841 to double*
  %load_double849 = load double* %cast_to_double_ptr848
  %101 = bitcast %union.UnionType* %retval.i1280 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %101) #3
  %102 = bitcast double* %a.addr.i1281 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %102) #3
  %103 = bitcast %union.UnionType** %b.addr.i1282 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %103) #3
  %104 = bitcast %union.UnionType* %ret.i1283 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %104) #3
  store double %load_double849, double* %a.addr.i1281, align 8
  store %union.UnionType* %object_body847, %union.UnionType** %b.addr.i1282, align 8
  %105 = load %union.UnionType** %b.addr.i1282, align 8
  %o.i1284 = bitcast %union.UnionType* %105 to i8**
  %106 = load i8** %o.i1284, align 8
  %107 = ptrtoint i8* %106 to i64
  %and.i1285 = and i64 %107, -4503599627370496
  %cmp.i1286 = icmp eq i64 %and.i1285, -4503599627370496
  %conv.i1287 = zext i1 %cmp.i1286 to i32
  %conv1.i1288 = sext i32 %conv.i1287 to i64
  %108 = load %union.UnionType** %b.addr.i1282, align 8
  %o2.i1289 = bitcast %union.UnionType* %108 to i8**
  %109 = load i8** %o2.i1289, align 8
  %110 = ptrtoint i8* %109 to i64
  %and3.i1290 = and i64 %110, 4222124650659840
  %shr.i1291 = lshr i64 %and3.i1290, 48
  %mul.i1292 = mul i64 %conv1.i1288, %shr.i1291
  switch i64 %mul.i1292, label %Object_addDouble2.exit [
    i64 1, label %sw.bb.i1297
    i64 0, label %sw.bb6.i
  ]

sw.bb.i1297:                                      ; preds = %Object_divDouble.exit
  %111 = load double* %a.addr.i1281, align 8
  %112 = load %union.UnionType** %b.addr.i1282, align 8
  %o4.i1293 = bitcast %union.UnionType* %112 to i8**
  %113 = load i8** %o4.i1293, align 8
  %114 = ptrtoint i8* %113 to i64
  %conv5.i1294 = sitofp i64 %114 to double
  %add.i1295 = fadd double %111, %conv5.i1294
  %d.i1296 = bitcast %union.UnionType* %ret.i1283 to double*
  store double %add.i1295, double* %d.i1296, align 8
  br label %Object_addDouble2.exit

sw.bb6.i:                                         ; preds = %Object_divDouble.exit
  %115 = load double* %a.addr.i1281, align 8
  %116 = load %union.UnionType** %b.addr.i1282, align 8
  %d7.i = bitcast %union.UnionType* %116 to double*
  %117 = load double* %d7.i, align 8
  %add8.i = fadd double %115, %117
  %d9.i1298 = bitcast %union.UnionType* %ret.i1283 to double*
  store double %add8.i, double* %d9.i1298, align 8
  br label %Object_addDouble2.exit

Object_addDouble2.exit:                           ; preds = %Object_divDouble.exit, %sw.bb.i1297, %sw.bb6.i
  %118 = bitcast %union.UnionType* %retval.i1280 to i8*
  %119 = bitcast %union.UnionType* %ret.i1283 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i1299 = bitcast %union.UnionType* %retval.i1280 to double*
  %120 = bitcast double* %coerce.dive1.i1299 to i64*
  %121 = load i64* %120, align 1
  %122 = bitcast %union.UnionType* %retval.i1280 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %122) #3
  %123 = bitcast double* %a.addr.i1281 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %123) #3
  %124 = bitcast %union.UnionType** %b.addr.i1282 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %124) #3
  %125 = bitcast %union.UnionType* %ret.i1283 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %125) #3
  %union_storage851 = alloca %union.UnionType
  %cast_to_double_ptr8521181 = bitcast %union.UnionType* %union_storage851 to double*
  %cast_to_int_ptr853 = bitcast double* %cast_to_double_ptr8521181 to i64*
  store i64 %121, i64* %cast_to_int_ptr853
  %get_idx8541182 = bitcast %union.UnionType** %args840 to %union.UnionType**
  store %union.UnionType* %union_storage851, %union.UnionType** %get_idx8541182
  %array855 = alloca %ArrayObject
  %array_type8561183 = bitcast %ArrayObject* %array855 to i32*
  %array_list857 = getelementptr inbounds %ArrayObject* %array855, i32 0, i32 1
  %array_size858 = getelementptr inbounds %ArrayObject* %array855, i32 0, i32 2
  store i32 3, i32* %array_type8561183
  store %union.UnionType** %args840, %union.UnionType*** %array_list857
  store i64 1, i64* %array_size858
  %result859 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array855)
  %union_storage860 = alloca %union.UnionType
  %cast_to_double_ptr8611184 = bitcast %union.UnionType* %union_storage860 to double*
  %cast_to_int_ptr862 = bitcast double* %cast_to_double_ptr8611184 to i64*
  store i64 %result859, i64* %cast_to_int_ptr862
  %args863 = alloca %union.UnionType*
  %double_ptr864 = alloca %union.UnionType
  %cast_to_double_ptr865 = bitcast %union.UnionType* %double_ptr864 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr865
  %bitcast866 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue867 = load i64* %bitcast866
  %xor868 = xor i64 %load_ivalue867, -2533274790395904
  %int_to_ptr869 = inttoptr i64 %xor868 to %Object*
  %object_body870 = getelementptr inbounds %Object* %int_to_ptr869, i32 0, i32 1
  %cast_to_double_ptr871 = bitcast %union.UnionType* %double_ptr864 to double*
  %load_double872 = load double* %cast_to_double_ptr871
  %126 = bitcast %union.UnionType* %retval.i1300 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %126) #3
  %127 = bitcast double* %a.addr.i1301 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %127) #3
  %128 = bitcast %union.UnionType** %b.addr.i1302 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %128) #3
  %129 = bitcast %union.UnionType* %ret.i1303 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %129) #3
  store double %load_double872, double* %a.addr.i1301, align 8
  store %union.UnionType* %object_body870, %union.UnionType** %b.addr.i1302, align 8
  %130 = load %union.UnionType** %b.addr.i1302, align 8
  %o.i1304 = bitcast %union.UnionType* %130 to i8**
  %131 = load i8** %o.i1304, align 8
  %132 = ptrtoint i8* %131 to i64
  %and.i1305 = and i64 %132, -4503599627370496
  %cmp.i1306 = icmp eq i64 %and.i1305, -4503599627370496
  %conv.i1307 = zext i1 %cmp.i1306 to i32
  %conv1.i1308 = sext i32 %conv.i1307 to i64
  %133 = load %union.UnionType** %b.addr.i1302, align 8
  %o2.i1309 = bitcast %union.UnionType* %133 to i8**
  %134 = load i8** %o2.i1309, align 8
  %135 = ptrtoint i8* %134 to i64
  %and3.i1310 = and i64 %135, 4222124650659840
  %shr.i1311 = lshr i64 %and3.i1310, 48
  %mul.i1312 = mul i64 %conv1.i1308, %shr.i1311
  switch i64 %mul.i1312, label %Object_subDouble2.exit [
    i64 1, label %sw.bb.i1317
    i64 0, label %sw.bb6.i1321
  ]

sw.bb.i1317:                                      ; preds = %Object_addDouble2.exit
  %136 = load double* %a.addr.i1301, align 8
  %137 = load %union.UnionType** %b.addr.i1302, align 8
  %o4.i1313 = bitcast %union.UnionType* %137 to i8**
  %138 = load i8** %o4.i1313, align 8
  %139 = ptrtoint i8* %138 to i64
  %conv5.i1314 = sitofp i64 %139 to double
  %add.i1315 = fadd double %136, %conv5.i1314
  %d.i1316 = bitcast %union.UnionType* %ret.i1303 to double*
  store double %add.i1315, double* %d.i1316, align 8
  br label %Object_subDouble2.exit

sw.bb6.i1321:                                     ; preds = %Object_addDouble2.exit
  %140 = load double* %a.addr.i1301, align 8
  %141 = load %union.UnionType** %b.addr.i1302, align 8
  %d7.i1318 = bitcast %union.UnionType* %141 to double*
  %142 = load double* %d7.i1318, align 8
  %add8.i1319 = fadd double %140, %142
  %d9.i1320 = bitcast %union.UnionType* %ret.i1303 to double*
  store double %add8.i1319, double* %d9.i1320, align 8
  br label %Object_subDouble2.exit

Object_subDouble2.exit:                           ; preds = %Object_addDouble2.exit, %sw.bb.i1317, %sw.bb6.i1321
  %143 = bitcast %union.UnionType* %retval.i1300 to i8*
  %144 = bitcast %union.UnionType* %ret.i1303 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i1322 = bitcast %union.UnionType* %retval.i1300 to double*
  %145 = bitcast double* %coerce.dive1.i1322 to i64*
  %146 = load i64* %145, align 1
  %147 = bitcast %union.UnionType* %retval.i1300 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %147) #3
  %148 = bitcast double* %a.addr.i1301 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %148) #3
  %149 = bitcast %union.UnionType** %b.addr.i1302 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %149) #3
  %150 = bitcast %union.UnionType* %ret.i1303 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %150) #3
  %union_storage874 = alloca %union.UnionType
  %cast_to_double_ptr8751185 = bitcast %union.UnionType* %union_storage874 to double*
  %cast_to_int_ptr876 = bitcast double* %cast_to_double_ptr8751185 to i64*
  store i64 %146, i64* %cast_to_int_ptr876
  %get_idx8771186 = bitcast %union.UnionType** %args863 to %union.UnionType**
  store %union.UnionType* %union_storage874, %union.UnionType** %get_idx8771186
  %array878 = alloca %ArrayObject
  %array_type8791187 = bitcast %ArrayObject* %array878 to i32*
  %array_list880 = getelementptr inbounds %ArrayObject* %array878, i32 0, i32 1
  %array_size881 = getelementptr inbounds %ArrayObject* %array878, i32 0, i32 2
  store i32 3, i32* %array_type8791187
  store %union.UnionType** %args863, %union.UnionType*** %array_list880
  store i64 1, i64* %array_size881
  %result882 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array878)
  %union_storage883 = alloca %union.UnionType
  %cast_to_double_ptr8841188 = bitcast %union.UnionType* %union_storage883 to double*
  %cast_to_int_ptr885 = bitcast double* %cast_to_double_ptr8841188 to i64*
  store i64 %result882, i64* %cast_to_int_ptr885
  %args886 = alloca %union.UnionType*
  %double_ptr887 = alloca %union.UnionType
  %cast_to_double_ptr888 = bitcast %union.UnionType* %double_ptr887 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr888
  %bitcast889 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue890 = load i64* %bitcast889
  %xor891 = xor i64 %load_ivalue890, -2533274790395904
  %int_to_ptr892 = inttoptr i64 %xor891 to %Object*
  %object_body893 = getelementptr inbounds %Object* %int_to_ptr892, i32 0, i32 1
  %cast_to_double_ptr894 = bitcast %union.UnionType* %double_ptr887 to double*
  %load_double895 = load double* %cast_to_double_ptr894
  %151 = bitcast %union.UnionType* %retval.i1323 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %151) #3
  %152 = bitcast double* %a.addr.i1324 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %152) #3
  %153 = bitcast %union.UnionType** %b.addr.i1325 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %153) #3
  %154 = bitcast %union.UnionType* %ret.i1326 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %154) #3
  store double %load_double895, double* %a.addr.i1324, align 8
  store %union.UnionType* %object_body893, %union.UnionType** %b.addr.i1325, align 8
  %155 = load %union.UnionType** %b.addr.i1325, align 8
  %o.i1327 = bitcast %union.UnionType* %155 to i8**
  %156 = load i8** %o.i1327, align 8
  %157 = ptrtoint i8* %156 to i64
  %and.i1328 = and i64 %157, -4503599627370496
  %cmp.i1329 = icmp eq i64 %and.i1328, -4503599627370496
  %conv.i1330 = zext i1 %cmp.i1329 to i32
  %conv1.i1331 = sext i32 %conv.i1330 to i64
  %158 = load %union.UnionType** %b.addr.i1325, align 8
  %o2.i1332 = bitcast %union.UnionType* %158 to i8**
  %159 = load i8** %o2.i1332, align 8
  %160 = ptrtoint i8* %159 to i64
  %and3.i1333 = and i64 %160, 4222124650659840
  %shr.i1334 = lshr i64 %and3.i1333, 48
  %mul.i1335 = mul i64 %conv1.i1331, %shr.i1334
  switch i64 %mul.i1335, label %Object_mulDouble2.exit [
    i64 1, label %sw.bb.i1339
    i64 0, label %sw.bb7.i1342
  ]

sw.bb.i1339:                                      ; preds = %Object_subDouble2.exit
  %161 = load double* %a.addr.i1324, align 8
  %162 = load %union.UnionType** %b.addr.i1325, align 8
  %o4.i1336 = bitcast %union.UnionType* %162 to i8**
  %163 = load i8** %o4.i1336, align 8
  %164 = ptrtoint i8* %163 to i64
  %conv5.i1337 = sitofp i64 %164 to double
  %mul6.i = fmul double %161, %conv5.i1337
  %d.i1338 = bitcast %union.UnionType* %ret.i1326 to double*
  store double %mul6.i, double* %d.i1338, align 8
  br label %Object_mulDouble2.exit

sw.bb7.i1342:                                     ; preds = %Object_subDouble2.exit
  %165 = load double* %a.addr.i1324, align 8
  %166 = load %union.UnionType** %b.addr.i1325, align 8
  %d8.i1340 = bitcast %union.UnionType* %166 to double*
  %167 = load double* %d8.i1340, align 8
  %mul9.i = fmul double %165, %167
  %d10.i1341 = bitcast %union.UnionType* %ret.i1326 to double*
  store double %mul9.i, double* %d10.i1341, align 8
  br label %Object_mulDouble2.exit

Object_mulDouble2.exit:                           ; preds = %Object_subDouble2.exit, %sw.bb.i1339, %sw.bb7.i1342
  %168 = bitcast %union.UnionType* %retval.i1323 to i8*
  %169 = bitcast %union.UnionType* %ret.i1326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* %169, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i1343 = bitcast %union.UnionType* %retval.i1323 to double*
  %170 = bitcast double* %coerce.dive1.i1343 to i64*
  %171 = load i64* %170, align 1
  %172 = bitcast %union.UnionType* %retval.i1323 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %172) #3
  %173 = bitcast double* %a.addr.i1324 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %173) #3
  %174 = bitcast %union.UnionType** %b.addr.i1325 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %174) #3
  %175 = bitcast %union.UnionType* %ret.i1326 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %175) #3
  %union_storage897 = alloca %union.UnionType
  %cast_to_double_ptr8981189 = bitcast %union.UnionType* %union_storage897 to double*
  %cast_to_int_ptr899 = bitcast double* %cast_to_double_ptr8981189 to i64*
  store i64 %171, i64* %cast_to_int_ptr899
  %get_idx9001190 = bitcast %union.UnionType** %args886 to %union.UnionType**
  store %union.UnionType* %union_storage897, %union.UnionType** %get_idx9001190
  %array901 = alloca %ArrayObject
  %array_type9021191 = bitcast %ArrayObject* %array901 to i32*
  %array_list903 = getelementptr inbounds %ArrayObject* %array901, i32 0, i32 1
  %array_size904 = getelementptr inbounds %ArrayObject* %array901, i32 0, i32 2
  store i32 3, i32* %array_type9021191
  store %union.UnionType** %args886, %union.UnionType*** %array_list903
  store i64 1, i64* %array_size904
  %result905 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array901)
  %union_storage906 = alloca %union.UnionType
  %cast_to_double_ptr9071192 = bitcast %union.UnionType* %union_storage906 to double*
  %cast_to_int_ptr908 = bitcast double* %cast_to_double_ptr9071192 to i64*
  store i64 %result905, i64* %cast_to_int_ptr908
  %args909 = alloca %union.UnionType*
  %double_ptr910 = alloca %union.UnionType
  %cast_to_double_ptr911 = bitcast %union.UnionType* %double_ptr910 to double*
  store double 1.200000e+00, double* %cast_to_double_ptr911
  %bitcast912 = bitcast %union.UnionType* %base_ptr22 to i64*
  %load_ivalue913 = load i64* %bitcast912
  %xor914 = xor i64 %load_ivalue913, -2533274790395904
  %int_to_ptr915 = inttoptr i64 %xor914 to %Object*
  %object_body916 = getelementptr inbounds %Object* %int_to_ptr915, i32 0, i32 1
  %cast_to_double_ptr917 = bitcast %union.UnionType* %double_ptr910 to double*
  %load_double918 = load double* %cast_to_double_ptr917
  %176 = bitcast %union.UnionType* %retval.i1344 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %176) #3
  %177 = bitcast double* %a.addr.i1345 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %177) #3
  %178 = bitcast %union.UnionType** %b.addr.i1346 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %178) #3
  %179 = bitcast %union.UnionType* %ret.i1347 to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %179) #3
  store double %load_double918, double* %a.addr.i1345, align 8
  store %union.UnionType* %object_body916, %union.UnionType** %b.addr.i1346, align 8
  %180 = load %union.UnionType** %b.addr.i1346, align 8
  %o.i1348 = bitcast %union.UnionType* %180 to i8**
  %181 = load i8** %o.i1348, align 8
  %182 = ptrtoint i8* %181 to i64
  %and.i1349 = and i64 %182, -4503599627370496
  %cmp.i1350 = icmp eq i64 %and.i1349, -4503599627370496
  %conv.i1351 = zext i1 %cmp.i1350 to i32
  %conv1.i1352 = sext i32 %conv.i1351 to i64
  %183 = load %union.UnionType** %b.addr.i1346, align 8
  %o2.i1353 = bitcast %union.UnionType* %183 to i8**
  %184 = load i8** %o2.i1353, align 8
  %185 = ptrtoint i8* %184 to i64
  %and3.i1354 = and i64 %185, 4222124650659840
  %shr.i1355 = lshr i64 %and3.i1354, 48
  %mul.i1356 = mul i64 %conv1.i1352, %shr.i1355
  switch i64 %mul.i1356, label %Object_divDouble2.exit [
    i64 1, label %sw.bb.i1361
    i64 0, label %sw.bb6.i1364
  ]

sw.bb.i1361:                                      ; preds = %Object_mulDouble2.exit
  %186 = load double* %a.addr.i1345, align 8
  %187 = load %union.UnionType** %b.addr.i1346, align 8
  %o4.i1357 = bitcast %union.UnionType* %187 to i8**
  %188 = load i8** %o4.i1357, align 8
  %189 = ptrtoint i8* %188 to i64
  %conv5.i1358 = sitofp i64 %189 to double
  %div.i1359 = fdiv double %186, %conv5.i1358
  %d.i1360 = bitcast %union.UnionType* %ret.i1347 to double*
  store double %div.i1359, double* %d.i1360, align 8
  br label %Object_divDouble2.exit

sw.bb6.i1364:                                     ; preds = %Object_mulDouble2.exit
  %190 = load double* %a.addr.i1345, align 8
  %191 = load %union.UnionType** %b.addr.i1346, align 8
  %d7.i1362 = bitcast %union.UnionType* %191 to double*
  %192 = load double* %d7.i1362, align 8
  %div8.i = fdiv double %190, %192
  %d9.i1363 = bitcast %union.UnionType* %ret.i1347 to double*
  store double %div8.i, double* %d9.i1363, align 8
  br label %Object_divDouble2.exit

Object_divDouble2.exit:                           ; preds = %Object_mulDouble2.exit, %sw.bb.i1361, %sw.bb6.i1364
  %193 = bitcast %union.UnionType* %retval.i1344 to i8*
  %194 = bitcast %union.UnionType* %ret.i1347 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %194, i64 8, i32 8, i1 false) #3
  %coerce.dive1.i1365 = bitcast %union.UnionType* %retval.i1344 to double*
  %195 = bitcast double* %coerce.dive1.i1365 to i64*
  %196 = load i64* %195, align 1
  %197 = bitcast %union.UnionType* %retval.i1344 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %197) #3
  %198 = bitcast double* %a.addr.i1345 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %198) #3
  %199 = bitcast %union.UnionType** %b.addr.i1346 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %199) #3
  %200 = bitcast %union.UnionType* %ret.i1347 to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %200) #3
  %union_storage920 = alloca %union.UnionType
  %cast_to_double_ptr9211193 = bitcast %union.UnionType* %union_storage920 to double*
  %cast_to_int_ptr922 = bitcast double* %cast_to_double_ptr9211193 to i64*
  store i64 %196, i64* %cast_to_int_ptr922
  %get_idx9231194 = bitcast %union.UnionType** %args909 to %union.UnionType**
  store %union.UnionType* %union_storage920, %union.UnionType** %get_idx9231194
  %array924 = alloca %ArrayObject
  %array_type9251195 = bitcast %ArrayObject* %array924 to i32*
  %array_list926 = getelementptr inbounds %ArrayObject* %array924, i32 0, i32 1
  %array_size927 = getelementptr inbounds %ArrayObject* %array924, i32 0, i32 2
  store i32 3, i32* %array_type9251195
  store %union.UnionType** %args909, %union.UnionType*** %array_list926
  store i64 1, i64* %array_size927
  %result928 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array924)
  %union_storage929 = alloca %union.UnionType
  %cast_to_double_ptr9301196 = bitcast %union.UnionType* %union_storage929 to double*
  %cast_to_int_ptr931 = bitcast double* %cast_to_double_ptr9301196 to i64*
  store i64 %result928, i64* %cast_to_int_ptr931
  %args932 = alloca %union.UnionType*
  %double_ptr933 = alloca %union.UnionType
  %cast_to_double_ptr934 = bitcast %union.UnionType* %double_ptr933 to double*
  store double 1.100000e+00, double* %cast_to_double_ptr934
  %bitcast935 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue936 = load i64* %bitcast935
  %xor937 = xor i64 %load_ivalue936, -2533274790395904
  %int_to_ptr938 = inttoptr i64 %xor937 to %Object*
  %object_body939 = getelementptr inbounds %Object* %int_to_ptr938, i32 0, i32 1
  %cast_to_double_ptr940 = bitcast %union.UnionType* %double_ptr933 to double*
  %load_double941 = load double* %cast_to_double_ptr940
  %object942 = call i64 @Object_ltDouble2(double %load_double941, %union.UnionType* %object_body939)
  %union_storage943 = alloca %union.UnionType
  %cast_to_double_ptr9441197 = bitcast %union.UnionType* %union_storage943 to double*
  %cast_to_int_ptr945 = bitcast double* %cast_to_double_ptr9441197 to i64*
  store i64 %object942, i64* %cast_to_int_ptr945
  %get_idx9461198 = bitcast %union.UnionType** %args932 to %union.UnionType**
  store %union.UnionType* %union_storage943, %union.UnionType** %get_idx9461198
  %array947 = alloca %ArrayObject
  %array_type9481199 = bitcast %ArrayObject* %array947 to i32*
  %array_list949 = getelementptr inbounds %ArrayObject* %array947, i32 0, i32 1
  %array_size950 = getelementptr inbounds %ArrayObject* %array947, i32 0, i32 2
  store i32 3, i32* %array_type9481199
  store %union.UnionType** %args932, %union.UnionType*** %array_list949
  store i64 1, i64* %array_size950
  %result951 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array947)
  %union_storage952 = alloca %union.UnionType
  %cast_to_double_ptr9531200 = bitcast %union.UnionType* %union_storage952 to double*
  %cast_to_int_ptr954 = bitcast double* %cast_to_double_ptr9531200 to i64*
  store i64 %result951, i64* %cast_to_int_ptr954
  %args955 = alloca %union.UnionType*
  %double_ptr956 = alloca %union.UnionType
  %cast_to_double_ptr957 = bitcast %union.UnionType* %double_ptr956 to double*
  store double 1.100000e+00, double* %cast_to_double_ptr957
  %bitcast958 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue959 = load i64* %bitcast958
  %xor960 = xor i64 %load_ivalue959, -2533274790395904
  %int_to_ptr961 = inttoptr i64 %xor960 to %Object*
  %object_body962 = getelementptr inbounds %Object* %int_to_ptr961, i32 0, i32 1
  %cast_to_double_ptr963 = bitcast %union.UnionType* %double_ptr956 to double*
  %load_double964 = load double* %cast_to_double_ptr963
  %object965 = call i64 @Object_gtDouble2(double %load_double964, %union.UnionType* %object_body962)
  %union_storage966 = alloca %union.UnionType
  %cast_to_double_ptr9671201 = bitcast %union.UnionType* %union_storage966 to double*
  %cast_to_int_ptr968 = bitcast double* %cast_to_double_ptr9671201 to i64*
  store i64 %object965, i64* %cast_to_int_ptr968
  %get_idx9691202 = bitcast %union.UnionType** %args955 to %union.UnionType**
  store %union.UnionType* %union_storage966, %union.UnionType** %get_idx9691202
  %array970 = alloca %ArrayObject
  %array_type9711203 = bitcast %ArrayObject* %array970 to i32*
  %array_list972 = getelementptr inbounds %ArrayObject* %array970, i32 0, i32 1
  %array_size973 = getelementptr inbounds %ArrayObject* %array970, i32 0, i32 2
  store i32 3, i32* %array_type9711203
  store %union.UnionType** %args955, %union.UnionType*** %array_list972
  store i64 1, i64* %array_size973
  %result974 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array970)
  %union_storage975 = alloca %union.UnionType
  %cast_to_double_ptr9761204 = bitcast %union.UnionType* %union_storage975 to double*
  %cast_to_int_ptr977 = bitcast double* %cast_to_double_ptr9761204 to i64*
  store i64 %result974, i64* %cast_to_int_ptr977
  %args978 = alloca %union.UnionType*
  %double_ptr979 = alloca %union.UnionType
  %cast_to_double_ptr980 = bitcast %union.UnionType* %double_ptr979 to double*
  store double 1.100000e+00, double* %cast_to_double_ptr980
  %bitcast981 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue982 = load i64* %bitcast981
  %xor983 = xor i64 %load_ivalue982, -2533274790395904
  %int_to_ptr984 = inttoptr i64 %xor983 to %Object*
  %object_body985 = getelementptr inbounds %Object* %int_to_ptr984, i32 0, i32 1
  %cast_to_double_ptr986 = bitcast %union.UnionType* %double_ptr979 to double*
  %load_double987 = load double* %cast_to_double_ptr986
  %object988 = call i64 @Object_eqDouble2(double %load_double987, %union.UnionType* %object_body985)
  %union_storage989 = alloca %union.UnionType
  %cast_to_double_ptr9901205 = bitcast %union.UnionType* %union_storage989 to double*
  %cast_to_int_ptr991 = bitcast double* %cast_to_double_ptr9901205 to i64*
  store i64 %object988, i64* %cast_to_int_ptr991
  %get_idx9921206 = bitcast %union.UnionType** %args978 to %union.UnionType**
  store %union.UnionType* %union_storage989, %union.UnionType** %get_idx9921206
  %array993 = alloca %ArrayObject
  %array_type9941207 = bitcast %ArrayObject* %array993 to i32*
  %array_list995 = getelementptr inbounds %ArrayObject* %array993, i32 0, i32 1
  %array_size996 = getelementptr inbounds %ArrayObject* %array993, i32 0, i32 2
  store i32 3, i32* %array_type9941207
  store %union.UnionType** %args978, %union.UnionType*** %array_list995
  store i64 1, i64* %array_size996
  %result997 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array993)
  %union_storage998 = alloca %union.UnionType
  %cast_to_double_ptr9991208 = bitcast %union.UnionType* %union_storage998 to double*
  %cast_to_int_ptr1000 = bitcast double* %cast_to_double_ptr9991208 to i64*
  store i64 %result997, i64* %cast_to_int_ptr1000
  %args1001 = alloca %union.UnionType*
  %double_ptr1002 = alloca %union.UnionType
  %cast_to_double_ptr1003 = bitcast %union.UnionType* %double_ptr1002 to double*
  store double 1.100000e+00, double* %cast_to_double_ptr1003
  %bitcast1004 = bitcast %union.UnionType* %base_ptr5 to i64*
  %load_ivalue1005 = load i64* %bitcast1004
  %xor1006 = xor i64 %load_ivalue1005, -2533274790395904
  %int_to_ptr1007 = inttoptr i64 %xor1006 to %Object*
  %object_body1008 = getelementptr inbounds %Object* %int_to_ptr1007, i32 0, i32 1
  %cast_to_double_ptr1009 = bitcast %union.UnionType* %double_ptr1002 to double*
  %load_double1010 = load double* %cast_to_double_ptr1009
  %object1011 = call i64 @Object_neDouble2(double %load_double1010, %union.UnionType* %object_body1008)
  %union_storage1012 = alloca %union.UnionType
  %cast_to_double_ptr10131209 = bitcast %union.UnionType* %union_storage1012 to double*
  %cast_to_int_ptr1014 = bitcast double* %cast_to_double_ptr10131209 to i64*
  store i64 %object1011, i64* %cast_to_int_ptr1014
  %get_idx10151210 = bitcast %union.UnionType** %args1001 to %union.UnionType**
  store %union.UnionType* %union_storage1012, %union.UnionType** %get_idx10151210
  %array1016 = alloca %ArrayObject
  %array_type10171211 = bitcast %ArrayObject* %array1016 to i32*
  %array_list1018 = getelementptr inbounds %ArrayObject* %array1016, i32 0, i32 1
  %array_size1019 = getelementptr inbounds %ArrayObject* %array1016, i32 0, i32 2
  store i32 3, i32* %array_type10171211
  store %union.UnionType** %args1001, %union.UnionType*** %array_list1018
  store i64 1, i64* %array_size1019
  %result1020 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array1016)
  %union_storage1021 = alloca %union.UnionType
  %cast_to_double_ptr10221212 = bitcast %union.UnionType* %union_storage1021 to double*
  %cast_to_int_ptr1023 = bitcast double* %cast_to_double_ptr10221212 to i64*
  store i64 %result1020, i64* %cast_to_int_ptr1023
  %args1024 = alloca %union.UnionType*
  %bitcast1025 = bitcast %union.UnionType* %base_ptr37 to i64*
  %load_ivalue1026 = load i64* %bitcast1025
  %xor1027 = xor i64 %load_ivalue1026, -2533274790395904
  %int_to_ptr1028 = inttoptr i64 %xor1027 to %Object*
  %object_body1029 = getelementptr inbounds %Object* %int_to_ptr1028, i32 0, i32 1
  %get_idx10301213 = bitcast %union.UnionType** %args1024 to %union.UnionType**
  store %union.UnionType* %object_body1029, %union.UnionType** %get_idx10301213
  %array1031 = alloca %ArrayObject
  %array_type10321214 = bitcast %ArrayObject* %array1031 to i32*
  %array_list1033 = getelementptr inbounds %ArrayObject* %array1031, i32 0, i32 1
  %array_size1034 = getelementptr inbounds %ArrayObject* %array1031, i32 0, i32 2
  store i32 3, i32* %array_type10321214
  store %union.UnionType** %args1024, %union.UnionType*** %array_list1033
  store i64 1, i64* %array_size1034
  %result1035 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array1031)
  %union_storage1036 = alloca %union.UnionType
  %cast_to_double_ptr10371215 = bitcast %union.UnionType* %union_storage1036 to double*
  %cast_to_int_ptr1038 = bitcast double* %cast_to_double_ptr10371215 to i64*
  store i64 %result1035, i64* %cast_to_int_ptr1038
  %bitcast1039 = bitcast %union.UnionType* %base_ptr to i64*
  %load_ivalue1040 = load i64* %bitcast1039
  %xor1041 = xor i64 %load_ivalue1040, -2533274790395904
  %int_to_ptr1042 = inttoptr i64 %xor1041 to %Object*
  %object_body1043 = getelementptr inbounds %Object* %int_to_ptr1042, i32 0, i32 1
  %cast_to_double_ptr10441216 = bitcast %union.UnionType* %object_body1043 to double*
  %cast_to_int_ptr1045 = bitcast double* %cast_to_double_ptr10441216 to i64*
  %cast_to_int = load i64* %cast_to_int_ptr1045
  ret i64 %cast_to_int
}

define fastcc i64 @h(%ArrayObject*) {
entrypoint:
  %ivalue = alloca %union.UnionType
  %union_to_int_ptr = bitcast %union.UnionType* %ivalue to i64*
  store i64 -4222124650659840, i64* %union_to_int_ptr
  %union_to_int_ptr1 = bitcast %union.UnionType* %ivalue to i64*
  %dereference = load i64* %union_to_int_ptr1
  %trunc_int_cast = trunc i64 %dereference to i32
  %i32_to_i64_cast = sext i32 %trunc_int_cast to i64
  %fetch_list = getelementptr inbounds %ArrayObject* %0, i32 0, i32 1
  %load_list = load %union.UnionType*** %fetch_list
  %get_elem = getelementptr %union.UnionType** %load_list, i64 %i32_to_i64_cast
  %load_arg = load %union.UnionType** %get_elem
  %ivalue2 = alloca %union.UnionType
  %union_to_int_ptr3 = bitcast %union.UnionType* %ivalue2 to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr3
  %union_to_int_ptr4 = bitcast %union.UnionType* %ivalue2 to i64*
  %dereference5 = load i64* %union_to_int_ptr4
  %trunc_int_cast6 = trunc i64 %dereference5 to i32
  %i32_to_i64_cast7 = sext i32 %trunc_int_cast6 to i64
  %object = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_addInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %load_arg, i64 %i32_to_i64_cast7)
  %union_storage = alloca %union.UnionType
  %cast_to_double_ptr10 = bitcast %union.UnionType* %union_storage to double*
  %cast_to_int_ptr = bitcast double* %cast_to_double_ptr10 to i64*
  store i64 %object, i64* %cast_to_int_ptr
  %cast_to_double_ptr811 = bitcast %union.UnionType* %union_storage to double*
  %cast_to_int_ptr9 = bitcast double* %cast_to_double_ptr811 to i64*
  %cast_to_int = load i64* %cast_to_int_ptr9
  ret i64 %cast_to_int
}

define fastcc i64 @g(%ArrayObject*) {
entrypoint:
  %ivalue.i = alloca %union.UnionType
  %ivalue2.i = alloca %union.UnionType
  %union_storage.i = alloca %union.UnionType
  %args = alloca %union.UnionType*
  %ivalue = alloca %union.UnionType
  %union_to_int_ptr = bitcast %union.UnionType* %ivalue to i64*
  store i64 -4222124650659840, i64* %union_to_int_ptr
  %union_to_int_ptr1 = bitcast %union.UnionType* %ivalue to i64*
  %dereference = load i64* %union_to_int_ptr1
  %trunc_int_cast = trunc i64 %dereference to i32
  %i32_to_i64_cast = sext i32 %trunc_int_cast to i64
  %fetch_list = getelementptr inbounds %ArrayObject* %0, i32 0, i32 1
  %load_list = load %union.UnionType*** %fetch_list
  %get_elem = getelementptr %union.UnionType** %load_list, i64 %i32_to_i64_cast
  %load_arg = load %union.UnionType** %get_elem
  %ivalue2 = alloca %union.UnionType
  %union_to_int_ptr3 = bitcast %union.UnionType* %ivalue2 to i64*
  store i64 -4222124650659839, i64* %union_to_int_ptr3
  %union_to_int_ptr4 = bitcast %union.UnionType* %ivalue2 to i64*
  %dereference5 = load i64* %union_to_int_ptr4
  %trunc_int_cast6 = trunc i64 %dereference5 to i32
  %i32_to_i64_cast7 = sext i32 %trunc_int_cast6 to i64
  %object = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_addInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %load_arg, i64 %i32_to_i64_cast7)
  %union_storage = alloca %union.UnionType
  %cast_to_double_ptr13 = bitcast %union.UnionType* %union_storage to double*
  %cast_to_int_ptr = bitcast double* %cast_to_double_ptr13 to i64*
  store i64 %object, i64* %cast_to_int_ptr
  %get_idx14 = bitcast %union.UnionType** %args to %union.UnionType**
  store %union.UnionType* %union_storage, %union.UnionType** %get_idx14
  %array = alloca %ArrayObject
  %array_type15 = bitcast %ArrayObject* %array to i32*
  %array_list = getelementptr inbounds %ArrayObject* %array, i32 0, i32 1
  %array_size = getelementptr inbounds %ArrayObject* %array, i32 0, i32 2
  store i32 3, i32* %array_type15
  store %union.UnionType** %args, %union.UnionType*** %array_list
  store i64 1, i64* %array_size
  %1 = bitcast %union.UnionType* %ivalue.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %1)
  %2 = bitcast %union.UnionType* %ivalue2.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %2)
  %3 = bitcast %union.UnionType* %union_storage.i to i8*
  call void @llvm.lifetime.start(i64 -1, i8* %3)
  %union_to_int_ptr.i = bitcast %union.UnionType* %ivalue.i to i64*
  store i64 -4222124650659840, i64* %union_to_int_ptr.i
  %union_to_int_ptr1.i = bitcast %union.UnionType* %ivalue.i to i64*
  %dereference.i = load i64* %union_to_int_ptr1.i
  %trunc_int_cast.i = trunc i64 %dereference.i to i32
  %i32_to_i64_cast.i = sext i32 %trunc_int_cast.i to i64
  %fetch_list.i = getelementptr inbounds %ArrayObject* %array, i32 0, i32 1
  %load_list.i = load %union.UnionType*** %fetch_list.i
  %get_elem.i = getelementptr %union.UnionType** %load_list.i, i64 %i32_to_i64_cast.i
  %load_arg.i = load %union.UnionType** %get_elem.i
  %union_to_int_ptr3.i = bitcast %union.UnionType* %ivalue2.i to i64*
  store i64 -4222124650659838, i64* %union_to_int_ptr3.i
  %union_to_int_ptr4.i = bitcast %union.UnionType* %ivalue2.i to i64*
  %dereference5.i = load i64* %union_to_int_ptr4.i
  %trunc_int_cast6.i = trunc i64 %dereference5.i to i32
  %i32_to_i64_cast7.i = sext i32 %trunc_int_cast6.i to i64
  %object.i = call i64 bitcast (i64 (%union.UnionType*, i32)* @Object_addInt to i64 (%union.UnionType*, i64)*)(%union.UnionType* %load_arg.i, i64 %i32_to_i64_cast7.i)
  %cast_to_double_ptr10.i = bitcast %union.UnionType* %union_storage.i to double*
  %cast_to_int_ptr.i = bitcast double* %cast_to_double_ptr10.i to i64*
  store i64 %object.i, i64* %cast_to_int_ptr.i
  %cast_to_double_ptr811.i = bitcast %union.UnionType* %union_storage.i to double*
  %cast_to_int_ptr9.i = bitcast double* %cast_to_double_ptr811.i to i64*
  %cast_to_int.i = load i64* %cast_to_int_ptr9.i
  %4 = bitcast %union.UnionType* %ivalue.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %4)
  %5 = bitcast %union.UnionType* %ivalue2.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %5)
  %6 = bitcast %union.UnionType* %union_storage.i to i8*
  call void @llvm.lifetime.end(i64 -1, i8* %6)
  %union_storage8 = alloca %union.UnionType
  %cast_to_double_ptr916 = bitcast %union.UnionType* %union_storage8 to double*
  %cast_to_int_ptr10 = bitcast double* %cast_to_double_ptr916 to i64*
  store i64 %cast_to_int.i, i64* %cast_to_int_ptr10
  %cast_to_double_ptr1117 = bitcast %union.UnionType* %union_storage8 to double*
  %cast_to_int_ptr12 = bitcast double* %cast_to_double_ptr1117 to i64*
  %cast_to_int = load i64* %cast_to_int_ptr12
  ret i64 %cast_to_int
}

define fastcc i64 @function_argument_array_sample(%ArrayObject*) {
entrypoint:
  %base_ptr = alloca %union.UnionType
  %union_ptr_to_int = ptrtoint %ArrayObject* %0 to i64
  %or = or i64 %union_ptr_to_int, -4503599627370496
  %or1 = or i64 %or, 844424930131968
  %bitcast = bitcast %union.UnionType* %base_ptr to i64*
  store i64 %or1, i64* %bitcast
  %"$a" = alloca %Object
  %base_ptr2 = alloca %union.UnionType
  %union_ptr_to_int3 = ptrtoint %Object* %"$a" to i64
  %or4 = or i64 %union_ptr_to_int3, -4503599627370496
  %or5 = or i64 %or4, 1970324836974592
  %bitcast6 = bitcast %union.UnionType* %base_ptr2 to i64*
  store i64 %or5, i64* %bitcast6
  %"$b" = alloca %Object
  %base_ptr7 = alloca %union.UnionType
  %union_ptr_to_int8 = ptrtoint %Object* %"$b" to i64
  %or9 = or i64 %union_ptr_to_int8, -4503599627370496
  %or10 = or i64 %or9, 1970324836974592
  %bitcast11 = bitcast %union.UnionType* %base_ptr7 to i64*
  store i64 %or10, i64* %bitcast11
  %"$c" = alloca %Object
  %base_ptr12 = alloca %union.UnionType
  %union_ptr_to_int13 = ptrtoint %Object* %"$c" to i64
  %or14 = or i64 %union_ptr_to_int13, -4503599627370496
  %or15 = or i64 %or14, 1970324836974592
  %bitcast16 = bitcast %union.UnionType* %base_ptr12 to i64*
  store i64 %or15, i64* %bitcast16
  %bitcast17 = bitcast %union.UnionType* %base_ptr to i64*
  %load_ivalue = load i64* %bitcast17
  %xor = xor i64 %load_ivalue, -3659174697238528
  %int_to_ptr = inttoptr i64 %xor to %ArrayObject*
  %Array_get = call %union.UnionType* bitcast (%union.UnionType* (%struct._Array*, i32)* @Array_get to %union.UnionType* (%ArrayObject*, i64)*)(%ArrayObject* %int_to_ptr, i64 0)
  %body = getelementptr inbounds %Object* %"$a", i32 0, i32 1
  %elem = load %union.UnionType* %Array_get
  store %union.UnionType %elem, %union.UnionType* %body
  %Array_get18 = call %union.UnionType* bitcast (%union.UnionType* (%struct._Array*, i32)* @Array_get to %union.UnionType* (%ArrayObject*, i64)*)(%ArrayObject* %int_to_ptr, i64 1)
  %body19 = getelementptr inbounds %Object* %"$b", i32 0, i32 1
  %elem20 = load %union.UnionType* %Array_get18
  store %union.UnionType %elem20, %union.UnionType* %body19
  %Array_get21 = call %union.UnionType* bitcast (%union.UnionType* (%struct._Array*, i32)* @Array_get to %union.UnionType* (%ArrayObject*, i64)*)(%ArrayObject* %int_to_ptr, i64 2)
  %body22 = getelementptr inbounds %Object* %"$c", i32 0, i32 1
  %elem23 = load %union.UnionType* %Array_get21
  store %union.UnionType %elem23, %union.UnionType* %body22
  %args = alloca %union.UnionType*
  %bitcast24 = bitcast %union.UnionType* %base_ptr2 to i64*
  %load_ivalue25 = load i64* %bitcast24
  %xor26 = xor i64 %load_ivalue25, -2533274790395904
  %int_to_ptr27 = inttoptr i64 %xor26 to %Object*
  %object_body = getelementptr inbounds %Object* %int_to_ptr27, i32 0, i32 1
  %get_idx75 = bitcast %union.UnionType** %args to %union.UnionType**
  store %union.UnionType* %object_body, %union.UnionType** %get_idx75
  %array = alloca %ArrayObject
  %array_type76 = bitcast %ArrayObject* %array to i32*
  %array_list = getelementptr inbounds %ArrayObject* %array, i32 0, i32 1
  %array_size = getelementptr inbounds %ArrayObject* %array, i32 0, i32 2
  store i32 3, i32* %array_type76
  store %union.UnionType** %args, %union.UnionType*** %array_list
  store i64 1, i64* %array_size
  %result = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array)
  %union_storage = alloca %union.UnionType
  %cast_to_double_ptr77 = bitcast %union.UnionType* %union_storage to double*
  %cast_to_int_ptr = bitcast double* %cast_to_double_ptr77 to i64*
  store i64 %result, i64* %cast_to_int_ptr
  %args28 = alloca %union.UnionType*
  %bitcast29 = bitcast %union.UnionType* %base_ptr7 to i64*
  %load_ivalue30 = load i64* %bitcast29
  %xor31 = xor i64 %load_ivalue30, -2533274790395904
  %int_to_ptr32 = inttoptr i64 %xor31 to %Object*
  %object_body33 = getelementptr inbounds %Object* %int_to_ptr32, i32 0, i32 1
  %get_idx3478 = bitcast %union.UnionType** %args28 to %union.UnionType**
  store %union.UnionType* %object_body33, %union.UnionType** %get_idx3478
  %array35 = alloca %ArrayObject
  %array_type3679 = bitcast %ArrayObject* %array35 to i32*
  %array_list37 = getelementptr inbounds %ArrayObject* %array35, i32 0, i32 1
  %array_size38 = getelementptr inbounds %ArrayObject* %array35, i32 0, i32 2
  store i32 3, i32* %array_type3679
  store %union.UnionType** %args28, %union.UnionType*** %array_list37
  store i64 1, i64* %array_size38
  %result39 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array35)
  %union_storage40 = alloca %union.UnionType
  %cast_to_double_ptr4180 = bitcast %union.UnionType* %union_storage40 to double*
  %cast_to_int_ptr42 = bitcast double* %cast_to_double_ptr4180 to i64*
  store i64 %result39, i64* %cast_to_int_ptr42
  %args43 = alloca %union.UnionType*
  %bitcast44 = bitcast %union.UnionType* %base_ptr12 to i64*
  %load_ivalue45 = load i64* %bitcast44
  %xor46 = xor i64 %load_ivalue45, -2533274790395904
  %int_to_ptr47 = inttoptr i64 %xor46 to %Object*
  %object_body48 = getelementptr inbounds %Object* %int_to_ptr47, i32 0, i32 1
  %get_idx4981 = bitcast %union.UnionType** %args43 to %union.UnionType**
  store %union.UnionType* %object_body48, %union.UnionType** %get_idx4981
  %array50 = alloca %ArrayObject
  %array_type5182 = bitcast %ArrayObject* %array50 to i32*
  %array_list52 = getelementptr inbounds %ArrayObject* %array50, i32 0, i32 1
  %array_size53 = getelementptr inbounds %ArrayObject* %array50, i32 0, i32 2
  store i32 3, i32* %array_type5182
  store %union.UnionType** %args43, %union.UnionType*** %array_list52
  store i64 1, i64* %array_size53
  %result54 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array50)
  %union_storage55 = alloca %union.UnionType
  %cast_to_double_ptr5683 = bitcast %union.UnionType* %union_storage55 to double*
  %cast_to_int_ptr57 = bitcast double* %cast_to_double_ptr5683 to i64*
  store i64 %result54, i64* %cast_to_int_ptr57
  %args58 = alloca %union.UnionType*
  %base_ptr59 = alloca %union.UnionType
  %union_ptr_to_int60 = ptrtoint %ArrayObject* %0 to i64
  %or61 = or i64 %union_ptr_to_int60, -4503599627370496
  %or62 = or i64 %or61, 844424930131968
  %bitcast63 = bitcast %union.UnionType* %base_ptr59 to i64*
  store i64 %or62, i64* %bitcast63
  %get_idx6484 = bitcast %union.UnionType** %args58 to %union.UnionType**
  store %union.UnionType* %base_ptr59, %union.UnionType** %get_idx6484
  %array65 = alloca %ArrayObject
  %array_type6685 = bitcast %ArrayObject* %array65 to i32*
  %array_list67 = getelementptr inbounds %ArrayObject* %array65, i32 0, i32 1
  %array_size68 = getelementptr inbounds %ArrayObject* %array65, i32 0, i32 2
  store i32 3, i32* %array_type6685
  store %union.UnionType** %args58, %union.UnionType*** %array_list67
  store i64 1, i64* %array_size68
  %result69 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array65)
  %union_storage70 = alloca %union.UnionType
  %cast_to_double_ptr7186 = bitcast %union.UnionType* %union_storage70 to double*
  %cast_to_int_ptr72 = bitcast double* %cast_to_double_ptr7186 to i64*
  store i64 %result69, i64* %cast_to_int_ptr72
  %cast_to_double_ptr7387 = bitcast %union.UnionType* %union_storage70 to double*
  %cast_to_int_ptr74 = bitcast double* %cast_to_double_ptr7387 to i64*
  %cast_to_int = load i64* %cast_to_int_ptr74
  ret i64 %cast_to_int
}

define fastcc i64 @function_argument_shift_sample(%ArrayObject*) {
entrypoint:
  %base_ptr = alloca %union.UnionType
  %union_ptr_to_int = ptrtoint %ArrayObject* %0 to i64
  %or = or i64 %union_ptr_to_int, -4503599627370496
  %or1 = or i64 %or, 844424930131968
  %bitcast = bitcast %union.UnionType* %base_ptr to i64*
  store i64 %or1, i64* %bitcast
  %args = alloca %union.UnionType*
  %get_idx73 = bitcast %union.UnionType** %args to %union.UnionType**
  store %union.UnionType* %base_ptr, %union.UnionType** %get_idx73
  %array = alloca %ArrayObject
  %array_type74 = bitcast %ArrayObject* %array to i32*
  %array_list = getelementptr inbounds %ArrayObject* %array, i32 0, i32 1
  %array_size = getelementptr inbounds %ArrayObject* %array, i32 0, i32 2
  store i32 3, i32* %array_type74
  store %union.UnionType** %args, %union.UnionType*** %array_list
  store i64 1, i64* %array_size
  %result = call i64 bitcast (i64 (%struct._Array*)* @shift to i64 (%ArrayObject*)*)(%ArrayObject* %array)
  %union_storage = alloca %union.UnionType
  %cast_to_double_ptr75 = bitcast %union.UnionType* %union_storage to double*
  %cast_to_int_ptr = bitcast double* %cast_to_double_ptr75 to i64*
  store i64 %result, i64* %cast_to_int_ptr
  %"$a" = alloca %Object
  %object_body = getelementptr inbounds %Object* %"$a", i32 0, i32 1
  %load_value = load %union.UnionType* %union_storage
  store %union.UnionType %load_value, %union.UnionType* %object_body
  %base_ptr2 = alloca %union.UnionType
  %union_ptr_to_int3 = ptrtoint %Object* %"$a" to i64
  %or4 = or i64 %union_ptr_to_int3, -4503599627370496
  %or5 = or i64 %or4, 1970324836974592
  %bitcast6 = bitcast %union.UnionType* %base_ptr2 to i64*
  store i64 %or5, i64* %bitcast6
  %base_ptr7 = alloca %union.UnionType
  %union_ptr_to_int8 = ptrtoint %ArrayObject* %0 to i64
  %or9 = or i64 %union_ptr_to_int8, -4503599627370496
  %or10 = or i64 %or9, 844424930131968
  %bitcast11 = bitcast %union.UnionType* %base_ptr7 to i64*
  store i64 %or10, i64* %bitcast11
  %args12 = alloca %union.UnionType*
  %get_idx1376 = bitcast %union.UnionType** %args12 to %union.UnionType**
  store %union.UnionType* %base_ptr7, %union.UnionType** %get_idx1376
  %array14 = alloca %ArrayObject
  %array_type1577 = bitcast %ArrayObject* %array14 to i32*
  %array_list16 = getelementptr inbounds %ArrayObject* %array14, i32 0, i32 1
  %array_size17 = getelementptr inbounds %ArrayObject* %array14, i32 0, i32 2
  store i32 3, i32* %array_type1577
  store %union.UnionType** %args12, %union.UnionType*** %array_list16
  store i64 1, i64* %array_size17
  %result18 = call i64 bitcast (i64 (%struct._Array*)* @shift to i64 (%ArrayObject*)*)(%ArrayObject* %array14)
  %union_storage19 = alloca %union.UnionType
  %cast_to_double_ptr2078 = bitcast %union.UnionType* %union_storage19 to double*
  %cast_to_int_ptr21 = bitcast double* %cast_to_double_ptr2078 to i64*
  store i64 %result18, i64* %cast_to_int_ptr21
  %"$b" = alloca %Object
  %object_body22 = getelementptr inbounds %Object* %"$b", i32 0, i32 1
  %load_value23 = load %union.UnionType* %union_storage19
  store %union.UnionType %load_value23, %union.UnionType* %object_body22
  %base_ptr24 = alloca %union.UnionType
  %union_ptr_to_int25 = ptrtoint %Object* %"$b" to i64
  %or26 = or i64 %union_ptr_to_int25, -4503599627370496
  %or27 = or i64 %or26, 1970324836974592
  %bitcast28 = bitcast %union.UnionType* %base_ptr24 to i64*
  store i64 %or27, i64* %bitcast28
  %args29 = alloca %union.UnionType*
  %bitcast30 = bitcast %union.UnionType* %base_ptr2 to i64*
  %load_ivalue = load i64* %bitcast30
  %xor = xor i64 %load_ivalue, -2533274790395904
  %int_to_ptr = inttoptr i64 %xor to %Object*
  %object_body31 = getelementptr inbounds %Object* %int_to_ptr, i32 0, i32 1
  %get_idx3279 = bitcast %union.UnionType** %args29 to %union.UnionType**
  store %union.UnionType* %object_body31, %union.UnionType** %get_idx3279
  %array33 = alloca %ArrayObject
  %array_type3480 = bitcast %ArrayObject* %array33 to i32*
  %array_list35 = getelementptr inbounds %ArrayObject* %array33, i32 0, i32 1
  %array_size36 = getelementptr inbounds %ArrayObject* %array33, i32 0, i32 2
  store i32 3, i32* %array_type3480
  store %union.UnionType** %args29, %union.UnionType*** %array_list35
  store i64 1, i64* %array_size36
  %result37 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array33)
  %union_storage38 = alloca %union.UnionType
  %cast_to_double_ptr3981 = bitcast %union.UnionType* %union_storage38 to double*
  %cast_to_int_ptr40 = bitcast double* %cast_to_double_ptr3981 to i64*
  store i64 %result37, i64* %cast_to_int_ptr40
  %args41 = alloca %union.UnionType*
  %bitcast42 = bitcast %union.UnionType* %base_ptr24 to i64*
  %load_ivalue43 = load i64* %bitcast42
  %xor44 = xor i64 %load_ivalue43, -2533274790395904
  %int_to_ptr45 = inttoptr i64 %xor44 to %Object*
  %object_body46 = getelementptr inbounds %Object* %int_to_ptr45, i32 0, i32 1
  %get_idx4782 = bitcast %union.UnionType** %args41 to %union.UnionType**
  store %union.UnionType* %object_body46, %union.UnionType** %get_idx4782
  %array48 = alloca %ArrayObject
  %array_type4983 = bitcast %ArrayObject* %array48 to i32*
  %array_list50 = getelementptr inbounds %ArrayObject* %array48, i32 0, i32 1
  %array_size51 = getelementptr inbounds %ArrayObject* %array48, i32 0, i32 2
  store i32 3, i32* %array_type4983
  store %union.UnionType** %args41, %union.UnionType*** %array_list50
  store i64 1, i64* %array_size51
  %result52 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array48)
  %union_storage53 = alloca %union.UnionType
  %cast_to_double_ptr5484 = bitcast %union.UnionType* %union_storage53 to double*
  %cast_to_int_ptr55 = bitcast double* %cast_to_double_ptr5484 to i64*
  store i64 %result52, i64* %cast_to_int_ptr55
  %args56 = alloca %union.UnionType*
  %base_ptr57 = alloca %union.UnionType
  %union_ptr_to_int58 = ptrtoint %ArrayObject* %0 to i64
  %or59 = or i64 %union_ptr_to_int58, -4503599627370496
  %or60 = or i64 %or59, 844424930131968
  %bitcast61 = bitcast %union.UnionType* %base_ptr57 to i64*
  store i64 %or60, i64* %bitcast61
  %get_idx6285 = bitcast %union.UnionType** %args56 to %union.UnionType**
  store %union.UnionType* %base_ptr57, %union.UnionType** %get_idx6285
  %array63 = alloca %ArrayObject
  %array_type6486 = bitcast %ArrayObject* %array63 to i32*
  %array_list65 = getelementptr inbounds %ArrayObject* %array63, i32 0, i32 1
  %array_size66 = getelementptr inbounds %ArrayObject* %array63, i32 0, i32 2
  store i32 3, i32* %array_type6486
  store %union.UnionType** %args56, %union.UnionType*** %array_list65
  store i64 1, i64* %array_size66
  %result67 = call i64 bitcast (i64 (%struct._Array*)* @say to i64 (%ArrayObject*)*)(%ArrayObject* %array63)
  %union_storage68 = alloca %union.UnionType
  %cast_to_double_ptr6987 = bitcast %union.UnionType* %union_storage68 to double*
  %cast_to_int_ptr70 = bitcast double* %cast_to_double_ptr6987 to i64*
  store i64 %result67, i64* %cast_to_int_ptr70
  %cast_to_double_ptr7188 = bitcast %union.UnionType* %union_storage68 to double*
  %cast_to_int_ptr72 = bitcast double* %cast_to_double_ptr7188 to i64*
  %cast_to_int = load i64* %cast_to_int_ptr72
  ret i64 %cast_to_int
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
attributes #7 = { ssp }
attributes #8 = { noreturn }
