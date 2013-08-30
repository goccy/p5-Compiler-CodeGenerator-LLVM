; ModuleID = 'gen/runtime_api.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.6.0"

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
%struct._BlessedObject = type { i32, %union.UnionType, %struct._Package*, i8* }
%struct._Package = type { i32, %union.UnionType*, %struct._String**, i64, %struct._Array*, i8* }
%struct._CodeRef = type { i32, i64 (%struct._Array*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._FFIObject = type { i32, %union.UnionType, %struct._Package*, i8*, i8* }

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

; Function Attrs: nounwind ssp uwtable
define i64 @_open(%struct._Array* %args) #0 {
entry:
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
  br i1 %cmp, label %if.then, label %if.else67

if.then:                                          ; preds = %entry
  %3 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %3, i32 0, i32 1
  %4 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %4, i64 0
  %5 = load %union.UnionType** %arrayidx, align 8
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
  br label %do.body

do.body:                                          ; preds = %if.then
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
  br i1 %cmp10, label %if.then12, label %if.end

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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body22

do.body22:                                        ; preds = %do.end
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
  br i1 %cmp32, label %if.then34, label %if.end45

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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end45:                                         ; preds = %do.body22
  br label %do.end46

do.end46:                                         ; preds = %if.end45
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
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i8** %mode, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.else
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then52
  store %struct.__sFILE* null, %struct.__sFILE** %fp, align 8
  %50 = load i8** %filename, align 8
  %51 = load i8** %mode, align 8
  %call58 = call %struct.__sFILE* @"\01_fopen"(i8* %50, i8* %51)
  store %struct.__sFILE* %call58, %struct.__sFILE** %fp, align 8
  %cmp59 = icmp eq %struct.__sFILE* %call58, null
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end57
  %52 = load %struct.__sFILE** @__stderrp, align 8
  %call62 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %52, i8* getelementptr inbounds ([26 x i8]* @.str8, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end63:                                         ; preds = %if.end57
  %53 = load %struct._Array** %args.addr, align 8
  %list64 = getelementptr inbounds %struct._Array* %53, i32 0, i32 1
  %54 = load %union.UnionType*** %list64, align 8
  %arrayidx65 = getelementptr inbounds %union.UnionType** %54, i64 0
  %55 = load %union.UnionType** %arrayidx65, align 8
  %56 = load i8** %filename, align 8
  %57 = load i8** %mode, align 8
  %58 = load %struct.__sFILE** %fp, align 8
  %call66 = call i64 @new_IOHandler(i8* %56, i8* %57, %struct.__sFILE* %58)
  %coerce.dive = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %59 = bitcast double* %coerce.dive to i64*
  store i64 %call66, i64* %59, align 1
  %60 = bitcast %union.UnionType* %55 to i8*
  %61 = bitcast %union.UnionType* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 8, i32 8, i1 false)
  br label %if.end69

if.else67:                                        ; preds = %entry
  %62 = load %struct.__sFILE** @__stderrp, align 8
  %63 = load i64* %size, align 8
  %call68 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %62, i8* getelementptr inbounds ([23 x i8]* @.str9, i32 0, i32 0), i64 %63)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 34, i8* getelementptr inbounds ([34 x i8]* @.str10, i32 0, i32 0)) #8
  unreachable

if.end69:                                         ; preds = %if.end63
  %o70 = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o70, align 8
  %64 = bitcast %union.UnionType* %retval to i8*
  %65 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 8, i32 8, i1 false)
  %coerce.dive71 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %66 = bitcast double* %coerce.dive71 to i64*
  %67 = load i64* %66, align 1
  ret i64 %67
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
  %call = call %struct._Object* @fetch_object()
  %0 = bitcast %struct._Object* %call to %struct._IOHandlerObject*
  store %struct._IOHandlerObject* %0, %struct._IOHandlerObject** %o, align 8
  %1 = load %struct.__sFILE** %fp.addr, align 8
  %2 = load %struct._IOHandlerObject** %o, align 8
  %fp1 = getelementptr inbounds %struct._IOHandlerObject* %2, i32 0, i32 1
  store %struct.__sFILE* %1, %struct.__sFILE** %fp1, align 8
  %3 = load i8** %mode.addr, align 8
  %4 = load %struct._IOHandlerObject** %o, align 8
  %mode2 = getelementptr inbounds %struct._IOHandlerObject* %4, i32 0, i32 3
  store i8* %3, i8** %mode2, align 8
  %5 = load i8** %filename.addr, align 8
  %6 = load %struct._IOHandlerObject** %o, align 8
  %filename3 = getelementptr inbounds %struct._IOHandlerObject* %6, i32 0, i32 2
  store i8* %5, i8** %filename3, align 8
  %7 = load %struct._IOHandlerObject** %o, align 8
  %8 = ptrtoint %struct._IOHandlerObject* %7 to i64
  %or = or i64 %8, -4503599627370496
  %or4 = or i64 %or, 2814749767106560
  %9 = inttoptr i64 %or4 to i8*
  %o5 = bitcast %union.UnionType* %ret to i8**
  store i8* %9, i8** %o5, align 8
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body

do.body:                                          ; preds = %cond.end
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
  br i1 %cmp16, label %if.then, label %if.end

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
  call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8]* @__func__._binmode, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 45, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
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
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0), i8** %mode, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then31
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %45 = bitcast double* %coerce.dive to i64*
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body

do.body:                                          ; preds = %cond.end
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
  br i1 %cmp16, label %if.then, label %if.end

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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._chr, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %o27 = bitcast %union.UnionType* %arg to i8**
  %25 = load i8** %o27, align 8
  %26 = ptrtoint i8* %25 to i64
  %conv28 = trunc i64 %26 to i32
  store i32 %conv28, i32* %ch, align 4
  %27 = bitcast [8 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 8, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [8 x i8]* %buf, i32 0, i32 0
  %28 = load i32* %ch, align 4
  %call29 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %arraydecay, i32 0, i64 8, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), i32 %28)
  %arraydecay30 = getelementptr inbounds [8 x i8]* %buf, i32 0, i32 0
  %call31 = call i64 @new_String(i8* %arraydecay30)
  %coerce.dive = getelementptr %union.UnionType* %ret, i32 0, i32 0
  %29 = bitcast double* %coerce.dive to i64*
  store i64 %call31, i64* %29, align 1
  %30 = bitcast %union.UnionType* %retval to i8*
  %31 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %coerce.dive32 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %32 = bitcast double* %coerce.dive32 to i64*
  %33 = load i64* %32, align 1
  ret i64 %33
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define i64 @new_String(i8* %str) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %str.addr = alloca i8*, align 8
  %ret = alloca %union.UnionType, align 8
  %o = alloca %struct._String*, align 8
  store i8* %str, i8** %str.addr, align 8
  %call = call i8* @calloc(i64 32, i64 1)
  %0 = bitcast i8* %call to %struct._String*
  store %struct._String* %0, %struct._String** %o, align 8
  %1 = load %struct._String** %o, align 8
  %header = getelementptr inbounds %struct._String* %1, i32 0, i32 0
  store i32 2, i32* %header, align 4
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
  %9 = call i64 @llvm.objectsize.i64(i8* %8, i1 false)
  %cmp = icmp ne i64 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct._String** %o, align 8
  %s5 = getelementptr inbounds %struct._String* %10, i32 0, i32 1
  %11 = load i8** %s5, align 8
  %12 = load i8** %str.addr, align 8
  %13 = load %struct._String** %o, align 8
  %len6 = getelementptr inbounds %struct._String* %13, i32 0, i32 2
  %14 = load i64* %len6, align 8
  %15 = load %struct._String** %o, align 8
  %s7 = getelementptr inbounds %struct._String* %15, i32 0, i32 1
  %16 = load i8** %s7, align 8
  %17 = call i64 @llvm.objectsize.i64(i8* %16, i1 false)
  %call8 = call i8* @__memcpy_chk(i8* %11, i8* %12, i64 %14, i64 %17) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load %struct._String** %o, align 8
  %s9 = getelementptr inbounds %struct._String* %18, i32 0, i32 1
  %19 = load i8** %s9, align 8
  %20 = load i8** %str.addr, align 8
  %21 = load %struct._String** %o, align 8
  %len10 = getelementptr inbounds %struct._String* %21, i32 0, i32 2
  %22 = load i64* %len10, align 8
  %call11 = call i8* @__inline_memcpy_chk(i8* %19, i8* %20, i64 %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ %call11, %cond.false ]
  %23 = load i8** %str.addr, align 8
  %24 = load %struct._String** %o, align 8
  %len12 = getelementptr inbounds %struct._String* %24, i32 0, i32 2
  %25 = load i64* %len12, align 8
  %call13 = call i64 @make_hash(i8* %23, i64 %25)
  %rem = urem i64 %call13, 512
  %26 = load %struct._String** %o, align 8
  %hash = getelementptr inbounds %struct._String* %26, i32 0, i32 3
  store i64 %rem, i64* %hash, align 8
  %27 = load %struct._String** %o, align 8
  %28 = ptrtoint %struct._String* %27 to i64
  %or = or i64 %28, -4503599627370496
  %or14 = or i64 %or, 562949953421312
  %29 = inttoptr i64 %or14 to i8*
  %o15 = bitcast %union.UnionType* %ret to i8**
  store i8* %29, i8** %o15, align 8
  %30 = bitcast %union.UnionType* %retval to i8*
  %31 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %32 = bitcast double* %coerce.dive to i64*
  %33 = load i64* %32, align 1
  ret i64 %33
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body

do.body:                                          ; preds = %cond.end
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
  br i1 %cmp16, label %if.then, label %if.end

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
  call void @__assert_rtn(i8* getelementptr inbounds ([7 x i8]* @__func__._close, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 79, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %33 = bitcast double* %coerce.dive to i64*
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._abs, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 106, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._int, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 124, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %14 = bitcast %union.UnionType* %retval to i8*
  %15 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %16 = bitcast double* %coerce.dive to i64*
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %3 = bitcast double* %coerce.dive to i64*
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._sin, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 150, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %14 = bitcast %union.UnionType* %retval to i8*
  %15 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %16 = bitcast double* %coerce.dive to i64*
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._cos, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %14 = bitcast %union.UnionType* %retval to i8*
  %15 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %16 = bitcast double* %coerce.dive to i64*
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
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i64 0
  %2 = load %union.UnionType** %arrayidx, align 8
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %32 = bitcast double* %coerce.dive to i64*
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %1 = bitcast double* %coerce.dive to i64*
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
  %s.addr = alloca i8*, align 8
  %indent.addr = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %indent, i64* %indent.addr, align 8
  %0 = load i64* %indent.addr, align 8
  call void @print_space(i64 %0)
  %1 = load %struct.__sFILE** @__stdoutp, align 8
  %2 = load i8** %s.addr, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @dump_hash_ref(%struct._HashRef* %ref, i64 %indent) #0 {
entry:
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
  call void @print_space(i64 %21)
  %22 = load %struct.__sFILE** @__stdoutp, align 8
  %23 = load i8** %key, align 8
  %call3 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([11 x i8]* @.str19, i32 0, i32 0), i8* %23)
  %24 = load i64* %indent.addr, align 8
  %25 = load %struct._String** %_key, align 8
  %len = getelementptr inbounds %struct._String* %25, i32 0, i32 2
  %26 = load i64* %len, align 8
  %add = add i64 %24, %26
  %add4 = add i64 %add, 7
  %coerce.dive = getelementptr %union.UnionType* %value, i32 0, i32 0
  %27 = bitcast double* %coerce.dive to i64*
  %28 = load i64* %27, align 1
  call void @dumper(i64 %28, i64 %add4)
  %29 = load i64* %i, align 8
  %add5 = add i64 %29, 1
  %30 = load i64* %key_n, align 8
  %cmp6 = icmp ne i64 %add5, %30
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %31 = load %struct.__sFILE** @__stdoutp, align 8
  %call7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body
  %32 = load %struct.__sFILE** @__stdoutp, align 8
  %call8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i64* %indent.addr, align 8
  %tobool = icmp ne i64 %34, 0
  br i1 %tobool, label %if.then9, label %if.else10

if.then9:                                         ; preds = %for.end
  %35 = load i64* %indent.addr, align 8
  call void @print_message(i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0), i64 %35)
  br label %if.end12

if.else10:                                        ; preds = %for.end
  %36 = load %struct.__sFILE** @__stdoutp, align 8
  %call11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %36, i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then9
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @dumper(i64 %o.coerce, i64 %indent) #0 {
entry:
  %o = alloca %union.UnionType, align 8
  %indent.addr = alloca i64, align 8
  %coerce.dive = getelementptr %union.UnionType* %o, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
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
  switch i64 %mul, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb
    i64 2, label %sw.bb6
    i64 6, label %sw.bb8
    i64 4, label %sw.bb11
    i64 13, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry, %entry
  %5 = load %struct.__sFILE** @__stdoutp, align 8
  %coerce.dive5 = getelementptr %union.UnionType* %o, i32 0, i32 0
  %6 = bitcast double* %coerce.dive5 to i64*
  %7 = load i64* %6, align 1
  call void @print_object(%struct.__sFILE* %5, i64 %7)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %o7 = bitcast %union.UnionType* %o to i8**
  %8 = load i8** %o7, align 8
  %9 = ptrtoint i8* %8 to i64
  %xor = xor i64 %9, -3940649673949184
  %10 = inttoptr i64 %xor to %struct._String*
  call void @dump_string(%struct._String* %10)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %o9 = bitcast %union.UnionType* %o to i8**
  %11 = load i8** %o9, align 8
  %12 = ptrtoint i8* %11 to i64
  %xor10 = xor i64 %12, -2814749767106560
  %13 = inttoptr i64 %xor10 to %struct._HashRef*
  %14 = load i64* %indent.addr, align 8
  call void @dump_hash_ref(%struct._HashRef* %13, i64 %14)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %o12 = bitcast %union.UnionType* %o to i8**
  %15 = load i8** %o12, align 8
  %16 = ptrtoint i8* %15 to i64
  %xor13 = xor i64 %16, -3377699720527872
  %17 = inttoptr i64 %xor13 to %struct._ArrayRef*
  %18 = load i64* %indent.addr, align 8
  call void @dump_array_ref(%struct._ArrayRef* %17, i64 %18)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %19 = load %struct.__sFILE** @__stdoutp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @dump_array_ref(%struct._ArrayRef* %ref, i64 %indent) #0 {
entry:
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
  call void @print_space(i64 %add)
  %16 = load i64* %indent.addr, align 8
  %add2 = add i64 %16, 2
  %coerce.dive = getelementptr %union.UnionType* %value, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  call void @dumper(i64 %18, i64 %add2)
  %19 = load i64* %i, align 8
  %add3 = add i64 %19, 1
  %20 = load i64* %size, align 8
  %cmp4 = icmp ne i64 %add3, %20
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %21 = load %struct.__sFILE** @__stdoutp, align 8
  %call5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body
  %22 = load %struct.__sFILE** @__stdoutp, align 8
  %call6 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i64* %indent.addr, align 8
  %tobool = icmp ne i64 %24, 0
  br i1 %tobool, label %if.then7, label %if.else8

if.then7:                                         ; preds = %for.end
  %25 = load i64* %indent.addr, align 8
  call void @print_message(i8* getelementptr inbounds ([2 x i8]* @.str24, i32 0, i32 0), i64 %25)
  br label %if.end10

if.else8:                                         ; preds = %for.end
  %26 = load %struct.__sFILE** @__stdoutp, align 8
  %call9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([2 x i8]* @.str24, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then7
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
  %fp.addr = alloca %struct.__sFILE*, align 8
  %o = alloca %union.UnionType, align 8
  %coerce = alloca %union.UnionType, align 8
  %object = alloca %struct._Object*, align 8
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 8
  %coerce.dive = getelementptr %union.UnionType* %o, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
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
  switch i64 %mul, label %sw.default [
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
  call void @_print_with_handler(%struct.__sFILE* %19, %struct._Array* %22)
  br label %if.end22

if.else:                                          ; preds = %sw.bb12
  %o18 = bitcast %union.UnionType* %o to i8**
  %23 = load i8** %o18, align 8
  %24 = ptrtoint i8* %23 to i64
  %xor19 = xor i64 %24, -3659174697238528
  %25 = inttoptr i64 %xor19 to %struct._Array*
  %call20 = call i64 @print(%struct._Array* %25)
  %coerce.dive21 = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %26 = bitcast double* %coerce.dive21 to i64*
  store i64 %call20, i64* %26, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %27 = load %struct.__sFILE** %fp.addr, align 8
  %o24 = bitcast %union.UnionType* %o to i8**
  %28 = load i8** %o24, align 8
  %call25 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0), i8* %28)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %29 = load %struct.__sFILE** %fp.addr, align 8
  %o27 = bitcast %union.UnionType* %o to i8**
  %30 = load i8** %o27, align 8
  %31 = ptrtoint i8* %30 to i64
  %xor28 = xor i64 %31, -3096224743817216
  %32 = inttoptr i64 %xor28 to %struct._Hash*
  call void @print_hash(%struct.__sFILE* %29, %struct._Hash* %32)
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %33 = load %struct.__sFILE** %fp.addr, align 8
  %o30 = bitcast %union.UnionType* %o to i8**
  %34 = load i8** %o30, align 8
  %call31 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([9 x i8]* @.str43, i32 0, i32 0), i8* %34)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  %35 = load %struct.__sFILE** %fp.addr, align 8
  %o33 = bitcast %union.UnionType* %o to i8**
  %36 = load i8** %o33, align 8
  %call34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([9 x i8]* @.str44, i32 0, i32 0), i8* %36)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %o36 = bitcast %union.UnionType* %o to i8**
  %37 = load i8** %o36, align 8
  %38 = ptrtoint i8* %37 to i64
  %xor37 = xor i64 %38, -2533274790395904
  %39 = inttoptr i64 %xor37 to %struct._Object*
  store %struct._Object* %39, %struct._Object** %object, align 8
  %40 = load %struct.__sFILE** %fp.addr, align 8
  %41 = load %struct._Object** %object, align 8
  %v = getelementptr inbounds %struct._Object* %41, i32 0, i32 1
  %coerce.dive38 = getelementptr %union.UnionType* %v, i32 0, i32 0
  %42 = bitcast double* %coerce.dive38 to i64*
  %43 = load i64* %42, align 1
  call void @print_object(%struct.__sFILE* %40, i64 %43)
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  %44 = load %struct.__sFILE** %fp.addr, align 8
  %o40 = bitcast %union.UnionType* %o to i8**
  %45 = load i8** %o40, align 8
  %46 = ptrtoint i8* %45 to i64
  %xor41 = xor i64 %46, -2251799813685248
  %47 = inttoptr i64 %xor41 to %struct._BlessedObject*
  %pkg_name = getelementptr inbounds %struct._BlessedObject* %47, i32 0, i32 3
  %48 = load i8** %pkg_name, align 8
  %o42 = bitcast %union.UnionType* %o to i8**
  %49 = load i8** %o42, align 8
  %call43 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([12 x i8]* @.str45, i32 0, i32 0), i8* %48, i8* %49)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb39, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb23, %if.end22, %sw.bb9, %sw.bb7, %sw.bb
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
  %arrayidx = getelementptr inbounds %union.UnionType** %3, i64 0
  %4 = load %union.UnionType** %arrayidx, align 8
  %coerce.dive = getelementptr %union.UnionType* %4, i32 0, i32 0
  %5 = bitcast double* %coerce.dive to i64*
  %6 = load i64* %5, align 1
  call void @dumper(i64 %6, i64 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o, align 8
  %7 = bitcast %union.UnionType* %retval to i8*
  %8 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %coerce.dive1 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %9 = bitcast double* %coerce.dive1 to i64*
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
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
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
  %coerce.dive = getelementptr %union.UnionType* %arrayidx2, i32 0, i32 0
  %16 = bitcast double* %coerce.dive to i64*
  %17 = load i64* %16, align 1
  call void @print_object(%struct.__sFILE* %11, i64 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
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
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.__sFILE** @__stdoutp, align 8
  %5 = load i64* %i, align 8
  %6 = load %struct._Array** %array.addr, align 8
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i64 %5
  %8 = load %union.UnionType** %arrayidx, align 8
  %coerce.dive = getelementptr %union.UnionType* %8, i32 0, i32 0
  %9 = bitcast double* %coerce.dive to i64*
  %10 = load i64* %9, align 1
  call void @print_object(%struct.__sFILE* %4, i64 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
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
  %coerce.dive2 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %14 = bitcast double* %coerce.dive2 to i64*
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
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.__sFILE** %fp.addr, align 8
  %5 = load i64* %i, align 8
  %6 = load %struct._Array** %array.addr, align 8
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i64 %5
  %8 = load %union.UnionType** %arrayidx, align 8
  %coerce.dive = getelementptr %union.UnionType* %8, i32 0, i32 0
  %9 = bitcast double* %coerce.dive to i64*
  %10 = load i64* %9, align 1
  call void @print_object(%struct.__sFILE* %4, i64 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
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
  call void @_print_with_handler(%struct.__sFILE* %5, %struct._Array* %6)
  %o2 = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o2, align 8
  %7 = bitcast %union.UnionType* %retval to i8*
  %8 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %9 = bitcast double* %coerce.dive to i64*
  %10 = load i64* %9, align 1
  ret i64 %10
}

; Function Attrs: nounwind ssp uwtable
define i64 @say(%struct._Array* %array) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %array.addr = alloca %struct._Array*, align 8
  %ret = alloca %union.UnionType, align 8
  %coerce = alloca %union.UnionType, align 8
  store %struct._Array* %array, %struct._Array** %array.addr, align 8
  %0 = load %struct._Array** %array.addr, align 8
  %call = call i64 @print(%struct._Array* %0)
  %coerce.dive = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %1 = bitcast double* %coerce.dive to i64*
  store i64 %call, i64* %1, align 1
  %2 = load %struct.__sFILE** @__stdoutp, align 8
  %call1 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* inttoptr (i64 -4222124650659840 to i8*), i8** %o, align 8
  %3 = bitcast %union.UnionType* %retval to i8*
  %4 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %coerce.dive2 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %5 = bitcast double* %coerce.dive2 to i64*
  %6 = load i64* %5, align 1
  ret i64 %6
}

; Function Attrs: nounwind ssp uwtable
define void @debug_print(i64 %o.coerce) #0 {
entry:
  %o = alloca %union.UnionType, align 8
  %coerce.dive = getelementptr %union.UnionType* %o, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
  store i64 %o.coerce, i64* %0, align 1
  %1 = load %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([26 x i8]* @.str27, i32 0, i32 0))
  %2 = load %struct.__sFILE** @__stdoutp, align 8
  %coerce.dive1 = getelementptr %union.UnionType* %o, i32 0, i32 0
  %3 = bitcast double* %coerce.dive1 to i64*
  %4 = load i64* %3, align 1
  call void @print_object(%struct.__sFILE* %2, i64 %4)
  %5 = load %struct.__sFILE** @__stderrp, align 8
  %call2 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([15 x i8]* @.str28, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @shift(%struct._Array* %args) #0 {
entry:
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
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i64 0
  %8 = load %union.UnionType** %arrayidx, align 8
  %9 = bitcast %union.UnionType* %o to i8*
  %10 = bitcast %union.UnionType* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then3
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
  br i1 %cmp9, label %if.then11, label %if.end21

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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.shift, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end21:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end21
  %o22 = bitcast %union.UnionType* %o to i8**
  %20 = load i8** %o22, align 8
  %21 = ptrtoint i8* %20 to i64
  %xor = xor i64 %21, -3659174697238528
  %22 = inttoptr i64 %xor to %struct._Array*
  store %struct._Array* %22, %struct._Array** %array, align 8
  %23 = load %struct._Array** %array, align 8
  %list23 = getelementptr inbounds %struct._Array* %23, i32 0, i32 1
  %24 = load %union.UnionType*** %list23, align 8
  %arrayidx24 = getelementptr inbounds %union.UnionType** %24, i64 0
  %25 = load %union.UnionType** %arrayidx24, align 8
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
  %33 = call i64 @llvm.objectsize.i64(i8* %32, i1 false)
  %cmp27 = icmp ne i64 %33, -1
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %34 = load %struct._Array** %array, align 8
  %list29 = getelementptr inbounds %struct._Array* %34, i32 0, i32 1
  %35 = load %union.UnionType*** %list29, align 8
  %36 = bitcast %union.UnionType** %35 to i8*
  %37 = load %struct._Array** %array, align 8
  %list30 = getelementptr inbounds %struct._Array* %37, i32 0, i32 1
  %38 = load %union.UnionType*** %list30, align 8
  %add.ptr = getelementptr inbounds %union.UnionType** %38, i64 1
  %39 = bitcast %union.UnionType** %add.ptr to i8*
  %40 = load %struct._Array** %array, align 8
  %size31 = getelementptr inbounds %struct._Array* %40, i32 0, i32 2
  %41 = load i64* %size31, align 8
  %mul32 = mul i64 %41, 8
  %42 = load %struct._Array** %array, align 8
  %list33 = getelementptr inbounds %struct._Array* %42, i32 0, i32 1
  %43 = load %union.UnionType*** %list33, align 8
  %44 = bitcast %union.UnionType** %43 to i8*
  %45 = call i64 @llvm.objectsize.i64(i8* %44, i1 false)
  %call34 = call i8* @__memmove_chk(i8* %36, i8* %39, i64 %mul32, i64 %45) #3
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %46 = load %struct._Array** %array, align 8
  %list35 = getelementptr inbounds %struct._Array* %46, i32 0, i32 1
  %47 = load %union.UnionType*** %list35, align 8
  %48 = bitcast %union.UnionType** %47 to i8*
  %49 = load %struct._Array** %array, align 8
  %list36 = getelementptr inbounds %struct._Array* %49, i32 0, i32 1
  %50 = load %union.UnionType*** %list36, align 8
  %add.ptr37 = getelementptr inbounds %union.UnionType** %50, i64 1
  %51 = bitcast %union.UnionType** %add.ptr37 to i8*
  %52 = load %struct._Array** %array, align 8
  %size38 = getelementptr inbounds %struct._Array* %52, i32 0, i32 2
  %53 = load i64* %size38, align 8
  %mul39 = mul i64 %53, 8
  %call40 = call i8* @__inline_memmove_chk(i8* %48, i8* %51, i64 %mul39)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call34, %cond.true ], [ %call40, %cond.false ]
  br label %if.end42

if.else:                                          ; preds = %if.end
  %54 = load %struct.__sFILE** @__stderrp, align 8
  %call41 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %54, i8* getelementptr inbounds ([30 x i8]* @.str29, i32 0, i32 0))
  br label %if.end42

if.end42:                                         ; preds = %if.else, %cond.end
  %55 = bitcast %union.UnionType* %retval to i8*
  %56 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 8, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end42, %if.then
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %57 = bitcast double* %coerce.dive to i64*
  %58 = load i64* %57, align 1
  ret i64 %58
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64(i8*, i1) #5

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8*, i8*, i64, i64) #6

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i8* @__inline_memmove_chk(i8* %__dest, i8* %__src, i64 %__len) #7 {
entry:
  %__dest.addr = alloca i8*, align 8
  %__src.addr = alloca i8*, align 8
  %__len.addr = alloca i64, align 8
  store i8* %__dest, i8** %__dest.addr, align 8
  store i8* %__src, i8** %__src.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  %0 = load i8** %__dest.addr, align 8
  %1 = load i8** %__src.addr, align 8
  %2 = load i64* %__len.addr, align 8
  %3 = load i8** %__dest.addr, align 8
  %4 = call i64 @llvm.objectsize.i64(i8* %3, i1 false)
  %call = call i8* @__memmove_chk(i8* %0, i8* %1, i64 %2, i64 %4) #3
  ret i8* %call
}

; Function Attrs: nounwind ssp uwtable
define void @Array_grow(%struct._Array* %array, i64 %grow_size) #0 {
entry:
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
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %6 = load i8** %tmp, align 8
  %7 = call i64 @llvm.objectsize.i64(i8* %6, i1 false)
  %cmp = icmp ne i64 %7, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %8 = load i8** %tmp, align 8
  %9 = load %struct._Array** %array.addr, align 8
  %list6 = getelementptr inbounds %struct._Array* %9, i32 0, i32 1
  %10 = load %union.UnionType*** %list6, align 8
  %11 = bitcast %union.UnionType** %10 to i8*
  %12 = load i64* %size, align 8
  %mul7 = mul i64 8, %12
  %13 = load i8** %tmp, align 8
  %14 = call i64 @llvm.objectsize.i64(i8* %13, i1 false)
  %call8 = call i8* @__memcpy_chk(i8* %8, i8* %11, i64 %mul7, i64 %14) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %15 = load i8** %tmp, align 8
  %16 = load %struct._Array** %array.addr, align 8
  %list9 = getelementptr inbounds %struct._Array* %16, i32 0, i32 1
  %17 = load %union.UnionType*** %list9, align 8
  %18 = bitcast %union.UnionType** %17 to i8*
  %19 = load i64* %size, align 8
  %mul10 = mul i64 8, %19
  %call11 = call i8* @__inline_memcpy_chk(i8* %15, i8* %18, i64 %mul10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ %call11, %cond.false ]
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.else
  %20 = load i8** %tmp, align 8
  %21 = bitcast i8* %20 to %union.UnionType**
  %22 = load %struct._Array** %array.addr, align 8
  %list12 = getelementptr inbounds %struct._Array* %22, i32 0, i32 1
  store %union.UnionType** %21, %union.UnionType*** %list12, align 8
  %23 = load i64* %size, align 8
  %conv = trunc i64 %23 to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32* %i, align 4
  %conv14 = sext i32 %24 to i64
  %25 = load i64* %grow_size.addr, align 8
  %cmp15 = icmp ule i64 %conv14, %25
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call18 = call %struct._Object* @fetch_object()
  %26 = bitcast %struct._Object* %call18 to %union.UnionType*
  store %union.UnionType* %26, %union.UnionType** %undef_ptr, align 8
  %27 = load i8** bitcast (%union.UnionType* @undef to i8**), align 8
  %28 = load %union.UnionType** %undef_ptr, align 8
  %o = bitcast %union.UnionType* %28 to i8**
  store i8* %27, i8** %o, align 8
  %29 = load %union.UnionType** %undef_ptr, align 8
  %30 = load i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._Array** %array.addr, align 8
  %list19 = getelementptr inbounds %struct._Array* %31, i32 0, i32 1
  %32 = load %union.UnionType*** %list19, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %32, i64 %idxprom
  store %union.UnionType* %29, %union.UnionType** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i64* %grow_size.addr, align 8
  %35 = load %struct._Array** %array.addr, align 8
  %size20 = getelementptr inbounds %struct._Array* %35, i32 0, i32 2
  store i64 %34, i64* %size20, align 8
  br label %if.end21

if.end21:                                         ; preds = %for.end, %if.then
  ret void
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #6

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i8* @__inline_memcpy_chk(i8* %__dest, i8* %__src, i64 %__len) #7 {
entry:
  %__dest.addr = alloca i8*, align 8
  %__src.addr = alloca i8*, align 8
  %__len.addr = alloca i64, align 8
  store i8* %__dest, i8** %__dest.addr, align 8
  store i8* %__src, i8** %__src.addr, align 8
  store i64 %__len, i64* %__len.addr, align 8
  %0 = load i8** %__dest.addr, align 8
  %1 = load i8** %__src.addr, align 8
  %2 = load i64* %__len.addr, align 8
  %3 = load i8** %__dest.addr, align 8
  %4 = call i64 @llvm.objectsize.i64(i8* %3, i1 false)
  %call = call i8* @__memcpy_chk(i8* %0, i8* %1, i64 %2, i64 %4) #3
  ret i8* %call
}

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
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([27 x i8]* @.str31, i32 0, i32 0))
  br label %if.end31

if.else:                                          ; preds = %entry
  %4 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %4, i32 0, i32 1
  %5 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %5, i64 0
  %6 = load %union.UnionType** %arrayidx, align 8
  store %union.UnionType* %6, %union.UnionType** %array, align 8
  %7 = load %struct._Array** %args.addr, align 8
  %list2 = getelementptr inbounds %struct._Array* %7, i32 0, i32 1
  %8 = load %union.UnionType*** %list2, align 8
  %arrayidx3 = getelementptr inbounds %union.UnionType** %8, i64 1
  %9 = load %union.UnionType** %arrayidx3, align 8
  store %union.UnionType* %9, %union.UnionType** %value, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
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
  br i1 %cmp8, label %if.then10, label %if.end

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
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__.push, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 402, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %42 = bitcast double* %coerce.dive to i64*
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
  %coerce.dive = getelementptr %union.UnionType* %hash, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
  store i64 %hash.coerce, i64* %0, align 1
  %call = call %struct._Object* @fetch_object()
  %1 = bitcast %struct._Object* %call to %struct._HashRef*
  store %struct._HashRef* %1, %struct._HashRef** %o, align 8
  %2 = load %struct._HashRef** %o, align 8
  %v = getelementptr inbounds %struct._HashRef* %2, i32 0, i32 1
  %3 = bitcast %union.UnionType* %v to i8*
  %4 = bitcast %union.UnionType* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load %struct._HashRef** %o, align 8
  %6 = ptrtoint %struct._HashRef* %5 to i64
  %or = or i64 %6, -4503599627370496
  %or1 = or i64 %or, 1688849860263936
  %7 = inttoptr i64 %or1 to i8*
  %o2 = bitcast %union.UnionType* %ret to i8**
  store i8* %7, i8** %o2, align 8
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive3 to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp uwtable
define i64 @new_ArrayRef(i64 %array.coerce) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %array = alloca %union.UnionType, align 8
  %ret = alloca %union.UnionType, align 8
  %o = alloca %struct._ArrayRef*, align 8
  %coerce.dive = getelementptr %union.UnionType* %array, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
  store i64 %array.coerce, i64* %0, align 1
  %call = call %struct._Object* @fetch_object()
  %1 = bitcast %struct._Object* %call to %struct._ArrayRef*
  store %struct._ArrayRef* %1, %struct._ArrayRef** %o, align 8
  %2 = load %struct._ArrayRef** %o, align 8
  %v = getelementptr inbounds %struct._ArrayRef* %2, i32 0, i32 1
  %3 = bitcast %union.UnionType* %v to i8*
  %4 = bitcast %union.UnionType* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = load %struct._ArrayRef** %o, align 8
  %6 = ptrtoint %struct._ArrayRef* %5 to i64
  %or = or i64 %6, -4503599627370496
  %or1 = or i64 %or, 1125899906842624
  %7 = inttoptr i64 %or1 to i8*
  %o2 = bitcast %union.UnionType* %ret to i8**
  store i8* %7, i8** %o2, align 8
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive3 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive3 to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp uwtable
define %union.UnionType* @HashRef_get(%union.UnionType* %o, %struct._String* %key) #0 {
entry:
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
  %coerce.dive = getelementptr %union.UnionType* %agg.tmp, i32 0, i32 0
  %27 = bitcast double* %coerce.dive to i64*
  store i64 %call19, i64* %27, align 1
  %coerce.dive20 = getelementptr %union.UnionType* %agg.tmp, i32 0, i32 0
  %28 = bitcast double* %coerce.dive20 to i64*
  %29 = load i64* %28, align 1
  %call21 = call i64 @new_HashRef(i64 %29)
  %coerce.dive22 = getelementptr %union.UnionType* %hash_ref, i32 0, i32 0
  %30 = bitcast double* %coerce.dive22 to i64*
  store i64 %call21, i64* %30, align 1
  %o23 = bitcast %union.UnionType* %hash_ref to i8**
  %31 = load i8** %o23, align 8
  %32 = load %union.UnionType** %o.addr, align 8
  %o24 = bitcast %union.UnionType* %32 to i8**
  store i8* %31, i8** %o24, align 8
  %o26 = bitcast %union.UnionType* %hash_ref to i8**
  %33 = load i8** %o26, align 8
  %34 = ptrtoint i8* %33 to i64
  %xor27 = xor i64 %34, -2814749767106560
  %35 = inttoptr i64 %xor27 to %struct._HashRef*
  store %struct._HashRef* %35, %struct._HashRef** %ref25, align 8
  %36 = load %struct._HashRef** %ref25, align 8
  %v29 = getelementptr inbounds %struct._HashRef* %36, i32 0, i32 1
  %o30 = bitcast %union.UnionType* %v29 to i8**
  %37 = load i8** %o30, align 8
  %38 = ptrtoint i8* %37 to i64
  %xor31 = xor i64 %38, -3096224743817216
  %39 = inttoptr i64 %xor31 to %struct._Hash*
  store %struct._Hash* %39, %struct._Hash** %hash28, align 8
  %40 = load %struct._String** %key.addr, align 8
  %41 = load %struct._Hash** %hash28, align 8
  %keys = getelementptr inbounds %struct._Hash* %41, i32 0, i32 2
  %42 = load %struct._String*** %keys, align 8
  %arrayidx32 = getelementptr inbounds %struct._String** %42, i64 0
  store %struct._String* %40, %struct._String** %arrayidx32, align 8
  %43 = load %struct._Hash** %hash28, align 8
  %size33 = getelementptr inbounds %struct._Hash* %43, i32 0, i32 3
  store i64 1, i64* %size33, align 8
  %44 = load %struct._String** %key.addr, align 8
  %hash34 = getelementptr inbounds %struct._String* %44, i32 0, i32 3
  %45 = load i64* %hash34, align 8
  %46 = load %struct._Hash** %hash28, align 8
  %table35 = getelementptr inbounds %struct._Hash* %46, i32 0, i32 1
  %47 = load %union.UnionType** %table35, align 8
  %arrayidx36 = getelementptr inbounds %union.UnionType* %47, i64 %45
  store %union.UnionType* %arrayidx36, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %48 = load %struct.__sFILE** @__stderrp, align 8
  %49 = load %union.UnionType** %o.addr, align 8
  %o37 = bitcast %union.UnionType* %49 to i8**
  %50 = load i8** %o37, align 8
  %51 = ptrtoint i8* %50 to i64
  %and38 = and i64 %51, -4503599627370496
  %cmp39 = icmp eq i64 %and38, -4503599627370496
  %conv40 = zext i1 %cmp39 to i32
  %conv41 = sext i32 %conv40 to i64
  %52 = load %union.UnionType** %o.addr, align 8
  %o42 = bitcast %union.UnionType* %52 to i8**
  %53 = load i8** %o42, align 8
  %54 = ptrtoint i8* %53 to i64
  %and43 = and i64 %54, 4222124650659840
  %shr44 = lshr i64 %and43, 48
  %mul45 = mul i64 %conv41, %shr44
  %call46 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %48, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul45)
  call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.HashRef_get, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 473, i8* getelementptr inbounds ([33 x i8]* @.str32, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb9, %sw.bb
  %55 = load %union.UnionType** %ret, align 8
  ret %union.UnionType* %55
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
entry:
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
  %6 = call i64 @llvm.objectsize.i64(i8* %5, i1 false)
  %cmp = icmp ne i64 %6, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct._Hash** %hash, align 8
  %table3 = getelementptr inbounds %struct._Hash* %7, i32 0, i32 1
  %8 = load %union.UnionType** %table3, align 8
  %9 = bitcast %union.UnionType* %8 to i8*
  %10 = load %union.UnionType** @base_hash_table, align 8
  %11 = bitcast %union.UnionType* %10 to i8*
  %12 = load %struct._Hash** %hash, align 8
  %table4 = getelementptr inbounds %struct._Hash* %12, i32 0, i32 1
  %13 = load %union.UnionType** %table4, align 8
  %14 = bitcast %union.UnionType* %13 to i8*
  %15 = call i64 @llvm.objectsize.i64(i8* %14, i1 false)
  %call5 = call i8* @__memcpy_chk(i8* %9, i8* %11, i64 4096, i64 %15) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load %struct._Hash** %hash, align 8
  %table6 = getelementptr inbounds %struct._Hash* %16, i32 0, i32 1
  %17 = load %union.UnionType** %table6, align 8
  %18 = bitcast %union.UnionType* %17 to i8*
  %19 = load %union.UnionType** @base_hash_table, align 8
  %20 = bitcast %union.UnionType* %19 to i8*
  %call7 = call i8* @__inline_memcpy_chk(i8* %18, i8* %20, i64 4096)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %call7, %cond.false ]
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
  br i1 %cmp14, label %cond.true15, label %cond.false18

cond.true15:                                      ; preds = %for.body
  %41 = load i64* %i, align 8
  %add16 = add i64 %41, 1
  %42 = load %union.UnionType*** %list, align 8
  %arrayidx17 = getelementptr inbounds %union.UnionType** %42, i64 %add16
  %43 = load %union.UnionType** %arrayidx17, align 8
  br label %cond.end19

cond.false18:                                     ; preds = %for.body
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true15
  %cond20 = phi %union.UnionType* [ %43, %cond.true15 ], [ null, %cond.false18 ]
  store %union.UnionType* %cond20, %union.UnionType** %value, align 8
  %44 = load %union.UnionType** %value, align 8
  %tobool = icmp ne %union.UnionType* %44, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end19
  br label %for.inc

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
  br label %if.end54

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
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then44
  br label %for.inc

for.inc:                                          ; preds = %if.end54, %if.then
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %83 = bitcast double* %coerce.dive to i64*
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
  %call = call %union.UnionType* @Array_get(%struct._Array* %14, i32 %15)
  store %union.UnionType* %call, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %16 = load %union.UnionType** %o.addr, align 8
  %call10 = call %struct._ArrayRef* @dynamic_array_ref_cast_code(%union.UnionType* %16)
  store %struct._ArrayRef* %call10, %struct._ArrayRef** %ref9, align 8
  %17 = load %struct._ArrayRef** %ref9, align 8
  %v12 = getelementptr inbounds %struct._ArrayRef* %17, i32 0, i32 1
  %o13 = bitcast %union.UnionType* %v12 to i8**
  %18 = load i8** %o13, align 8
  %19 = ptrtoint i8* %18 to i64
  %xor14 = xor i64 %19, -3659174697238528
  %20 = inttoptr i64 %xor14 to %struct._Array*
  store %struct._Array* %20, %struct._Array** %array11, align 8
  %21 = load %struct._Array** %array11, align 8
  %22 = load i32* %idx.addr, align 4
  %call15 = call %union.UnionType* @Array_get(%struct._Array* %21, i32 %22)
  store %union.UnionType* %call15, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry, %entry, %entry
  %call17 = call i64 @new_Array(%union.UnionType** null, i64 0)
  %coerce.dive = getelementptr %union.UnionType* %boxed_array, i32 0, i32 0
  %23 = bitcast double* %coerce.dive to i64*
  store i64 %call17, i64* %23, align 1
  %coerce.dive18 = getelementptr %union.UnionType* %boxed_array, i32 0, i32 0
  %24 = bitcast double* %coerce.dive18 to i64*
  %25 = load i64* %24, align 1
  %call19 = call i64 @new_ArrayRef(i64 %25)
  %coerce.dive20 = getelementptr %union.UnionType* %array_ref, i32 0, i32 0
  %26 = bitcast double* %coerce.dive20 to i64*
  store i64 %call19, i64* %26, align 1
  %27 = load %union.UnionType** %o.addr, align 8
  %28 = bitcast %union.UnionType* %27 to i8*
  %29 = bitcast %union.UnionType* %array_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 8, i1 false)
  %o22 = bitcast %union.UnionType* %boxed_array to i8**
  %30 = load i8** %o22, align 8
  %31 = ptrtoint i8* %30 to i64
  %xor23 = xor i64 %31, -3659174697238528
  %32 = inttoptr i64 %xor23 to %struct._Array*
  store %struct._Array* %32, %struct._Array** %array21, align 8
  %33 = load %struct._Array** %array21, align 8
  %34 = load i32* %idx.addr, align 4
  %call24 = call %union.UnionType* @Array_get(%struct._Array* %33, i32 %34)
  store %union.UnionType* %call24, %union.UnionType** %ret, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %35 = load %struct.__sFILE** @__stderrp, align 8
  %36 = load %union.UnionType** %o.addr, align 8
  %o25 = bitcast %union.UnionType* %36 to i8**
  %37 = load i8** %o25, align 8
  %38 = ptrtoint i8* %37 to i64
  %and26 = and i64 %38, -4503599627370496
  %cmp27 = icmp eq i64 %and26, -4503599627370496
  %conv28 = zext i1 %cmp27 to i32
  %conv29 = sext i32 %conv28 to i64
  %39 = load %union.UnionType** %o.addr, align 8
  %o30 = bitcast %union.UnionType* %39 to i8**
  %40 = load i8** %o30, align 8
  %41 = ptrtoint i8* %40 to i64
  %and31 = and i64 %41, 4222124650659840
  %shr32 = lshr i64 %and31, 48
  %mul33 = mul i64 %conv29, %shr32
  %call34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %mul33)
  call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.ArrayRef_get, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 530, i8* getelementptr inbounds ([33 x i8]* @.str32, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb8, %sw.bb
  %42 = load %union.UnionType** %ret, align 8
  ret %union.UnionType* %42
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
  %call = call %struct._Object* @fetch_object()
  %0 = bitcast %struct._Object* %call to %struct._Array*
  store %struct._Array* %0, %struct._Array** %array, align 8
  %1 = load %union.UnionType*** %list.addr, align 8
  %2 = load %struct._Array** %array, align 8
  %list1 = getelementptr inbounds %struct._Array* %2, i32 0, i32 1
  store %union.UnionType** %1, %union.UnionType*** %list1, align 8
  %3 = load i64* %size.addr, align 8
  %4 = load %struct._Array** %array, align 8
  %size2 = getelementptr inbounds %struct._Array* %4, i32 0, i32 2
  store i64 %3, i64* %size2, align 8
  %5 = load %struct._Array** %array, align 8
  %6 = ptrtoint %struct._Array* %5 to i64
  %or = or i64 %6, -4503599627370496
  %or3 = or i64 %or, 844424930131968
  %7 = inttoptr i64 %or3 to i8*
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* %7, i8** %o, align 8
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
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
  %coerce.dive = getelementptr %union.UnionType* %elem, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
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
entry:
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
  %6 = call i64 @llvm.objectsize.i64(i8* %5, i1 false)
  %cmp = icmp ne i64 %6, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct._Hash** %hash, align 8
  %table3 = getelementptr inbounds %struct._Hash* %7, i32 0, i32 1
  %8 = load %union.UnionType** %table3, align 8
  %9 = bitcast %union.UnionType* %8 to i8*
  %10 = load %union.UnionType** @base_hash_table, align 8
  %11 = bitcast %union.UnionType* %10 to i8*
  %12 = load %struct._Hash** %hash, align 8
  %table4 = getelementptr inbounds %struct._Hash* %12, i32 0, i32 1
  %13 = load %union.UnionType** %table4, align 8
  %14 = bitcast %union.UnionType* %13 to i8*
  %15 = call i64 @llvm.objectsize.i64(i8* %14, i1 false)
  %call5 = call i8* @__memcpy_chk(i8* %9, i8* %11, i64 4096, i64 %15) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load %struct._Hash** %hash, align 8
  %table6 = getelementptr inbounds %struct._Hash* %16, i32 0, i32 1
  %17 = load %union.UnionType** %table6, align 8
  %18 = bitcast %union.UnionType* %17 to i8*
  %19 = load %union.UnionType** @base_hash_table, align 8
  %20 = bitcast %union.UnionType* %19 to i8*
  %call7 = call i8* @__inline_memcpy_chk(i8* %18, i8* %20, i64 4096)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %call7, %cond.false ]
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
  call void @new_Undef()
  call void @init_table()
  call void @init_package_map()
  call void @make_object_pool()
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
  %coerce.dive = getelementptr %union.UnionType* %elem, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
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
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %6 = bitcast double* %coerce.dive to i64*
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
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE** @__stderrp, align 8
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._Array** %args.addr, align 8
  %list = getelementptr inbounds %struct._Array* %3, i32 0, i32 1
  %4 = load %union.UnionType*** %list, align 8
  %arrayidx = getelementptr inbounds %union.UnionType** %4, i64 0
  %5 = load %union.UnionType** %arrayidx, align 8
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
  br label %do.body

do.body:                                          ; preds = %if.end
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
  br i1 %cmp8, label %if.then10, label %if.end21

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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 633, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end21:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end21
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
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %32 = bitcast %union.UnionType* %class to i8*
  %33 = bitcast %union.UnionType* %class to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body34

do.body34:                                        ; preds = %cond.end
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
  br i1 %cmp44, label %if.then46, label %if.end57

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
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 635, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end57:                                         ; preds = %do.body34
  br label %do.end58

do.end58:                                         ; preds = %if.end57
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
  br i1 %tobool69, label %cond.true70, label %cond.false71

cond.true70:                                      ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 646, i8* getelementptr inbounds ([30 x i8]* @.str35, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end72

cond.false71:                                     ; preds = %land.end
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false71, %62
  %63 = load %struct._Package** %pkg, align 8
  %64 = load %struct._BlessedObject** %blessed, align 8
  %mtds = getelementptr inbounds %struct._BlessedObject* %64, i32 0, i32 2
  store %struct._Package* %63, %struct._Package** %mtds, align 8
  %65 = load %struct._BlessedObject** %blessed, align 8
  %66 = ptrtoint %struct._BlessedObject* %65 to i64
  %or = or i64 %66, -4503599627370496
  %or73 = or i64 %or, 2251799813685248
  %67 = inttoptr i64 %or73 to i8*
  %o74 = bitcast %union.UnionType* %ret to i8**
  store i8* %67, i8** %o74, align 8
  %68 = bitcast %union.UnionType* %retval to i8*
  %69 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %70 = bitcast double* %coerce.dive to i64*
  %71 = load i64* %70, align 1
  ret i64 %71
}

; Function Attrs: nounwind ssp uwtable
define %struct._Package* @get_pkg(i8* %pkg_name) #0 {
entry:
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
  store %struct._Package* null, %struct._Package** %ret, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call = call i64 @new_String(i8* %0)
  %coerce.dive = getelementptr %union.UnionType* %_key, i32 0, i32 0
  %1 = bitcast double* %coerce.dive to i64*
  store i64 %call, i64* %1, align 1
  %o = bitcast %union.UnionType* %_key to i8**
  %2 = load i8** %o, align 8
  %3 = ptrtoint i8* %2 to i64
  %xor = xor i64 %3, -3940649673949184
  %4 = inttoptr i64 %xor to %struct._String*
  store %struct._String* %4, %struct._String** %key, align 8
  %5 = load %struct._Hash** @pkg_map, align 8
  %6 = load %struct._String** %key, align 8
  %call1 = call i64 @Hash_get(%struct._Hash* %5, %struct._String* %6)
  %coerce.dive2 = getelementptr %union.UnionType* %_pkg, i32 0, i32 0
  %7 = bitcast double* %coerce.dive2 to i64*
  store i64 %call1, i64* %7, align 1
  %o3 = bitcast %union.UnionType* %_pkg to i8**
  %8 = load i8** %o3, align 8
  %9 = ptrtoint i8* %8 to i64
  %and = and i64 %9, -4503599627370496
  %cmp = icmp eq i64 %and, -4503599627370496
  %conv = zext i1 %cmp to i32
  %conv4 = sext i32 %conv to i64
  %o5 = bitcast %union.UnionType* %_pkg to i8**
  %10 = load i8** %o5, align 8
  %11 = ptrtoint i8* %10 to i64
  %and6 = and i64 %11, 4222124650659840
  %shr = lshr i64 %and6, 48
  %mul = mul i64 %conv4, %shr
  %cmp7 = icmp eq i64 %mul, 11
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %o9 = bitcast %union.UnionType* %_pkg to i8**
  %12 = load i8** %o9, align 8
  %13 = ptrtoint i8* %12 to i64
  %xor10 = xor i64 %13, -1407374883553280
  %14 = inttoptr i64 %xor10 to %struct._Package*
  store %struct._Package* %14, %struct._Package** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call11 = call i8* @calloc(i64 48, i64 1)
  %15 = bitcast i8* %call11 to %struct._Package*
  store %struct._Package* %15, %struct._Package** %pkg, align 8
  %call12 = call i8* @calloc(i64 8, i64 512)
  %16 = bitcast i8* %call12 to %union.UnionType*
  %17 = load %struct._Package** %pkg, align 8
  %table = getelementptr inbounds %struct._Package* %17, i32 0, i32 1
  store %union.UnionType* %16, %union.UnionType** %table, align 8
  %18 = load %struct._Package** %pkg, align 8
  %table13 = getelementptr inbounds %struct._Package* %18, i32 0, i32 1
  %19 = load %union.UnionType** %table13, align 8
  %20 = bitcast %union.UnionType* %19 to i8*
  %21 = call i64 @llvm.objectsize.i64(i8* %20, i1 false)
  %cmp14 = icmp ne i64 %21, -1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %22 = load %struct._Package** %pkg, align 8
  %table16 = getelementptr inbounds %struct._Package* %22, i32 0, i32 1
  %23 = load %union.UnionType** %table16, align 8
  %24 = bitcast %union.UnionType* %23 to i8*
  %25 = load %union.UnionType** @base_hash_table, align 8
  %26 = bitcast %union.UnionType* %25 to i8*
  %27 = load %struct._Package** %pkg, align 8
  %table17 = getelementptr inbounds %struct._Package* %27, i32 0, i32 1
  %28 = load %union.UnionType** %table17, align 8
  %29 = bitcast %union.UnionType* %28 to i8*
  %30 = call i64 @llvm.objectsize.i64(i8* %29, i1 false)
  %call18 = call i8* @__memcpy_chk(i8* %24, i8* %26, i64 4096, i64 %30) #3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %31 = load %struct._Package** %pkg, align 8
  %table19 = getelementptr inbounds %struct._Package* %31, i32 0, i32 1
  %32 = load %union.UnionType** %table19, align 8
  %33 = bitcast %union.UnionType* %32 to i8*
  %34 = load %union.UnionType** @base_hash_table, align 8
  %35 = bitcast %union.UnionType* %34 to i8*
  %call20 = call i8* @__inline_memcpy_chk(i8* %33, i8* %35, i64 4096)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call18, %cond.true ], [ %call20, %cond.false ]
  %call21 = call i8* @calloc(i64 8, i64 512)
  %36 = bitcast i8* %call21 to %struct._String**
  %37 = load %struct._Package** %pkg, align 8
  %keys = getelementptr inbounds %struct._Package* %37, i32 0, i32 2
  store %struct._String** %36, %struct._String*** %keys, align 8
  %call22 = call i64 @new_Array(%union.UnionType** null, i64 0)
  %coerce.dive23 = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %38 = bitcast double* %coerce.dive23 to i64*
  store i64 %call22, i64* %38, align 1
  %o24 = bitcast %union.UnionType* %coerce to i8**
  %39 = load i8** %o24, align 8
  %40 = ptrtoint i8* %39 to i64
  %xor25 = xor i64 %40, -3659174697238528
  %41 = inttoptr i64 %xor25 to %struct._Array*
  %42 = load %struct._Package** %pkg, align 8
  %isa = getelementptr inbounds %struct._Package* %42, i32 0, i32 4
  store %struct._Array* %41, %struct._Array** %isa, align 8
  %43 = load i8** %pkg_name.addr, align 8
  %44 = load %struct._Package** %pkg, align 8
  %name = getelementptr inbounds %struct._Package* %44, i32 0, i32 5
  store i8* %43, i8** %name, align 8
  %45 = load %struct._Package** %pkg, align 8
  %46 = ptrtoint %struct._Package* %45 to i64
  %or = or i64 %46, -4503599627370496
  %or26 = or i64 %or, 3096224743817216
  %47 = inttoptr i64 %or26 to i8*
  %o27 = bitcast %union.UnionType* %value to i8**
  store i8* %47, i8** %o27, align 8
  %48 = load %struct._Hash** @pkg_map, align 8
  %49 = load %struct._String** %key, align 8
  %coerce.dive28 = getelementptr %union.UnionType* %value, i32 0, i32 0
  %50 = bitcast double* %coerce.dive28 to i64*
  %51 = load i64* %50, align 1
  call void @Hash_add(%struct._Hash* %48, %struct._String* %49, i64 %51)
  %52 = load %struct._Package** %pkg, align 8
  store %struct._Package* %52, %struct._Package** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %53 = load %struct._Package** %retval
  ret %struct._Package* %53
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nounwind ssp uwtable
define void @store_method_by_pkg_name(i8* %pkg_name, i8* %mtd_name, i64 (%struct._Array*)* %code) #0 {
entry:
  %pkg_name.addr = alloca i8*, align 8
  %mtd_name.addr = alloca i8*, align 8
  %code.addr = alloca i64 (%struct._Array*)*, align 8
  %pkg = alloca %struct._Package*, align 8
  %_mtd_name = alloca %union.UnionType, align 8
  %o = alloca %struct._CodeRef*, align 8
  %code_ref = alloca %union.UnionType, align 8
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  store i8* %mtd_name, i8** %mtd_name.addr, align 8
  store i64 (%struct._Array*)* %code, i64 (%struct._Array*)** %code.addr, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call = call %struct._Package* @get_pkg(i8* %0)
  store %struct._Package* %call, %struct._Package** %pkg, align 8
  %1 = load i8** %mtd_name.addr, align 8
  %call1 = call i64 @new_String(i8* %1)
  %coerce.dive = getelementptr %union.UnionType* %_mtd_name, i32 0, i32 0
  %2 = bitcast double* %coerce.dive to i64*
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
  %9 = load %struct._Package** %pkg, align 8
  %10 = bitcast %struct._Package* %9 to %struct._Hash*
  %o6 = bitcast %union.UnionType* %_mtd_name to i8**
  %11 = load i8** %o6, align 8
  %12 = ptrtoint i8* %11 to i64
  %xor = xor i64 %12, -3940649673949184
  %13 = inttoptr i64 %xor to %struct._String*
  %coerce.dive7 = getelementptr %union.UnionType* %code_ref, i32 0, i32 0
  %14 = bitcast double* %coerce.dive7 to i64*
  %15 = load i64* %14, align 1
  call void @Hash_add(%struct._Hash* %10, %struct._String* %13, i64 %15)
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
  %coerce.dive = getelementptr %union.UnionType* %str, i32 0, i32 0
  %3 = bitcast double* %coerce.dive to i64*
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
  br i1 %cmp12, label %for.body, label %for.end

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
  br i1 %cmp30, label %if.then32, label %if.end

if.then32:                                        ; preds = %for.body
  %o33 = bitcast %union.UnionType* %mtd17 to i8**
  %43 = load i8** %o33, align 8
  %44 = ptrtoint i8* %43 to i64
  %xor34 = xor i64 %44, -1970324836974592
  %45 = inttoptr i64 %xor34 to %struct._CodeRef*
  store %struct._CodeRef* %45, %struct._CodeRef** %code_ref, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load i64* %i, align 8
  %inc = add i64 %46, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then32, %for.cond
  br label %if.end35

if.end35:                                         ; preds = %for.end, %if.then
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
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.get_method_by_name, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 719, i8* getelementptr inbounds ([33 x i8]* @.str37, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %49
  %50 = load %struct._CodeRef** %code_ref, align 8
  %code = getelementptr inbounds %struct._CodeRef* %50, i32 0, i32 1
  %51 = load i64 (%struct._Array*)** %code, align 8
  ret i64 (%struct._Array*)* %51
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
  store i8* %pkg_name, i8** %pkg_name.addr, align 8
  store i8* %mtd_name, i8** %mtd_name.addr, align 8
  %0 = load i8** %pkg_name.addr, align 8
  %call = call %struct._Package* @get_pkg(i8* %0)
  store %struct._Package* %call, %struct._Package** %pkg, align 8
  %1 = load i8** %mtd_name.addr, align 8
  %call1 = call i64 @new_String(i8* %1)
  %coerce.dive = getelementptr %union.UnionType* %str, i32 0, i32 0
  %2 = bitcast double* %coerce.dive to i64*
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
  %o2 = bitcast %union.UnionType* %mtd to i8**
  %12 = load i8** %o2, align 8
  %13 = ptrtoint i8* %12 to i64
  %xor3 = xor i64 %13, -1970324836974592
  %14 = inttoptr i64 %xor3 to %struct._CodeRef*
  store %struct._CodeRef* %14, %struct._CodeRef** %code_ref, align 8
  %15 = load %struct._CodeRef** %code_ref, align 8
  %tobool = icmp ne %struct._CodeRef* %15, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %16, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([25 x i8]* @__func__.get_class_method_by_name, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 730, i8* getelementptr inbounds ([33 x i8]* @.str37, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %17
  %18 = load %struct._CodeRef** %code_ref, align 8
  %code = getelementptr inbounds %struct._CodeRef* %18, i32 0, i32 1
  %19 = load i64 (%struct._Array*)** %code, align 8
  ret i64 (%struct._Array*)* %19
}

; Function Attrs: nounwind ssp uwtable
define void @add_base_name(i8* %pkg_name, i8* %base_name) #0 {
entry:
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
  %call2 = call %struct._Object* @fetch_object()
  %2 = bitcast %struct._Object* %call2 to %union.UnionType*
  store %union.UnionType* %2, %union.UnionType** %boxed_base, align 8
  %3 = load %struct._Package** %base, align 8
  %4 = ptrtoint %struct._Package* %3 to i64
  %or = or i64 %4, -4503599627370496
  %or3 = or i64 %or, 3096224743817216
  %5 = inttoptr i64 %or3 to i8*
  %6 = load %union.UnionType** %boxed_base, align 8
  %o = bitcast %union.UnionType* %6 to i8**
  store i8* %5, i8** %o, align 8
  %7 = load %struct._Package** %pkg, align 8
  %isa = getelementptr inbounds %struct._Package* %7, i32 0, i32 4
  %8 = load %struct._Array** %isa, align 8
  %9 = load %union.UnionType** %boxed_base, align 8
  call void @Array_add(%struct._Array* %8, %union.UnionType* %9)
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
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64* %i, align 8
  %12 = load %struct._Hash** %hash.addr, align 8
  %keys = getelementptr inbounds %struct._Hash* %12, i32 0, i32 2
  %13 = load %struct._String*** %keys, align 8
  %arrayidx = getelementptr inbounds %struct._String** %13, i64 %11
  %14 = load %struct._String** %arrayidx, align 8
  store %struct._String* %14, %struct._String** %key, align 8
  %call3 = call %struct._Object* @fetch_object()
  %15 = bitcast %struct._Object* %call3 to %union.UnionType*
  store %union.UnionType* %15, %union.UnionType** %boxed_key, align 8
  %16 = load %struct._String** %key, align 8
  %17 = ptrtoint %struct._String* %16 to i64
  %or = or i64 %17, -4503599627370496
  %or4 = or i64 %or, 562949953421312
  %18 = inttoptr i64 %or4 to i8*
  %19 = load %union.UnionType** %boxed_key, align 8
  %o = bitcast %union.UnionType* %19 to i8**
  store i8* %18, i8** %o, align 8
  %20 = load %union.UnionType** %boxed_key, align 8
  %21 = load i64* %i, align 8
  %mul5 = mul i64 %21, 2
  %22 = load %struct._Array** %array, align 8
  %list6 = getelementptr inbounds %struct._Array* %22, i32 0, i32 1
  %23 = load %union.UnionType*** %list6, align 8
  %arrayidx7 = getelementptr inbounds %union.UnionType** %23, i64 %mul5
  store %union.UnionType* %20, %union.UnionType** %arrayidx7, align 8
  %24 = load %struct._String** %key, align 8
  %hash8 = getelementptr inbounds %struct._String* %24, i32 0, i32 3
  %25 = load i64* %hash8, align 8
  %26 = load %struct._Hash** %hash.addr, align 8
  %table = getelementptr inbounds %struct._Hash* %26, i32 0, i32 1
  %27 = load %union.UnionType** %table, align 8
  %arrayidx9 = getelementptr inbounds %union.UnionType* %27, i64 %25
  %28 = load i64* %i, align 8
  %mul10 = mul i64 %28, 2
  %add = add i64 %mul10, 1
  %29 = load %struct._Array** %array, align 8
  %list11 = getelementptr inbounds %struct._Array* %29, i32 0, i32 1
  %30 = load %union.UnionType*** %list11, align 8
  %arrayidx12 = getelementptr inbounds %union.UnionType** %30, i64 %add
  store %union.UnionType* %arrayidx9, %union.UnionType** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._Array** %array, align 8
  %33 = ptrtoint %struct._Array* %32 to i64
  %or13 = or i64 %33, -4503599627370496
  %or14 = or i64 %or13, 844424930131968
  %34 = inttoptr i64 %or14 to i8*
  %o15 = bitcast %union.UnionType* %ret to i8**
  store i8* %34, i8** %o15, align 8
  %35 = bitcast %union.UnionType* %retval to i8*
  %36 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %37 = bitcast double* %coerce.dive to i64*
  %38 = load i64* %37, align 1
  ret i64 %38
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
    i64 7, label %sw.bb
    i64 8, label %sw.bb32
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %union.UnionType** %o.addr, align 8
  %o5 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o5, align 8
  %8 = ptrtoint i8* %7 to i64
  %xor = xor i64 %8, -2533274790395904
  %9 = inttoptr i64 %xor to %struct._Object*
  store %struct._Object* %9, %struct._Object** %object, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb
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
  br i1 %cmp16, label %if.then, label %if.end

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
  call void @__assert_rtn(i8* getelementptr inbounds ([33 x i8]* @__func__.dynamic_blessed_object_cast_code, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 861, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
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
  %call = call i8* @malloc(i64 64)
  %0 = bitcast i8* %call to %struct._Object*
  ret %struct._Object* %0
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default60 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb27
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  store i32 %conv5, i32* %i, align 4
  br label %do.body6

do.body6:                                         ; preds = %sw.bb
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
  switch i64 %mul15, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb16
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog61

sw.bb27:                                          ; preds = %do.body
  br label %do.body28

do.body28:                                        ; preds = %sw.bb27
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
  switch i64 %mul37, label %sw.default57 [
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
  br label %sw.epilog58

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
  br label %sw.epilog58

sw.default57:                                     ; preds = %do.body28
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %sw.default57, %sw.bb51, %sw.bb38
  br label %do.end59

do.end59:                                         ; preds = %sw.epilog58
  br label %sw.epilog61

sw.default60:                                     ; preds = %do.body
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.default60, %do.end59, %do.end
  br label %do.end62

do.end62:                                         ; preds = %sw.epilog61
  %45 = bitcast %union.UnionType* %retval to i8*
  %46 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %47 = bitcast double* %coerce.dive to i64*
  %48 = load i64* %47, align 1
  ret i64 %48
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default60 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb27
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  store i32 %conv5, i32* %i, align 4
  br label %do.body6

do.body6:                                         ; preds = %sw.bb
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
  switch i64 %mul15, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb16
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog61

sw.bb27:                                          ; preds = %do.body
  br label %do.body28

do.body28:                                        ; preds = %sw.bb27
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
  switch i64 %mul37, label %sw.default57 [
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
  br label %sw.epilog58

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
  br label %sw.epilog58

sw.default57:                                     ; preds = %do.body28
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %sw.default57, %sw.bb51, %sw.bb38
  br label %do.end59

do.end59:                                         ; preds = %sw.epilog58
  br label %sw.epilog61

sw.default60:                                     ; preds = %do.body
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.default60, %do.end59, %do.end
  br label %do.end62

do.end62:                                         ; preds = %sw.epilog61
  %45 = bitcast %union.UnionType* %retval to i8*
  %46 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %47 = bitcast double* %coerce.dive to i64*
  %48 = load i64* %47, align 1
  ret i64 %48
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default61 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb28
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  store i32 %conv5, i32* %i, align 4
  br label %do.body6

do.body6:                                         ; preds = %sw.bb
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
  switch i64 %mul15, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb23, %sw.bb16
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog62

sw.bb28:                                          ; preds = %do.body
  br label %do.body29

do.body29:                                        ; preds = %sw.bb28
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
  switch i64 %mul38, label %sw.default58 [
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
  br label %sw.epilog59

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
  br label %sw.epilog59

sw.default58:                                     ; preds = %do.body29
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sw.default58, %sw.bb52, %sw.bb39
  br label %do.end60

do.end60:                                         ; preds = %sw.epilog59
  br label %sw.epilog62

sw.default61:                                     ; preds = %do.body
  br label %sw.epilog62

sw.epilog62:                                      ; preds = %sw.default61, %do.end60, %do.end
  br label %do.end63

do.end63:                                         ; preds = %sw.epilog62
  %45 = bitcast %union.UnionType* %retval to i8*
  %46 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %47 = bitcast double* %coerce.dive to i64*
  %48 = load i64* %47, align 1
  ret i64 %48
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default60 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb27
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 8
  %o4 = bitcast %union.UnionType* %6 to i8**
  %7 = load i8** %o4, align 8
  %8 = ptrtoint i8* %7 to i64
  %conv5 = trunc i64 %8 to i32
  store i32 %conv5, i32* %i, align 4
  br label %do.body6

do.body6:                                         ; preds = %sw.bb
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
  switch i64 %mul15, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb16
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog61

sw.bb27:                                          ; preds = %do.body
  br label %do.body28

do.body28:                                        ; preds = %sw.bb27
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
  switch i64 %mul37, label %sw.default57 [
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
  br label %sw.epilog58

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
  br label %sw.epilog58

sw.default57:                                     ; preds = %do.body28
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %sw.default57, %sw.bb51, %sw.bb38
  br label %do.end59

do.end59:                                         ; preds = %sw.epilog58
  br label %sw.epilog61

sw.default60:                                     ; preds = %do.body
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.default60, %do.end59, %do.end
  br label %do.end62

do.end62:                                         ; preds = %sw.epilog61
  %45 = bitcast %union.UnionType* %retval to i8*
  %46 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %47 = bitcast double* %coerce.dive to i64*
  %48 = load i64* %47, align 1
  ret i64 %48
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default71 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb34
  ]

sw.bb:                                            ; preds = %do.body
  br label %do.body4

do.body4:                                         ; preds = %sw.bb
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
  switch i64 %mul13, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb14
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog72

sw.bb34:                                          ; preds = %do.body
  br label %do.body35

do.body35:                                        ; preds = %sw.bb34
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
  switch i64 %mul44, label %sw.default68 [
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
  br label %sw.epilog69

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
  br label %sw.epilog69

sw.default68:                                     ; preds = %do.body35
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %sw.default68, %sw.bb56, %sw.bb45
  br label %do.end70

do.end70:                                         ; preds = %sw.epilog69
  br label %sw.epilog72

sw.default71:                                     ; preds = %do.body
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.default71, %do.end70, %do.end
  br label %do.end73

do.end73:                                         ; preds = %sw.epilog72
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %48 = bitcast double* %coerce.dive to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default71 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb34
  ]

sw.bb:                                            ; preds = %do.body
  br label %do.body4

do.body4:                                         ; preds = %sw.bb
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
  switch i64 %mul13, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb14
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog72

sw.bb34:                                          ; preds = %do.body
  br label %do.body35

do.body35:                                        ; preds = %sw.bb34
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
  switch i64 %mul44, label %sw.default68 [
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
  br label %sw.epilog69

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
  br label %sw.epilog69

sw.default68:                                     ; preds = %do.body35
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %sw.default68, %sw.bb56, %sw.bb45
  br label %do.end70

do.end70:                                         ; preds = %sw.epilog69
  br label %sw.epilog72

sw.default71:                                     ; preds = %do.body
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.default71, %do.end70, %do.end
  br label %do.end73

do.end73:                                         ; preds = %sw.epilog72
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %48 = bitcast double* %coerce.dive to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default71 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb34
  ]

sw.bb:                                            ; preds = %do.body
  br label %do.body4

do.body4:                                         ; preds = %sw.bb
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
  switch i64 %mul13, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb14
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog72

sw.bb34:                                          ; preds = %do.body
  br label %do.body35

do.body35:                                        ; preds = %sw.bb34
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
  switch i64 %mul44, label %sw.default68 [
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
  br label %sw.epilog69

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
  br label %sw.epilog69

sw.default68:                                     ; preds = %do.body35
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %sw.default68, %sw.bb56, %sw.bb45
  br label %do.end70

do.end70:                                         ; preds = %sw.epilog69
  br label %sw.epilog72

sw.default71:                                     ; preds = %do.body
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.default71, %do.end70, %do.end
  br label %do.end73

do.end73:                                         ; preds = %sw.epilog72
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %48 = bitcast double* %coerce.dive to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
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
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default71 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb34
  ]

sw.bb:                                            ; preds = %do.body
  br label %do.body4

do.body4:                                         ; preds = %sw.bb
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
  switch i64 %mul13, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb14
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog72

sw.bb34:                                          ; preds = %do.body
  br label %do.body35

do.body35:                                        ; preds = %sw.bb34
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
  switch i64 %mul44, label %sw.default68 [
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
  br label %sw.epilog69

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
  br label %sw.epilog69

sw.default68:                                     ; preds = %do.body35
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %sw.default68, %sw.bb56, %sw.bb45
  br label %do.end70

do.end70:                                         ; preds = %sw.epilog69
  br label %sw.epilog72

sw.default71:                                     ; preds = %do.body
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.default71, %do.end70, %do.end
  br label %do.end73

do.end73:                                         ; preds = %sw.epilog72
  %46 = bitcast %union.UnionType* %retval to i8*
  %47 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %48 = bitcast double* %coerce.dive to i64*
  %49 = load i64* %48, align 1
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv10 = sitofp i32 %14 to double
  %add11 = fadd double %13, %conv10
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %add11, double* %d12, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv10 = sitofp i32 %14 to double
  %sub11 = fsub double %13, %conv10
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %sub11, double* %d12, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv11 = sitofp i32 %14 to double
  %mul12 = fmul double %13, %conv11
  %d13 = bitcast %union.UnionType* %ret to double*
  store double %mul12, double* %d13, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.body
  %12 = load %union.UnionType** %a.addr, align 8
  %d = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d, align 8
  %14 = load i32* %b.addr, align 4
  %conv10 = sitofp i32 %14 to double
  %div11 = fdiv double %13, %conv10
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %div11, double* %d12, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv10 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %add11 = fadd double %conv10, %14
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %add11, double* %d12, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv10 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %sub11 = fsub double %conv10, %14
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %sub11, double* %d12, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv11 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %mul12 = fmul double %conv11, %14
  %d13 = bitcast %union.UnionType* %ret to double*
  store double %mul12, double* %d13, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.body
  %12 = load i32* %a.addr, align 4
  %conv10 = sitofp i32 %12 to double
  %13 = load %union.UnionType** %b.addr, align 8
  %d = bitcast %union.UnionType* %13 to double*
  %14 = load double* %d, align 8
  %div11 = fdiv double %conv10, %14
  %d12 = bitcast %union.UnionType* %ret to double*
  store double %div11, double* %d12, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %15 = bitcast %union.UnionType* %retval to i8*
  %16 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %17 = bitcast double* %coerce.dive to i64*
  %18 = load i64* %17, align 1
  ret i64 %18
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  %10 = load %union.UnionType** %a.addr, align 8
  %d8 = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d8, align 8
  %12 = load double* %b.addr, align 8
  %add9 = fadd double %11, %12
  %d10 = bitcast %union.UnionType* %ret to double*
  store double %add9, double* %d10, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %15 = bitcast double* %coerce.dive to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  %10 = load %union.UnionType** %a.addr, align 8
  %d8 = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d8, align 8
  %12 = load double* %b.addr, align 8
  %sub9 = fsub double %11, %12
  %d10 = bitcast %union.UnionType* %ret to double*
  store double %sub9, double* %d10, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %15 = bitcast double* %coerce.dive to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  %10 = load %union.UnionType** %a.addr, align 8
  %d9 = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d9, align 8
  %12 = load double* %b.addr, align 8
  %mul10 = fmul double %11, %12
  %d11 = bitcast %union.UnionType* %ret to double*
  store double %mul10, double* %d11, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %15 = bitcast double* %coerce.dive to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  %10 = load %union.UnionType** %a.addr, align 8
  %d8 = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d8, align 8
  %12 = load double* %b.addr, align 8
  %div9 = fdiv double %11, %12
  %d10 = bitcast %union.UnionType* %ret to double*
  store double %div9, double* %d10, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %15 = bitcast double* %coerce.dive to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca %union.UnionType*, align 8
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 8
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_addDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %10 = load double* %a.addr, align 8
  %11 = load %union.UnionType** %b.addr, align 8
  %d7 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d7, align 8
  %add8 = fadd double %10, %12
  %d9 = bitcast %union.UnionType* %ret to double*
  store double %add8, double* %d9, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %15 = bitcast double* %coerce.dive to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_subDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %10 = load double* %a.addr, align 8
  %11 = load %union.UnionType** %b.addr, align 8
  %d7 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d7, align 8
  %add8 = fadd double %10, %12
  %d9 = bitcast %union.UnionType* %ret to double*
  store double %add8, double* %d9, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %15 = bitcast double* %coerce.dive to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_mulDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  %10 = load double* %a.addr, align 8
  %11 = load %union.UnionType** %b.addr, align 8
  %d8 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d8, align 8
  %mul9 = fmul double %10, %12
  %d10 = bitcast %union.UnionType* %ret to double*
  store double %mul9, double* %d10, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %15 = bitcast double* %coerce.dive to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_divDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %10 = load double* %a.addr, align 8
  %11 = load %union.UnionType** %b.addr, align 8
  %d7 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d7, align 8
  %div8 = fdiv double %10, %12
  %d9 = bitcast %union.UnionType* %ret to double*
  store double %div8, double* %d9, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %13 = bitcast %union.UnionType* %retval to i8*
  %14 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %15 = bitcast double* %coerce.dive to i64*
  %16 = load i64* %15, align 1
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_eqDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_neDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_gtDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @Object_ltDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 8
  %ret = alloca %union.UnionType, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
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
  switch i64 %mul, label %sw.default [
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
  br label %sw.epilog

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
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %17 = bitcast %union.UnionType* %retval to i8*
  %18 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  %20 = load i64* %19, align 1
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i32 @Object_isTrue(i64 %a.coerce) #0 {
entry:
  %a = alloca %union.UnionType, align 8
  %ret = alloca i32, align 4
  %coerce.dive = getelementptr %union.UnionType* %a, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
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
  switch i64 %mul, label %sw.default [
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

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb
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
  switch i64 %mul, label %sw.default [
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

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb
  %11 = load i32* %ret, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define i8* @int_to_string(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %len = alloca i64, align 8
  %ret = alloca i8*, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 256, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %1 = load i32* %v.addr, align 4
  %call = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i32 %1)
  %arraydecay1 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1)
  %add = add i64 %call2, 1
  store i64 %add, i64* %len, align 8
  %2 = load i64* %len, align 8
  %call3 = call i8* @malloc(i64 %2)
  store i8* %call3, i8** %ret, align 8
  %3 = load i8** %ret, align 8
  %4 = call i64 @llvm.objectsize.i64(i8* %3, i1 false)
  %cmp = icmp ne i64 %4, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8** %ret, align 8
  %arraydecay4 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %6 = load i64* %len, align 8
  %7 = load i8** %ret, align 8
  %8 = call i64 @llvm.objectsize.i64(i8* %7, i1 false)
  %call5 = call i8* @__memcpy_chk(i8* %5, i8* %arraydecay4, i64 %6, i64 %8) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i8** %ret, align 8
  %arraydecay6 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %10 = load i64* %len, align 8
  %call7 = call i8* @__inline_memcpy_chk(i8* %9, i8* %arraydecay6, i64 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %call7, %cond.false ]
  %11 = load i8** %ret, align 8
  ret i8* %11
}

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define i8* @double_to_string(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  %buf = alloca [256 x i8], align 16
  %len = alloca i64, align 8
  %ret = alloca i8*, align 8
  store double %v, double* %v.addr, align 8
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 256, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %1 = load double* %v.addr, align 8
  %call = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %arraydecay, i64 256, i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), double %1)
  %arraydecay1 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1)
  %add = add i64 %call2, 1
  store i64 %add, i64* %len, align 8
  %2 = load i64* %len, align 8
  %call3 = call i8* @malloc(i64 %2)
  store i8* %call3, i8** %ret, align 8
  %3 = load i8** %ret, align 8
  %4 = call i64 @llvm.objectsize.i64(i8* %3, i1 false)
  %cmp = icmp ne i64 %4, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8** %ret, align 8
  %arraydecay4 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %6 = load i64* %len, align 8
  %7 = load i8** %ret, align 8
  %8 = call i64 @llvm.objectsize.i64(i8* %7, i1 false)
  %call5 = call i8* @__memcpy_chk(i8* %5, i8* %arraydecay4, i64 %6, i64 %8) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i8** %ret, align 8
  %arraydecay6 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %10 = load i64* %len, align 8
  %call7 = call i8* @__inline_memcpy_chk(i8* %9, i8* %arraydecay6, i64 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %call7, %cond.false ]
  %11 = load i8** %ret, align 8
  ret i8* %11
}

; Function Attrs: nounwind ssp uwtable
define i64 @expandVariable(i8* %fmt, ...) #0 {
entry:
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
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
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
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8** %p, align 8
  %add.ptr = getelementptr inbounds i8* %7, i64 1
  %8 = load i8* %add.ptr, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 115
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64* %arg_num, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %arg_num, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
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
  %arraydecay24 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay24, i32 0, i32 0
  %gp_offset = load i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then23
  %20 = getelementptr inbounds %struct.__va_list_tag* %arraydecay24, i32 0, i32 3
  %reg_save_area = load i8** %20
  %21 = getelementptr i8* %reg_save_area, i32 %gp_offset
  %22 = bitcast i8* %21 to %union.UnionType**
  %23 = add i32 %gp_offset, 8
  store i32 %23, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then23
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay24, i32 0, i32 2
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
  switch i64 %mul, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb33
    i64 2, label %sw.bb35
    i64 3, label %sw.bb37
  ]

sw.bb:                                            ; preds = %vaarg.end
  %32 = load %union.UnionType** %arg, align 8
  %o30 = bitcast %union.UnionType* %32 to i8**
  %33 = load i8** %o30, align 8
  %34 = ptrtoint i8* %33 to i64
  %conv31 = trunc i64 %34 to i32
  %call32 = call i8* @int_to_string(i32 %conv31)
  store i8* %call32, i8** %str, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %vaarg.end
  %35 = load %union.UnionType** %arg, align 8
  %d = bitcast %union.UnionType* %35 to double*
  %36 = load double* %d, align 8
  %call34 = call i8* @double_to_string(double %36)
  store i8* %call34, i8** %str, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %vaarg.end
  %37 = load %union.UnionType** %arg, align 8
  %o36 = bitcast %union.UnionType* %37 to i8**
  %38 = load i8** %o36, align 8
  %39 = ptrtoint i8* %38 to i64
  %xor = xor i64 %39, -3940649673949184
  %40 = inttoptr i64 %xor to %struct._String*
  %s = getelementptr inbounds %struct._String* %40, i32 0, i32 1
  %41 = load i8** %s, align 8
  store i8* %41, i8** %str, align 8
  br label %sw.epilog

sw.bb37:                                          ; preds = %vaarg.end
  br label %sw.epilog

sw.default:                                       ; preds = %vaarg.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb
  %42 = load i8** %str, align 8
  %43 = load i64* %i, align 8
  %arrayidx = getelementptr inbounds i8** %vla, i64 %43
  store i8* %42, i8** %arrayidx, align 8
  %44 = load i8** %str, align 8
  %call38 = call i64 @strlen(i8* %44)
  %45 = load i64* %all_length, align 8
  %add = add i64 %45, %call38
  store i64 %add, i64* %all_length, align 8
  %46 = load i8** %p, align 8
  %incdec.ptr39 = getelementptr inbounds i8* %46, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true18, %for.body14
  %47 = load i64* %all_length, align 8
  %inc40 = add i64 %47, 1
  store i64 %inc40, i64* %all_length, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else, %sw.epilog
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %48 = load i8** %p, align 8
  %incdec.ptr43 = getelementptr inbounds i8* %48, i32 1
  store i8* %incdec.ptr43, i8** %p, align 8
  br label %for.cond10

for.end44:                                        ; preds = %for.cond10
  %49 = load i64* %all_length, align 8
  %vla45 = alloca i8, i64 %49, align 16
  store i64 0, i64* %i, align 8
  store i64 0, i64* %k, align 8
  %50 = load i8** %fmt.addr, align 8
  store i8* %50, i8** %p, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc80, %for.end44
  %51 = load i8** %p, align 8
  %52 = load i8* %51, align 1
  %conv47 = sext i8 %52 to i32
  %cmp48 = icmp ne i32 %conv47, 0
  br i1 %cmp48, label %for.body50, label %for.end82

for.body50:                                       ; preds = %for.cond46
  %53 = load i8** %p, align 8
  %54 = load i8* %53, align 1
  %conv51 = sext i8 %54 to i32
  %cmp52 = icmp eq i32 %conv51, 37
  br i1 %cmp52, label %land.lhs.true54, label %if.else74

land.lhs.true54:                                  ; preds = %for.body50
  %55 = load i8** %p, align 8
  %add.ptr55 = getelementptr inbounds i8* %55, i64 1
  %56 = load i8* %add.ptr55, align 1
  %conv56 = sext i8 %56 to i32
  %cmp57 = icmp eq i32 %conv56, 115
  br i1 %cmp57, label %if.then59, label %if.else74

if.then59:                                        ; preds = %land.lhs.true54
  %57 = load i64* %i, align 8
  %arrayidx61 = getelementptr inbounds i8** %vla, i64 %57
  %58 = load i8** %arrayidx61, align 8
  store i8* %58, i8** %s60, align 8
  %59 = load i8** %s60, align 8
  %call62 = call i64 @strlen(i8* %59)
  store i64 %call62, i64* %len, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc70, %if.then59
  %60 = load i64* %j, align 8
  %61 = load i64* %len, align 8
  %cmp64 = icmp ult i64 %60, %61
  br i1 %cmp64, label %for.body66, label %for.end72

for.body66:                                       ; preds = %for.cond63
  %62 = load i64* %j, align 8
  %63 = load i8** %s60, align 8
  %arrayidx67 = getelementptr inbounds i8* %63, i64 %62
  %64 = load i8* %arrayidx67, align 1
  %65 = load i64* %i, align 8
  %arrayidx68 = getelementptr inbounds i8* %vla45, i64 %65
  store i8 %64, i8* %arrayidx68, align 1
  %66 = load i64* %i, align 8
  %inc69 = add i64 %66, 1
  store i64 %inc69, i64* %i, align 8
  br label %for.inc70

for.inc70:                                        ; preds = %for.body66
  %67 = load i64* %j, align 8
  %inc71 = add i64 %67, 1
  store i64 %inc71, i64* %j, align 8
  br label %for.cond63

for.end72:                                        ; preds = %for.cond63
  %68 = load i8** %p, align 8
  %incdec.ptr73 = getelementptr inbounds i8* %68, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8
  br label %if.end77

if.else74:                                        ; preds = %land.lhs.true54, %for.body50
  %69 = load i64* %k, align 8
  %70 = load i8** %fmt.addr, align 8
  %arrayidx75 = getelementptr inbounds i8* %70, i64 %69
  %71 = load i8* %arrayidx75, align 1
  %72 = load i64* %i, align 8
  %arrayidx76 = getelementptr inbounds i8* %vla45, i64 %72
  store i8 %71, i8* %arrayidx76, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %for.end72
  %73 = load i64* %i, align 8
  %inc78 = add i64 %73, 1
  store i64 %inc78, i64* %i, align 8
  %74 = load i64* %k, align 8
  %inc79 = add i64 %74, 1
  store i64 %inc79, i64* %k, align 8
  br label %for.inc80

for.inc80:                                        ; preds = %if.end77
  %75 = load i8** %p, align 8
  %incdec.ptr81 = getelementptr inbounds i8* %75, i32 1
  store i8* %incdec.ptr81, i8** %p, align 8
  br label %for.cond46

for.end82:                                        ; preds = %for.cond46
  %76 = load %struct.__sFILE** @__stderrp, align 8
  %call83 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %76, i8* getelementptr inbounds ([12 x i8]* @.str41, i32 0, i32 0), i8* %vla45)
  %call84 = call i64 @new_String(i8* %vla45)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %77 = bitcast double* %coerce.dive to i64*
  store i64 %call84, i64* %77, align 1
  store i32 1, i32* %cleanup.dest.slot
  %78 = load i8** %saved_stack
  call void @llvm.stackrestore(i8* %78)
  %coerce.dive85 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %79 = bitcast double* %coerce.dive85 to i64*
  %80 = load i64* %79, align 1
  ret i64 %80
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
  %call = call %struct._Object* @fetch_object()
  %0 = bitcast %struct._Object* %call to %struct._FFIObject*
  store %struct._FFIObject* %0, %struct._FFIObject** %ffi, align 8
  %size = getelementptr inbounds %struct._Array* %array, i32 0, i32 2
  store i64 0, i64* %size, align 8
  %list = getelementptr inbounds %struct._Array* %array, i32 0, i32 1
  store %union.UnionType** null, %union.UnionType*** %list, align 8
  %call1 = call i64 @new_Hash(%struct._Array* %array)
  %coerce.dive = getelementptr %union.UnionType* %agg.tmp, i32 0, i32 0
  %1 = bitcast double* %coerce.dive to i64*
  store i64 %call1, i64* %1, align 1
  %coerce.dive2 = getelementptr %union.UnionType* %agg.tmp, i32 0, i32 0
  %2 = bitcast double* %coerce.dive2 to i64*
  %3 = load i64* %2, align 1
  %call3 = call i64 @new_HashRef(i64 %3)
  %coerce.dive4 = getelementptr %union.UnionType* %hash_ref, i32 0, i32 0
  %4 = bitcast double* %coerce.dive4 to i64*
  store i64 %call3, i64* %4, align 1
  %5 = load i8** %name.addr, align 8
  %call5 = call %struct._Package* @get_pkg(i8* %5)
  store %struct._Package* %call5, %struct._Package** %pkg, align 8
  %6 = load %struct._FFIObject** %ffi, align 8
  %header = getelementptr inbounds %struct._FFIObject* %6, i32 0, i32 0
  store i32 12, i32* %header, align 4
  %7 = load %struct._FFIObject** %ffi, align 8
  %members = getelementptr inbounds %struct._FFIObject* %7, i32 0, i32 1
  %8 = bitcast %union.UnionType* %members to i8*
  %9 = bitcast %union.UnionType* %hash_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load %struct._Package** %pkg, align 8
  %11 = load %struct._FFIObject** %ffi, align 8
  %mtds = getelementptr inbounds %struct._FFIObject* %11, i32 0, i32 2
  store %struct._Package* %10, %struct._Package** %mtds, align 8
  %12 = load i8** %name.addr, align 8
  %13 = load %struct._FFIObject** %ffi, align 8
  %pkg_name = getelementptr inbounds %struct._FFIObject* %13, i32 0, i32 3
  store i8* %12, i8** %pkg_name, align 8
  %14 = load i8** %ptr.addr, align 8
  %15 = load %struct._FFIObject** %ffi, align 8
  %ptr6 = getelementptr inbounds %struct._FFIObject* %15, i32 0, i32 4
  store i8* %14, i8** %ptr6, align 8
  %16 = load %struct._FFIObject** %ffi, align 8
  %17 = ptrtoint %struct._FFIObject* %16 to i64
  %or = or i64 %17, -4503599627370496
  %or7 = or i64 %or, 3377699720527872
  %18 = inttoptr i64 %or7 to i8*
  %o = bitcast %union.UnionType* %ret to i8**
  store i8* %18, i8** %o, align 8
  %19 = bitcast %union.UnionType* %retval to i8*
  %20 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %coerce.dive8 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %21 = bitcast double* %coerce.dive8 to i64*
  %22 = load i64* %21, align 1
  ret i64 %22
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }
