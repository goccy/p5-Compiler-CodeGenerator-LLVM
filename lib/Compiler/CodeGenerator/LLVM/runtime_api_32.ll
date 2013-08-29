; ModuleID = 'gen/runtime_api_32.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.7.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sbuf = type { i8*, i32 }
%struct.__sFILEX = type opaque
%union.UnionType = type { double }
%struct._Hash = type { i32, %union.UnionType*, %struct._String**, i32 }
%struct._String = type { i32, i8*, i32, i32 }
%struct._Object = type { i32, %union.UnionType, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._Array = type { i32, %union.UnionType**, i32 }
%struct._IOHandlerObject = type { i32, %struct.__sFILE*, i8*, i8* }
%struct._Undef = type { i32 }
%struct._HashRef = type { i32, %union.UnionType }
%struct._ArrayRef = type { i32, %union.UnionType }
%struct._BlessedObject = type { i32, %union.UnionType, %struct._Package*, i8* }
%struct._Package = type { i32, %union.UnionType*, %struct._String**, i32, %struct._Array*, i8* }
%struct._CodeRef = type { i32, i64 (%struct._Array*)* }
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
@undef = common global %union.UnionType zeroinitializer, align 4
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
@base_hash_table = common global %union.UnionType* null, align 4
@pkg_map = common global %struct._Hash* null, align 4
@.str33 = private unnamed_addr constant [54 x i8] c"ERROR!: bless function must be required two argument\0A\00", align 1
@__func__.bless = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@.str34 = private unnamed_addr constant [21 x i8] c"unknown package name\00", align 1
@.str35 = private unnamed_addr constant [30 x i8] c"pkg && \22unknown package name\22\00", align 1
@object_pool = common global %struct._Object** null, align 4
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

; Function Attrs: nounwind ssp
define i64 @_open(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %size = alloca i32, align 4
  %_handler = alloca %union.UnionType*, align 4
  %_type = alloca %union.UnionType*, align 4
  %_filename = alloca %union.UnionType*, align 4
  %io_type = alloca i8*, align 4
  %filename = alloca i8*, align 4
  %mode = alloca i8*, align 4
  %fp = alloca %struct.__sFILE*, align 4
  %coerce = alloca %union.UnionType, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load i32* %size, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else42

if.then:                                          ; preds = %entry
  %3 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %3, i32 0, i32 1
  %4 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %4, i32 0
  %5 = load %union.UnionType** %arrayidx, align 4
  store %union.UnionType* %5, %union.UnionType** %_handler, align 4
  %6 = load %struct._Array** %args.addr, align 4
  %list2 = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list2, align 4
  %arrayidx3 = getelementptr inbounds %union.UnionType** %7, i32 1
  %8 = load %union.UnionType** %arrayidx3, align 4
  store %union.UnionType* %8, %union.UnionType** %_type, align 4
  %9 = load %struct._Array** %args.addr, align 4
  %list4 = getelementptr inbounds %struct._Array* %9, i32 0, i32 1
  %10 = load %union.UnionType*** %list4, align 4
  %arrayidx5 = getelementptr inbounds %union.UnionType** %10, i32 2
  %11 = load %union.UnionType** %arrayidx5, align 4
  store %union.UnionType* %11, %union.UnionType** %_filename, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %12 = load %union.UnionType** %_type, align 4
  %o = bitcast %union.UnionType* %12 to i64*
  %13 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %13)
  %cmp6 = icmp ne i64 %call, 2
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %do.body
  %14 = load %struct.__sFILE** @__stderrp, align 4
  %15 = load %union.UnionType** %_type, align 4
  %o8 = bitcast %union.UnionType* %15 to i64*
  %16 = load i64* %o8, align 4
  %call9 = call i64 @TYPE(i64 %16)
  %call10 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call9)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body11

do.body11:                                        ; preds = %do.end
  %17 = load %union.UnionType** %_filename, align 4
  %o12 = bitcast %union.UnionType* %17 to i64*
  %18 = load i64* %o12, align 4
  %call13 = call i64 @TYPE(i64 %18)
  %cmp14 = icmp ne i64 %call13, 2
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %do.body11
  %19 = load %struct.__sFILE** @__stderrp, align 4
  %20 = load %union.UnionType** %_filename, align 4
  %o16 = bitcast %union.UnionType* %20 to i64*
  %21 = load i64* %o16, align 4
  %call17 = call i64 @TYPE(i64 %21)
  %call18 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call17)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end19:                                         ; preds = %do.body11
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  %22 = load %union.UnionType** %_type, align 4
  %o21 = bitcast %union.UnionType* %22 to i64*
  %23 = load i64* %o21, align 4
  %and = and i64 %23, 268435455
  %conv = trunc i64 %and to i32
  %24 = inttoptr i32 %conv to i8*
  %25 = bitcast i8* %24 to %struct._String*
  %s = getelementptr inbounds %struct._String* %25, i32 0, i32 1
  %26 = load i8** %s, align 4
  store i8* %26, i8** %io_type, align 4
  %27 = load %union.UnionType** %_filename, align 4
  %o22 = bitcast %union.UnionType* %27 to i64*
  %28 = load i64* %o22, align 4
  %and23 = and i64 %28, 268435455
  %conv24 = trunc i64 %and23 to i32
  %29 = inttoptr i32 %conv24 to i8*
  %30 = bitcast i8* %29 to %struct._String*
  %s25 = getelementptr inbounds %struct._String* %30, i32 0, i32 1
  %31 = load i8** %s25, align 4
  store i8* %31, i8** %filename, align 4
  store i8* getelementptr inbounds ([1 x i8]* @.str3, i32 0, i32 0), i8** %mode, align 4
  %32 = load i8** %io_type, align 4
  %call26 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0), i32 1)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.else, label %if.then27

if.then27:                                        ; preds = %do.end20
  store i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i8** %mode, align 4
  br label %if.end32

if.else:                                          ; preds = %do.end20
  %33 = load i8** %io_type, align 4
  %call28 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i32 1)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i8** %mode, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then27
  store %struct.__sFILE* null, %struct.__sFILE** %fp, align 4
  %34 = load i8** %filename, align 4
  %35 = load i8** %mode, align 4
  %call33 = call %struct.__sFILE* @"\01_fopen$UNIX2003"(i8* %34, i8* %35)
  store %struct.__sFILE* %call33, %struct.__sFILE** %fp, align 4
  %cmp34 = icmp eq %struct.__sFILE* %call33, null
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end32
  %36 = load %struct.__sFILE** @__stderrp, align 4
  %call37 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %36, i8* getelementptr inbounds ([26 x i8]* @.str8, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end38:                                         ; preds = %if.end32
  %37 = load %struct._Array** %args.addr, align 4
  %list39 = getelementptr inbounds %struct._Array* %37, i32 0, i32 1
  %38 = load %union.UnionType*** %list39, align 4
  %arrayidx40 = getelementptr inbounds %union.UnionType** %38, i32 0
  %39 = load %union.UnionType** %arrayidx40, align 4
  %40 = load i8** %filename, align 4
  %41 = load i8** %mode, align 4
  %42 = load %struct.__sFILE** %fp, align 4
  %call41 = call i64 @new_IOHandler(i8* %40, i8* %41, %struct.__sFILE* %42)
  %coerce.dive = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %43 = bitcast double* %coerce.dive to i64*
  store i64 %call41, i64* %43, align 1
  %44 = bitcast %union.UnionType* %39 to i8*
  %45 = bitcast %union.UnionType* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 8, i32 4, i1 false)
  br label %if.end44

if.else42:                                        ; preds = %entry
  %46 = load %struct.__sFILE** @__stderrp, align 4
  %47 = load i32* %size, align 4
  %call43 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %46, i8* getelementptr inbounds ([23 x i8]* @.str9, i32 0, i32 0), i32 %47)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__._open, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 34, i8* getelementptr inbounds ([34 x i8]* @.str10, i32 0, i32 0)) #8
  unreachable

if.end44:                                         ; preds = %if.end38
  %o45 = bitcast %union.UnionType* %ret to i64*
  store i64 -64424509440, i64* %o45, align 4
  %48 = bitcast %union.UnionType* %retval to i8*
  %49 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 8, i32 4, i1 false)
  %coerce.dive46 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %50 = bitcast double* %coerce.dive46 to i64*
  %51 = load i64* %50, align 1
  ret i64 %51
}

; Function Attrs: nounwind ssp
define i64 @TYPE(i64 %data) #0 {
entry:
  %retval = alloca i64, align 4
  %data.addr = alloca i64, align 8
  store i64 %data, i64* %data.addr, align 8
  %0 = load i64* %data.addr, align 8
  %cmp = icmp uge i64 %0, -12884901888
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 13, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64* %data.addr, align 8
  %cmp1 = icmp uge i64 %1, -17179869184
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i64 12, i64* %retval
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load i64* %data.addr, align 8
  %cmp4 = icmp uge i64 %2, -21474836480
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i64 11, i64* %retval
  br label %return

if.else6:                                         ; preds = %if.else3
  %3 = load i64* %data.addr, align 8
  %cmp7 = icmp uge i64 %3, -25769803776
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  store i64 10, i64* %retval
  br label %return

if.else9:                                         ; preds = %if.else6
  %4 = load i64* %data.addr, align 8
  %cmp10 = icmp uge i64 %4, -30064771072
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  store i64 9, i64* %retval
  br label %return

if.else12:                                        ; preds = %if.else9
  %5 = load i64* %data.addr, align 8
  %cmp13 = icmp uge i64 %5, -34359738368
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  store i64 8, i64* %retval
  br label %return

if.else15:                                        ; preds = %if.else12
  %6 = load i64* %data.addr, align 8
  %cmp16 = icmp uge i64 %6, -38654705664
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else15
  store i64 7, i64* %retval
  br label %return

if.else18:                                        ; preds = %if.else15
  %7 = load i64* %data.addr, align 8
  %cmp19 = icmp uge i64 %7, -42949672960
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else18
  store i64 6, i64* %retval
  br label %return

if.else21:                                        ; preds = %if.else18
  %8 = load i64* %data.addr, align 8
  %cmp22 = icmp uge i64 %8, -47244640256
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  store i64 5, i64* %retval
  br label %return

if.else24:                                        ; preds = %if.else21
  %9 = load i64* %data.addr, align 8
  %cmp25 = icmp uge i64 %9, -51539607552
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else24
  store i64 4, i64* %retval
  br label %return

if.else27:                                        ; preds = %if.else24
  %10 = load i64* %data.addr, align 8
  %cmp28 = icmp uge i64 %10, -55834574848
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else27
  store i64 3, i64* %retval
  br label %return

if.else30:                                        ; preds = %if.else27
  %11 = load i64* %data.addr, align 8
  %cmp31 = icmp uge i64 %11, -60129542144
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else30
  store i64 2, i64* %retval
  br label %return

if.else33:                                        ; preds = %if.else30
  %12 = load i64* %data.addr, align 8
  %cmp34 = icmp uge i64 %12, -64424509440
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else33
  store i64 1, i64* %retval
  br label %return

if.else36:                                        ; preds = %if.else33
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else36, %if.then35, %if.then32, %if.then29, %if.then26, %if.then23, %if.then20, %if.then17, %if.then14, %if.then11, %if.then8, %if.then5, %if.then2, %if.then
  %13 = load i64* %retval
  ret i64 %13
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

declare i32 @strncmp(i8*, i8*, i32) #1

declare %struct.__sFILE* @"\01_fopen$UNIX2003"(i8*, i8*) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind ssp
define i64 @new_IOHandler(i8* %filename, i8* %mode, %struct.__sFILE* %fp) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %filename.addr = alloca i8*, align 4
  %mode.addr = alloca i8*, align 4
  %fp.addr = alloca %struct.__sFILE*, align 4
  %ret = alloca %union.UnionType, align 4
  %o = alloca %struct._IOHandlerObject*, align 4
  store i8* %filename, i8** %filename.addr, align 4
  store i8* %mode, i8** %mode.addr, align 4
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 4
  %call = call %struct._Object* @fetch_object()
  %0 = bitcast %struct._Object* %call to %struct._IOHandlerObject*
  store %struct._IOHandlerObject* %0, %struct._IOHandlerObject** %o, align 4
  %1 = load %struct.__sFILE** %fp.addr, align 4
  %2 = load %struct._IOHandlerObject** %o, align 4
  %fp1 = getelementptr inbounds %struct._IOHandlerObject* %2, i32 0, i32 1
  store %struct.__sFILE* %1, %struct.__sFILE** %fp1, align 4
  %3 = load i8** %mode.addr, align 4
  %4 = load %struct._IOHandlerObject** %o, align 4
  %mode2 = getelementptr inbounds %struct._IOHandlerObject* %4, i32 0, i32 3
  store i8* %3, i8** %mode2, align 4
  %5 = load i8** %filename.addr, align 4
  %6 = load %struct._IOHandlerObject** %o, align 4
  %filename3 = getelementptr inbounds %struct._IOHandlerObject* %6, i32 0, i32 2
  store i8* %5, i8** %filename3, align 4
  %7 = load %struct._IOHandlerObject** %o, align 4
  %8 = ptrtoint %struct._IOHandlerObject* %7 to i64
  %or = or i64 %8, -25769803776
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) #3

; Function Attrs: nounwind ssp
define i64 @_binmode(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %arg = alloca %union.UnionType, align 4
  %handler = alloca %struct._IOHandlerObject*, align 4
  %mode = alloca i8*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  %3 = bitcast %union.UnionType* %arg to i8*
  %4 = bitcast %union.UnionType* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 8, i32 4, i1 false)
  %o = bitcast %union.UnionType* %arg to i64*
  %5 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %5)
  %cmp = icmp eq i64 %call, 7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %o1 = bitcast %union.UnionType* %arg to i64*
  %6 = load i64* %o1, align 4
  %and = and i64 %6, 268435455
  %conv = trunc i64 %and to i32
  %7 = inttoptr i32 %conv to i8*
  %8 = bitcast i8* %7 to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %8, i32 0, i32 1
  %9 = bitcast %union.UnionType* %arg to i8*
  %10 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = bitcast %union.UnionType* %arg to i8*
  %12 = bitcast %union.UnionType* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body

do.body:                                          ; preds = %cond.end
  %o2 = bitcast %union.UnionType* %arg to i64*
  %13 = load i64* %o2, align 4
  %call3 = call i64 @TYPE(i64 %13)
  %cmp4 = icmp ne i64 %call3, 10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %14 = load %struct.__sFILE** @__stderrp, align 4
  %o6 = bitcast %union.UnionType* %arg to i64*
  %15 = load i64* %o6, align 4
  %call7 = call i64 @TYPE(i64 %15)
  %call8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call7)
  call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8]* @__func__._binmode, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 45, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %o9 = bitcast %union.UnionType* %arg to i64*
  %16 = load i64* %o9, align 4
  %and10 = and i64 %16, 268435455
  %conv11 = trunc i64 %and10 to i32
  %17 = inttoptr i32 %conv11 to i8*
  %18 = bitcast i8* %17 to %struct._IOHandlerObject*
  store %struct._IOHandlerObject* %18, %struct._IOHandlerObject** %handler, align 4
  store i8* null, i8** %mode, align 4
  %19 = load %struct._IOHandlerObject** %handler, align 4
  %mode12 = getelementptr inbounds %struct._IOHandlerObject* %19, i32 0, i32 3
  %20 = load i8** %mode12, align 4
  %call13 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0), i32 2)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.end
  store i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i8** %mode, align 4
  br label %if.end20

if.else:                                          ; preds = %do.end
  %21 = load %struct._IOHandlerObject** %handler, align 4
  %mode15 = getelementptr inbounds %struct._IOHandlerObject* %21, i32 0, i32 3
  %22 = load i8** %mode15, align 4
  %call16 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), i32 2)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0), i8** %mode, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then14
  %23 = load %struct._IOHandlerObject** %handler, align 4
  %filename = getelementptr inbounds %struct._IOHandlerObject* %23, i32 0, i32 2
  %24 = load i8** %filename, align 4
  %25 = load i8** %mode, align 4
  %26 = load %struct._IOHandlerObject** %handler, align 4
  %fp = getelementptr inbounds %struct._IOHandlerObject* %26, i32 0, i32 1
  %27 = load %struct.__sFILE** %fp, align 4
  %call21 = call %struct.__sFILE* @"\01_freopen$UNIX2003"(i8* %24, i8* %25, %struct.__sFILE* %27)
  %28 = load %struct._IOHandlerObject** %handler, align 4
  %fp22 = getelementptr inbounds %struct._IOHandlerObject* %28, i32 0, i32 1
  store %struct.__sFILE* %call21, %struct.__sFILE** %fp22, align 4
  %29 = load %struct._IOHandlerObject** %handler, align 4
  %fp23 = getelementptr inbounds %struct._IOHandlerObject* %29, i32 0, i32 1
  %30 = load %struct.__sFILE** %fp23, align 4
  %tobool24 = icmp ne %struct.__sFILE* %30, null
  br i1 %tobool24, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end20
  %31 = load %struct.__sFILE** @__stderrp, align 4
  %32 = load %struct._IOHandlerObject** %handler, align 4
  %filename26 = getelementptr inbounds %struct._IOHandlerObject* %32, i32 0, i32 2
  %33 = load i8** %filename26, align 4
  %call27 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([30 x i8]* @.str13, i32 0, i32 0), i8* %33)
  call void @exit(i32 1) #8
  unreachable

if.end28:                                         ; preds = %if.end20
  %o29 = bitcast %union.UnionType* %ret to i64*
  store i64 -64424509440, i64* %o29, align 4
  %34 = bitcast %union.UnionType* %retval to i8*
  %35 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %36 = bitcast double* %coerce.dive to i64*
  %37 = load i64* %36, align 1
  ret i64 %37
}

declare %struct.__sFILE* @"\01_freopen$UNIX2003"(i8*, i8*, %struct.__sFILE*) #1

; Function Attrs: nounwind ssp
define i64 @_chr(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %arg = alloca %union.UnionType, align 4
  %ch = alloca i32, align 4
  %buf = alloca [8 x i8], align 1
  %ret = alloca %union.UnionType, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  %3 = bitcast %union.UnionType* %arg to i8*
  %4 = bitcast %union.UnionType* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 8, i32 4, i1 false)
  %o = bitcast %union.UnionType* %arg to i64*
  %5 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %5)
  %cmp = icmp eq i64 %call, 7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %o1 = bitcast %union.UnionType* %arg to i64*
  %6 = load i64* %o1, align 4
  %and = and i64 %6, 268435455
  %conv = trunc i64 %and to i32
  %7 = inttoptr i32 %conv to i8*
  %8 = bitcast i8* %7 to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %8, i32 0, i32 1
  %9 = bitcast %union.UnionType* %arg to i8*
  %10 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = bitcast %union.UnionType* %arg to i8*
  %12 = bitcast %union.UnionType* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body

do.body:                                          ; preds = %cond.end
  %o2 = bitcast %union.UnionType* %arg to i64*
  %13 = load i64* %o2, align 4
  %call3 = call i64 @TYPE(i64 %13)
  %cmp4 = icmp ne i64 %call3, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %14 = load %struct.__sFILE** @__stderrp, align 4
  %o6 = bitcast %union.UnionType* %arg to i64*
  %15 = load i64* %o6, align 4
  %call7 = call i64 @TYPE(i64 %15)
  %call8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call7)
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._chr, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 66, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %o9 = bitcast %union.UnionType* %arg to i64*
  %16 = load i64* %o9, align 4
  %conv10 = trunc i64 %16 to i32
  store i32 %conv10, i32* %ch, align 4
  %17 = bitcast [8 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i32(i8* %17, i8 0, i32 8, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [8 x i8]* %buf, i32 0, i32 0
  %18 = load i32* %ch, align 4
  %call11 = call i32 (i8*, i32, i32, i8*, ...)* @__sprintf_chk(i8* %arraydecay, i32 0, i32 8, i8* getelementptr inbounds ([3 x i8]* @.str14, i32 0, i32 0), i32 %18)
  %arraydecay12 = getelementptr inbounds [8 x i8]* %buf, i32 0, i32 0
  %call13 = call i64 @new_String(i8* %arraydecay12)
  %coerce.dive = getelementptr %union.UnionType* %ret, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  store i64 %call13, i64* %19, align 1
  %20 = bitcast %union.UnionType* %retval to i8*
  %21 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %coerce.dive14 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %22 = bitcast double* %coerce.dive14 to i64*
  %23 = load i64* %22, align 1
  ret i64 %23
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #3

declare i32 @__sprintf_chk(i8*, i32, i32, i8*, ...) #1

; Function Attrs: nounwind ssp
define i64 @new_String(i8* %str) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %str.addr = alloca i8*, align 4
  %ret = alloca %union.UnionType, align 4
  %o = alloca %struct._String*, align 4
  store i8* %str, i8** %str.addr, align 4
  %call = call i8* @calloc(i32 16, i32 1)
  %0 = bitcast i8* %call to %struct._String*
  store %struct._String* %0, %struct._String** %o, align 4
  %1 = load %struct._String** %o, align 4
  %header = getelementptr inbounds %struct._String* %1, i32 0, i32 0
  store i32 2, i32* %header, align 4
  %2 = load i8** %str.addr, align 4
  %call1 = call i32 @strlen(i8* %2)
  %add = add i32 %call1, 1
  %3 = load %struct._String** %o, align 4
  %len = getelementptr inbounds %struct._String* %3, i32 0, i32 2
  store i32 %add, i32* %len, align 4
  %4 = load %struct._String** %o, align 4
  %len2 = getelementptr inbounds %struct._String* %4, i32 0, i32 2
  %5 = load i32* %len2, align 4
  %call3 = call i8* @malloc(i32 %5)
  %6 = load %struct._String** %o, align 4
  %s = getelementptr inbounds %struct._String* %6, i32 0, i32 1
  store i8* %call3, i8** %s, align 4
  %7 = load %struct._String** %o, align 4
  %s4 = getelementptr inbounds %struct._String* %7, i32 0, i32 1
  %8 = load i8** %s4, align 4
  %9 = call i32 @llvm.objectsize.i32(i8* %8, i1 false)
  %cmp = icmp ne i32 %9, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load %struct._String** %o, align 4
  %s5 = getelementptr inbounds %struct._String* %10, i32 0, i32 1
  %11 = load i8** %s5, align 4
  %12 = load i8** %str.addr, align 4
  %13 = load %struct._String** %o, align 4
  %len6 = getelementptr inbounds %struct._String* %13, i32 0, i32 2
  %14 = load i32* %len6, align 4
  %15 = load %struct._String** %o, align 4
  %s7 = getelementptr inbounds %struct._String* %15, i32 0, i32 1
  %16 = load i8** %s7, align 4
  %17 = call i32 @llvm.objectsize.i32(i8* %16, i1 false)
  %call8 = call i8* @__memcpy_chk(i8* %11, i8* %12, i32 %14, i32 %17) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load %struct._String** %o, align 4
  %s9 = getelementptr inbounds %struct._String* %18, i32 0, i32 1
  %19 = load i8** %s9, align 4
  %20 = load i8** %str.addr, align 4
  %21 = load %struct._String** %o, align 4
  %len10 = getelementptr inbounds %struct._String* %21, i32 0, i32 2
  %22 = load i32* %len10, align 4
  %call11 = call i8* @__inline_memcpy_chk(i8* %19, i8* %20, i32 %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ %call11, %cond.false ]
  %23 = load i8** %str.addr, align 4
  %24 = load %struct._String** %o, align 4
  %len12 = getelementptr inbounds %struct._String* %24, i32 0, i32 2
  %25 = load i32* %len12, align 4
  %call13 = call i32 @make_hash(i8* %23, i32 %25)
  %rem = urem i32 %call13, 512
  %26 = load %struct._String** %o, align 4
  %hash = getelementptr inbounds %struct._String* %26, i32 0, i32 3
  store i32 %rem, i32* %hash, align 4
  %27 = load %struct._String** %o, align 4
  %28 = ptrtoint %struct._String* %27 to i64
  %or = or i64 %28, -60129542144
  %o14 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o14, align 4
  %29 = bitcast %union.UnionType* %retval to i8*
  %30 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %31 = bitcast double* %coerce.dive to i64*
  %32 = load i64* %31, align 1
  ret i64 %32
}

; Function Attrs: nounwind ssp
define i64 @_close(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %arg = alloca %union.UnionType, align 4
  %handler = alloca %struct._IOHandlerObject*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  %3 = bitcast %union.UnionType* %arg to i8*
  %4 = bitcast %union.UnionType* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 8, i32 4, i1 false)
  %o = bitcast %union.UnionType* %arg to i64*
  %5 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %5)
  %cmp = icmp eq i64 %call, 7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %o1 = bitcast %union.UnionType* %arg to i64*
  %6 = load i64* %o1, align 4
  %and = and i64 %6, 268435455
  %conv = trunc i64 %and to i32
  %7 = inttoptr i32 %conv to i8*
  %8 = bitcast i8* %7 to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %8, i32 0, i32 1
  %9 = bitcast %union.UnionType* %arg to i8*
  %10 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = bitcast %union.UnionType* %arg to i8*
  %12 = bitcast %union.UnionType* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body

do.body:                                          ; preds = %cond.end
  %o2 = bitcast %union.UnionType* %arg to i64*
  %13 = load i64* %o2, align 4
  %call3 = call i64 @TYPE(i64 %13)
  %cmp4 = icmp ne i64 %call3, 10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %14 = load %struct.__sFILE** @__stderrp, align 4
  %o6 = bitcast %union.UnionType* %arg to i64*
  %15 = load i64* %o6, align 4
  %call7 = call i64 @TYPE(i64 %15)
  %call8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call7)
  call void @__assert_rtn(i8* getelementptr inbounds ([7 x i8]* @__func__._close, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 79, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %o9 = bitcast %union.UnionType* %arg to i64*
  %16 = load i64* %o9, align 4
  %and10 = and i64 %16, 268435455
  %conv11 = trunc i64 %and10 to i32
  %17 = inttoptr i32 %conv11 to i8*
  %18 = bitcast i8* %17 to %struct._IOHandlerObject*
  store %struct._IOHandlerObject* %18, %struct._IOHandlerObject** %handler, align 4
  %19 = load %struct._IOHandlerObject** %handler, align 4
  %fp = getelementptr inbounds %struct._IOHandlerObject* %19, i32 0, i32 1
  %20 = load %struct.__sFILE** %fp, align 4
  %call12 = call i32 @fclose(%struct.__sFILE* %20)
  %conv13 = zext i32 %call12 to i64
  %or = or i64 %conv13, -64424509440
  %o14 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o14, align 4
  %21 = bitcast %union.UnionType* %retval to i8*
  %22 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %23 = bitcast double* %coerce.dive to i64*
  %24 = load i64* %23, align 1
  ret i64 %24
}

declare i32 @fclose(%struct.__sFILE*) #1

; Function Attrs: nounwind ssp
define i64 @_sqrt(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %arg = alloca %union.UnionType, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  %3 = bitcast %union.UnionType* %arg to i8*
  %4 = bitcast %union.UnionType* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 8, i32 4, i1 false)
  %o = bitcast %union.UnionType* %arg to i64*
  %5 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %5)
  %cmp = icmp eq i64 %call, 7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %o1 = bitcast %union.UnionType* %arg to i64*
  %6 = load i64* %o1, align 4
  %and = and i64 %6, 268435455
  %conv = trunc i64 %and to i32
  %7 = inttoptr i32 %conv to i8*
  %8 = bitcast i8* %7 to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %8, i32 0, i32 1
  %9 = bitcast %union.UnionType* %arg to i8*
  %10 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = bitcast %union.UnionType* %arg to i8*
  %12 = bitcast %union.UnionType* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %d = bitcast %union.UnionType* %arg to double*
  %13 = load double* %d, align 4
  %call2 = call double @sqrt(double %13) #5
  %d3 = bitcast %union.UnionType* %ret to double*
  store double %call2, double* %d3, align 4
  %14 = bitcast %union.UnionType* %retval to i8*
  %15 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %16 = bitcast double* %coerce.dive to i64*
  %17 = load i64* %16, align 1
  ret i64 %17
}

; Function Attrs: nounwind readnone
declare double @sqrt(double) #4

; Function Attrs: nounwind ssp
define i64 @_abs(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %arg = alloca %union.UnionType*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  store %union.UnionType* %2, %union.UnionType** %arg, align 4
  %3 = load %union.UnionType** %arg, align 4
  %o = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %4)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %union.UnionType** %arg, align 4
  %o1 = bitcast %union.UnionType* %5 to i64*
  %6 = load i64* %o1, align 4
  %conv = trunc i64 %6 to i32
  %call2 = call i32 @abs(i32 %conv) #5
  %conv3 = zext i32 %call2 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load %union.UnionType** %arg, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %call6 = call double @fabs(double %8) #5
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %call6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._abs, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 106, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind ssp
define i64 @_int(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %arg = alloca %union.UnionType*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  store %union.UnionType* %2, %union.UnionType** %arg, align 4
  %3 = load %union.UnionType** %arg, align 4
  %o = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %4)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %union.UnionType** %arg, align 4
  %o1 = bitcast %union.UnionType* %5 to i64*
  %6 = load i64* %o1, align 4
  %o2 = bitcast %union.UnionType* %ret to i64*
  store i64 %6, i64* %o2, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %7 = load %union.UnionType** %arg, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %conv = fptosi double %8 to i32
  %conv4 = zext i32 %conv to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._int, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 124, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @_rand(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %random = alloca double, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %call = call i32 @rand()
  %conv = sitofp i32 %call to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  store double %div, double* %random, align 8
  %0 = load double* %random, align 8
  %d = bitcast %union.UnionType* %ret to double*
  store double %0, double* %d, align 4
  %1 = bitcast %union.UnionType* %retval to i8*
  %2 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %2, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %3 = bitcast double* %coerce.dive to i64*
  %4 = load i64* %3, align 1
  ret i64 %4
}

declare i32 @rand() #1

; Function Attrs: nounwind ssp
define i64 @_sin(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %arg = alloca %union.UnionType*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  store %union.UnionType* %2, %union.UnionType** %arg, align 4
  %3 = load %union.UnionType** %arg, align 4
  %o = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %4)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %union.UnionType** %arg, align 4
  %o1 = bitcast %union.UnionType* %5 to i64*
  %6 = load i64* %o1, align 4
  %conv = trunc i64 %6 to i32
  %conv2 = sitofp i32 %conv to double
  %call3 = call double @sin(double %conv2) #5
  %d = bitcast %union.UnionType* %ret to double*
  store double %call3, double* %d, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %7 = load %union.UnionType** %arg, align 4
  %d5 = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d5, align 4
  %call6 = call double @sin(double %8) #5
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %call6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._sin, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 150, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind readnone
declare double @sin(double) #4

; Function Attrs: nounwind ssp
define i64 @_cos(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %arg = alloca %union.UnionType*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  store %union.UnionType* %2, %union.UnionType** %arg, align 4
  %3 = load %union.UnionType** %arg, align 4
  %o = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %4)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %union.UnionType** %arg, align 4
  %o1 = bitcast %union.UnionType* %5 to i64*
  %6 = load i64* %o1, align 4
  %conv = trunc i64 %6 to i32
  %conv2 = sitofp i32 %conv to double
  %call3 = call double @cos(double %conv2) #5
  %d = bitcast %union.UnionType* %ret to double*
  store double %call3, double* %d, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %7 = load %union.UnionType** %arg, align 4
  %d5 = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d5, align 4
  %call6 = call double @cos(double %8) #5
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %call6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__._cos, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([36 x i8]* @.str15, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind readnone
declare double @cos(double) #4

; Function Attrs: nounwind ssp
define i64 @_atan2(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %arg1 = alloca %union.UnionType*, align 4
  %arg2 = alloca %union.UnionType*, align 4
  %d1 = alloca double, align 8
  %d2 = alloca double, align 8
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %0, i32 0, i32 1
  %1 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %1, i32 0
  %2 = load %union.UnionType** %arrayidx, align 4
  store %union.UnionType* %2, %union.UnionType** %arg1, align 4
  %3 = load %struct._Array** %args.addr, align 4
  %list1 = getelementptr inbounds %struct._Array* %3, i32 0, i32 1
  %4 = load %union.UnionType*** %list1, align 4
  %arrayidx2 = getelementptr inbounds %union.UnionType** %4, i32 1
  %5 = load %union.UnionType** %arrayidx2, align 4
  store %union.UnionType* %5, %union.UnionType** %arg2, align 4
  %6 = load %union.UnionType** %arg1, align 4
  %o = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %7)
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %union.UnionType** %arg1, align 4
  %o3 = bitcast %union.UnionType* %8 to i64*
  %9 = load i64* %o3, align 4
  %conv = trunc i64 %9 to i32
  %conv4 = sitofp i32 %conv to double
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %union.UnionType** %arg1, align 4
  %d = bitcast %union.UnionType* %10 to double*
  %11 = load double* %d, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv4, %cond.true ], [ %11, %cond.false ]
  store double %cond, double* %d1, align 8
  %12 = load %union.UnionType** %arg2, align 4
  %o5 = bitcast %union.UnionType* %12 to i64*
  %13 = load i64* %o5, align 4
  %call6 = call i64 @TYPE(i64 %13)
  %cmp7 = icmp eq i64 %call6, 1
  br i1 %cmp7, label %cond.true9, label %cond.false13

cond.true9:                                       ; preds = %cond.end
  %14 = load %union.UnionType** %arg2, align 4
  %o10 = bitcast %union.UnionType* %14 to i64*
  %15 = load i64* %o10, align 4
  %conv11 = trunc i64 %15 to i32
  %conv12 = sitofp i32 %conv11 to double
  br label %cond.end15

cond.false13:                                     ; preds = %cond.end
  %16 = load %union.UnionType** %arg2, align 4
  %d14 = bitcast %union.UnionType* %16 to double*
  %17 = load double* %d14, align 4
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true9
  %cond16 = phi double [ %conv12, %cond.true9 ], [ %17, %cond.false13 ]
  store double %cond16, double* %d2, align 8
  %18 = load double* %d1, align 8
  %19 = load double* %d2, align 8
  %call17 = call double @atan2(double %18, double %19) #5
  %d18 = bitcast %union.UnionType* %ret to double*
  store double %call17, double* %d18, align 4
  %20 = bitcast %union.UnionType* %retval to i8*
  %21 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %22 = bitcast double* %coerce.dive to i64*
  %23 = load i64* %22, align 1
  ret i64 %23
}

; Function Attrs: nounwind readnone
declare double @atan2(double, double) #4

; Function Attrs: nounwind ssp
define void @new_Undef() #0 {
entry:
  %o = alloca %struct._Undef*, align 4
  %call = call i8* @calloc(i32 4, i32 1)
  %0 = bitcast i8* %call to %struct._Undef*
  store %struct._Undef* %0, %struct._Undef** %o, align 4
  %1 = load %struct._Undef** %o, align 4
  %2 = ptrtoint %struct._Undef* %1 to i64
  %or = or i64 %2, -12884901888
  store i64 %or, i64* bitcast (%union.UnionType* @undef to i64*), align 4
  ret void
}

declare i8* @calloc(i32, i32) #1

; Function Attrs: nounwind ssp
define i64 @get_undef_value() #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %0 = bitcast %union.UnionType* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* bitcast (%union.UnionType* @undef to i8*), i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %1 = bitcast double* %coerce.dive to i64*
  %2 = load i64* %1, align 1
  ret i64 %2
}

; Function Attrs: nounwind ssp
define void @print_space(i32 %indent) #0 {
entry:
  %indent.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %indent, i32* %indent.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %1 = load i32* %indent.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.__sFILE** @__stdoutp, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp
define void @print_message(i8* %s, i32 %indent) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %indent.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32 %indent, i32* %indent.addr, align 4
  %0 = load i32* %indent.addr, align 4
  call void @print_space(i32 %0)
  %1 = load %struct.__sFILE** @__stdoutp, align 4
  %2 = load i8** %s.addr, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %2)
  ret void
}

; Function Attrs: nounwind ssp
define void @dump_hash_ref(%struct._HashRef* %ref, i32 %indent) #0 {
entry:
  %ref.addr = alloca %struct._HashRef*, align 4
  %indent.addr = alloca i32, align 4
  %hash = alloca %struct._Hash*, align 4
  %key_n = alloca i32, align 4
  %i = alloca i32, align 4
  %_key = alloca %struct._String*, align 4
  %key = alloca i8*, align 4
  %value = alloca %union.UnionType, align 4
  store %struct._HashRef* %ref, %struct._HashRef** %ref.addr, align 4
  store i32 %indent, i32* %indent.addr, align 4
  %0 = load %struct._HashRef** %ref.addr, align 4
  %v = getelementptr inbounds %struct._HashRef* %0, i32 0, i32 1
  %o = bitcast %union.UnionType* %v to i64*
  %1 = load i64* %o, align 4
  %and = and i64 %1, 268435455
  %conv = trunc i64 %and to i32
  %2 = inttoptr i32 %conv to i8*
  %3 = bitcast i8* %2 to %struct._Hash*
  store %struct._Hash* %3, %struct._Hash** %hash, align 4
  %4 = load %struct._Hash** %hash, align 4
  %size = getelementptr inbounds %struct._Hash* %4, i32 0, i32 3
  %5 = load i32* %size, align 4
  store i32 %5, i32* %key_n, align 4
  store i32 0, i32* %i, align 4
  %6 = load %struct.__sFILE** @__stdoutp, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32* %i, align 4
  %8 = load i32* %key_n, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32* %i, align 4
  %10 = load %struct._Hash** %hash, align 4
  %keys = getelementptr inbounds %struct._Hash* %10, i32 0, i32 2
  %11 = load %struct._String*** %keys, align 4
  %arrayidx = getelementptr inbounds %struct._String** %11, i32 %9
  %12 = load %struct._String** %arrayidx, align 4
  store %struct._String* %12, %struct._String** %_key, align 4
  %13 = load %struct._String** %_key, align 4
  %s = getelementptr inbounds %struct._String* %13, i32 0, i32 1
  %14 = load i8** %s, align 4
  store i8* %14, i8** %key, align 4
  %15 = load %struct._String** %_key, align 4
  %hash2 = getelementptr inbounds %struct._String* %15, i32 0, i32 3
  %16 = load i32* %hash2, align 4
  %17 = load %struct._Hash** %hash, align 4
  %table = getelementptr inbounds %struct._Hash* %17, i32 0, i32 1
  %18 = load %union.UnionType** %table, align 4
  %arrayidx3 = getelementptr inbounds %union.UnionType* %18, i32 %16
  %19 = bitcast %union.UnionType* %value to i8*
  %20 = bitcast %union.UnionType* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 4, i1 false)
  %21 = load i32* %indent.addr, align 4
  call void @print_space(i32 %21)
  %22 = load %struct.__sFILE** @__stdoutp, align 4
  %23 = load i8** %key, align 4
  %call4 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([11 x i8]* @.str19, i32 0, i32 0), i8* %23)
  %24 = load i32* %indent.addr, align 4
  %25 = load %struct._String** %_key, align 4
  %len = getelementptr inbounds %struct._String* %25, i32 0, i32 2
  %26 = load i32* %len, align 4
  %add = add i32 %24, %26
  %add5 = add i32 %add, 7
  call void @dumper(%union.UnionType* byval align 4 %value, i32 %add5)
  %27 = load i32* %i, align 4
  %add6 = add i32 %27, 1
  %28 = load i32* %key_n, align 4
  %cmp7 = icmp ne i32 %add6, %28
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %29 = load %struct.__sFILE** @__stdoutp, align 4
  %call9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body
  %30 = load %struct.__sFILE** @__stdoutp, align 4
  %call10 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32* %i, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32* %indent.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then11, label %if.else12

if.then11:                                        ; preds = %for.end
  %33 = load i32* %indent.addr, align 4
  call void @print_message(i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0), i32 %33)
  br label %if.end14

if.else12:                                        ; preds = %for.end
  %34 = load %struct.__sFILE** @__stdoutp, align 4
  %call13 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %34, i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0))
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then11
  ret void
}

; Function Attrs: nounwind ssp
define void @dumper(%union.UnionType* byval align 4 %o, i32 %indent) #0 {
entry:
  %indent.addr = alloca i32, align 4
  store i32 %indent, i32* %indent.addr, align 4
  %o1 = bitcast %union.UnionType* %o to i64*
  %0 = load i64* %o1, align 4
  %call = call i64 @TYPE(i64 %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb
    i64 2, label %sw.bb2
    i64 6, label %sw.bb4
    i64 4, label %sw.bb8
    i64 13, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load %struct.__sFILE** @__stdoutp, align 4
  call void @print_object(%struct.__sFILE* %1, %union.UnionType* byval align 4 %o)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %o3 = bitcast %union.UnionType* %o to i64*
  %2 = load i64* %o3, align 4
  %and = and i64 %2, 268435455
  %conv = trunc i64 %and to i32
  %3 = inttoptr i32 %conv to i8*
  %4 = bitcast i8* %3 to %struct._String*
  call void @dump_string(%struct._String* %4)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %o5 = bitcast %union.UnionType* %o to i64*
  %5 = load i64* %o5, align 4
  %and6 = and i64 %5, 268435455
  %conv7 = trunc i64 %and6 to i32
  %6 = inttoptr i32 %conv7 to i8*
  %7 = bitcast i8* %6 to %struct._HashRef*
  %8 = load i32* %indent.addr, align 4
  call void @dump_hash_ref(%struct._HashRef* %7, i32 %8)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %o9 = bitcast %union.UnionType* %o to i64*
  %9 = load i64* %o9, align 4
  %and10 = and i64 %9, 268435455
  %conv11 = trunc i64 %and10 to i32
  %10 = inttoptr i32 %conv11 to i8*
  %11 = bitcast i8* %10 to %struct._ArrayRef*
  %12 = load i32* %indent.addr, align 4
  call void @dump_array_ref(%struct._ArrayRef* %11, i32 %12)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %13 = load %struct.__sFILE** @__stdoutp, align 4
  %call13 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp
define void @dump_array_ref(%struct._ArrayRef* %ref, i32 %indent) #0 {
entry:
  %ref.addr = alloca %struct._ArrayRef*, align 4
  %indent.addr = alloca i32, align 4
  %array = alloca %struct._Array*, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca %union.UnionType, align 4
  store %struct._ArrayRef* %ref, %struct._ArrayRef** %ref.addr, align 4
  store i32 %indent, i32* %indent.addr, align 4
  %0 = load %struct._ArrayRef** %ref.addr, align 4
  %v = getelementptr inbounds %struct._ArrayRef* %0, i32 0, i32 1
  %o = bitcast %union.UnionType* %v to i64*
  %1 = load i64* %o, align 4
  %and = and i64 %1, 268435455
  %conv = trunc i64 %and to i32
  %2 = inttoptr i32 %conv to i8*
  %3 = bitcast i8* %2 to %struct._Array*
  store %struct._Array* %3, %struct._Array** %array, align 4
  %4 = load %struct._Array** %array, align 4
  %size1 = getelementptr inbounds %struct._Array* %4, i32 0, i32 2
  %5 = load i32* %size1, align 4
  store i32 %5, i32* %size, align 4
  store i32 0, i32* %i, align 4
  %6 = load %struct.__sFILE** @__stdoutp, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([3 x i8]* @.str23, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32* %i, align 4
  %8 = load i32* %size, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32* %i, align 4
  %10 = load %struct._Array** %array, align 4
  %list = getelementptr inbounds %struct._Array* %10, i32 0, i32 1
  %11 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %11, i32 %9
  %12 = load %union.UnionType** %arrayidx, align 4
  %13 = bitcast %union.UnionType* %value to i8*
  %14 = bitcast %union.UnionType* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 8, i32 4, i1 false)
  %15 = load i32* %indent.addr, align 4
  %add = add i32 %15, 2
  call void @print_space(i32 %add)
  %16 = load i32* %indent.addr, align 4
  %add3 = add i32 %16, 2
  call void @dumper(%union.UnionType* byval align 4 %value, i32 %add3)
  %17 = load i32* %i, align 4
  %add4 = add i32 %17, 1
  %18 = load i32* %size, align 4
  %cmp5 = icmp ne i32 %add4, %18
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %19 = load %struct.__sFILE** @__stdoutp, align 4
  %call7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body
  %20 = load %struct.__sFILE** @__stdoutp, align 4
  %call8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32* %indent.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then9, label %if.else10

if.then9:                                         ; preds = %for.end
  %23 = load i32* %indent.addr, align 4
  call void @print_message(i8* getelementptr inbounds ([2 x i8]* @.str24, i32 0, i32 0), i32 %23)
  br label %if.end12

if.else10:                                        ; preds = %for.end
  %24 = load %struct.__sFILE** @__stdoutp, align 4
  %call11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([2 x i8]* @.str24, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then9
  ret void
}

; Function Attrs: nounwind ssp
define void @dump_string(%struct._String* %o) #0 {
entry:
  %o.addr = alloca %struct._String*, align 4
  store %struct._String* %o, %struct._String** %o.addr, align 4
  %0 = load %struct.__sFILE** @__stdoutp, align 4
  %1 = load %struct._String** %o.addr, align 4
  %s = getelementptr inbounds %struct._String* %1, i32 0, i32 1
  %2 = load i8** %s, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0), i8* %2)
  ret void
}

; Function Attrs: nounwind ssp
define void @print_object(%struct.__sFILE* %fp, %union.UnionType* byval align 4 %o) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 4
  %coerce = alloca %union.UnionType, align 4
  %object = alloca %struct._Object*, align 4
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 4
  %0 = load %struct.__sFILE** %fp.addr, align 4
  %tobool = icmp ne %struct.__sFILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.__sFILE** @__stdoutp, align 4
  store %struct.__sFILE* %1, %struct.__sFILE** %fp.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %o1 = bitcast %union.UnionType* %o to i64*
  %2 = load i64* %o1, align 4
  %call = call i64 @TYPE(i64 %2)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
    i64 2, label %sw.bb6
    i64 3, label %sw.bb10
    i64 4, label %sw.bb21
    i64 5, label %sw.bb26
    i64 6, label %sw.bb30
    i64 9, label %sw.bb35
    i64 7, label %sw.bb40
    i64 8, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.__sFILE** %fp.addr, align 4
  %o2 = bitcast %union.UnionType* %o to i64*
  %4 = load i64* %o2, align 4
  %conv = trunc i64 %4 to i32
  %call3 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i32 %conv)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %5 = load %struct.__sFILE** %fp.addr, align 4
  %d = bitcast %union.UnionType* %o to double*
  %6 = load double* %d, align 4
  %call5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), double %6)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %7 = load %struct.__sFILE** %fp.addr, align 4
  %o7 = bitcast %union.UnionType* %o to i64*
  %8 = load i64* %o7, align 4
  %and = and i64 %8, 268435455
  %conv8 = trunc i64 %and to i32
  %9 = inttoptr i32 %conv8 to i8*
  %10 = bitcast i8* %9 to %struct._String*
  %s = getelementptr inbounds %struct._String* %10, i32 0, i32 1
  %11 = load i8** %s, align 4
  %call9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %11)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %12 = load %struct.__sFILE** %fp.addr, align 4
  %13 = load %struct.__sFILE** @__stdoutp, align 4
  %cmp = icmp ne %struct.__sFILE* %12, %13
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb10
  %14 = load %struct.__sFILE** %fp.addr, align 4
  %o13 = bitcast %union.UnionType* %o to i64*
  %15 = load i64* %o13, align 4
  %and14 = and i64 %15, 268435455
  %conv15 = trunc i64 %and14 to i32
  %16 = inttoptr i32 %conv15 to i8*
  %17 = bitcast i8* %16 to %struct._Array*
  call void @_print_with_handler(%struct.__sFILE* %14, %struct._Array* %17)
  br label %if.end20

if.else:                                          ; preds = %sw.bb10
  %o16 = bitcast %union.UnionType* %o to i64*
  %18 = load i64* %o16, align 4
  %and17 = and i64 %18, 268435455
  %conv18 = trunc i64 %and17 to i32
  %19 = inttoptr i32 %conv18 to i8*
  %20 = bitcast i8* %19 to %struct._Array*
  %call19 = call i64 @print(%struct._Array* %20)
  %coerce.dive = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %21 = bitcast double* %coerce.dive to i64*
  store i64 %call19, i64* %21, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %22 = load %struct.__sFILE** %fp.addr, align 4
  %o22 = bitcast %union.UnionType* %o to i64*
  %23 = load i64* %o22, align 4
  %and23 = and i64 %23, 268435455
  %conv24 = trunc i64 %and23 to i32
  %24 = inttoptr i32 %conv24 to i8*
  %call25 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0), i8* %24)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %25 = load %struct.__sFILE** %fp.addr, align 4
  %o27 = bitcast %union.UnionType* %o to i64*
  %26 = load i64* %o27, align 4
  %and28 = and i64 %26, 268435455
  %conv29 = trunc i64 %and28 to i32
  %27 = inttoptr i32 %conv29 to i8*
  %28 = bitcast i8* %27 to %struct._Hash*
  call void @print_hash(%struct.__sFILE* %25, %struct._Hash* %28)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %29 = load %struct.__sFILE** %fp.addr, align 4
  %o31 = bitcast %union.UnionType* %o to i64*
  %30 = load i64* %o31, align 4
  %and32 = and i64 %30, 268435455
  %conv33 = trunc i64 %and32 to i32
  %31 = inttoptr i32 %conv33 to i8*
  %call34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([9 x i8]* @.str43, i32 0, i32 0), i8* %31)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  %32 = load %struct.__sFILE** %fp.addr, align 4
  %o36 = bitcast %union.UnionType* %o to i64*
  %33 = load i64* %o36, align 4
  %and37 = and i64 %33, 268435455
  %conv38 = trunc i64 %and37 to i32
  %34 = inttoptr i32 %conv38 to i8*
  %call39 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([9 x i8]* @.str44, i32 0, i32 0), i8* %34)
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  %o41 = bitcast %union.UnionType* %o to i64*
  %35 = load i64* %o41, align 4
  %and42 = and i64 %35, 268435455
  %conv43 = trunc i64 %and42 to i32
  %36 = inttoptr i32 %conv43 to i8*
  %37 = bitcast i8* %36 to %struct._Object*
  store %struct._Object* %37, %struct._Object** %object, align 4
  %38 = load %struct.__sFILE** %fp.addr, align 4
  %39 = load %struct._Object** %object, align 4
  %v = getelementptr inbounds %struct._Object* %39, i32 0, i32 1
  call void @print_object(%struct.__sFILE* %38, %union.UnionType* byval align 4 %v)
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end
  %40 = load %struct.__sFILE** %fp.addr, align 4
  %o45 = bitcast %union.UnionType* %o to i64*
  %41 = load i64* %o45, align 4
  %and46 = and i64 %41, 268435455
  %conv47 = trunc i64 %and46 to i32
  %42 = inttoptr i32 %conv47 to i8*
  %43 = bitcast i8* %42 to %struct._BlessedObject*
  %pkg_name = getelementptr inbounds %struct._BlessedObject* %43, i32 0, i32 3
  %44 = load i8** %pkg_name, align 4
  %o48 = bitcast %union.UnionType* %o to i64*
  %45 = load i64* %o48, align 4
  %and49 = and i64 %45, 268435455
  %conv50 = trunc i64 %and49 to i32
  %46 = inttoptr i32 %conv50 to i8*
  %call51 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %40, i8* getelementptr inbounds ([12 x i8]* @.str45, i32 0, i32 0), i8* %44, i8* %46)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb44, %sw.bb40, %sw.bb35, %sw.bb30, %sw.bb26, %sw.bb21, %if.end20, %sw.bb6, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp
define i64 @Object_dumper(%struct._Array* %a) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  store %struct._Array* %a, %struct._Array** %a.addr, align 4
  %0 = load %struct._Array** %a.addr, align 4
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Array** %a.addr, align 4
  %list = getelementptr inbounds %struct._Array* %2, i32 0, i32 1
  %3 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %3, i32 0
  %4 = load %union.UnionType** %arrayidx, align 4
  call void @dumper(%union.UnionType* byval align 4 %4, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %o = bitcast %union.UnionType* %ret to i64*
  store i64 -64424509440, i64* %o, align 4
  %5 = bitcast %union.UnionType* %retval to i8*
  %6 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %5, i8* %6, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %7 = bitcast double* %coerce.dive to i64*
  %8 = load i64* %7, align 1
  ret i64 %8
}

; Function Attrs: nounwind ssp
define void @print_hash(%struct.__sFILE* %fp, %struct._Hash* %hash) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 4
  %hash.addr = alloca %struct._Hash*, align 4
  %key_n = alloca i32, align 4
  %i = alloca i32, align 4
  %key = alloca %struct._String*, align 4
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 4
  store %struct._Hash* %hash, %struct._Hash** %hash.addr, align 4
  %0 = load %struct._Hash** %hash.addr, align 4
  %size = getelementptr inbounds %struct._Hash* %0, i32 0, i32 3
  %1 = load i32* %size, align 4
  store i32 %1, i32* %key_n, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %key_n, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32* %i, align 4
  %5 = load %struct._Hash** %hash.addr, align 4
  %keys = getelementptr inbounds %struct._Hash* %5, i32 0, i32 2
  %6 = load %struct._String*** %keys, align 4
  %arrayidx = getelementptr inbounds %struct._String** %6, i32 %4
  %7 = load %struct._String** %arrayidx, align 4
  store %struct._String* %7, %struct._String** %key, align 4
  %8 = load %struct.__sFILE** %fp.addr, align 4
  %9 = load %struct._String** %key, align 4
  %s = getelementptr inbounds %struct._String* %9, i32 0, i32 1
  %10 = load i8** %s, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([3 x i8]* @.str17, i32 0, i32 0), i8* %10)
  %11 = load %struct.__sFILE** %fp.addr, align 4
  %12 = load %struct._String** %key, align 4
  %hash1 = getelementptr inbounds %struct._String* %12, i32 0, i32 3
  %13 = load i32* %hash1, align 4
  %14 = load %struct._Hash** %hash.addr, align 4
  %table = getelementptr inbounds %struct._Hash* %14, i32 0, i32 1
  %15 = load %union.UnionType** %table, align 4
  %arrayidx2 = getelementptr inbounds %union.UnionType* %15, i32 %13
  call void @print_object(%struct.__sFILE* %11, %union.UnionType* byval align 4 %arrayidx2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp
define i64 @print(%struct._Array* %array) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %array.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  %0 = load %struct._Array** %array.addr, align 4
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %size, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.__sFILE** @__stdoutp, align 4
  %5 = load i32* %i, align 4
  %6 = load %struct._Array** %array.addr, align 4
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i32 %5
  %8 = load %union.UnionType** %arrayidx, align 4
  call void @print_object(%struct.__sFILE* %4, %union.UnionType* byval align 4 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %o = bitcast %union.UnionType* %ret to i64*
  store i64 -64424509440, i64* %o, align 4
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define void @_print_with_handler(%struct.__sFILE* %fp, %struct._Array* %array) #0 {
entry:
  %fp.addr = alloca %struct.__sFILE*, align 4
  %array.addr = alloca %struct._Array*, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.__sFILE* %fp, %struct.__sFILE** %fp.addr, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  %0 = load %struct._Array** %array.addr, align 4
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %size, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.__sFILE** %fp.addr, align 4
  %5 = load i32* %i, align 4
  %6 = load %struct._Array** %array.addr, align 4
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i32 %5
  %8 = load %union.UnionType** %arrayidx, align 4
  call void @print_object(%struct.__sFILE* %4, %union.UnionType* byval align 4 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp
define i64 @print_with_handler(%union.UnionType* %_handler, %struct._Array* %array) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %_handler.addr = alloca %union.UnionType*, align 4
  %array.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %fp = alloca %struct.__sFILE*, align 4
  store %union.UnionType* %_handler, %union.UnionType** %_handler.addr, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  %0 = load %union.UnionType** %_handler.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %and = and i64 %1, 268435455
  %conv = trunc i64 %and to i32
  %2 = inttoptr i32 %conv to i8*
  %3 = bitcast i8* %2 to %struct._IOHandlerObject*
  %fp1 = getelementptr inbounds %struct._IOHandlerObject* %3, i32 0, i32 1
  %4 = load %struct.__sFILE** %fp1, align 4
  store %struct.__sFILE* %4, %struct.__sFILE** %fp, align 4
  %5 = load %struct.__sFILE** %fp, align 4
  %6 = load %struct._Array** %array.addr, align 4
  call void @_print_with_handler(%struct.__sFILE* %5, %struct._Array* %6)
  %o2 = bitcast %union.UnionType* %ret to i64*
  store i64 -64424509440, i64* %o2, align 4
  %7 = bitcast %union.UnionType* %retval to i8*
  %8 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %9 = bitcast double* %coerce.dive to i64*
  %10 = load i64* %9, align 1
  ret i64 %10
}

; Function Attrs: nounwind ssp
define i64 @say(%struct._Array* %array) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %array.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %coerce = alloca %union.UnionType, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  %0 = load %struct._Array** %array.addr, align 4
  %call = call i64 @print(%struct._Array* %0)
  %coerce.dive = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %1 = bitcast double* %coerce.dive to i64*
  store i64 %call, i64* %1, align 1
  %2 = load %struct.__sFILE** @__stdoutp, align 4
  %call1 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0))
  %o = bitcast %union.UnionType* %ret to i64*
  store i64 -64424509440, i64* %o, align 4
  %3 = bitcast %union.UnionType* %retval to i8*
  %4 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 8, i32 4, i1 false)
  %coerce.dive2 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %5 = bitcast double* %coerce.dive2 to i64*
  %6 = load i64* %5, align 1
  ret i64 %6
}

; Function Attrs: nounwind ssp
define void @debug_print(%union.UnionType* byval align 4 %o) #0 {
entry:
  %0 = load %struct.__sFILE** @__stderrp, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([26 x i8]* @.str27, i32 0, i32 0))
  %1 = load %struct.__sFILE** @__stdoutp, align 4
  call void @print_object(%struct.__sFILE* %1, %union.UnionType* byval align 4 %o)
  %2 = load %struct.__sFILE** @__stderrp, align 4
  %call1 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([15 x i8]* @.str28, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind ssp
define i64 @shift(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %size = alloca i32, align 4
  %o = alloca %union.UnionType, align 4
  %array = alloca %struct._Array*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load i32* %size, align 4
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast %union.UnionType* %retval to i8*
  %4 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 8, i32 4, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32* %size, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i32 0
  %8 = load %union.UnionType** %arrayidx, align 4
  %9 = bitcast %union.UnionType* %o to i8*
  %10 = bitcast %union.UnionType* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then3
  %o4 = bitcast %union.UnionType* %o to i64*
  %11 = load i64* %o4, align 4
  %call = call i64 @TYPE(i64 %11)
  %cmp5 = icmp ne i64 %call, 3
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.body
  %12 = load %struct.__sFILE** @__stderrp, align 4
  %o7 = bitcast %union.UnionType* %o to i64*
  %13 = load i64* %o7, align 4
  %call8 = call i64 @TYPE(i64 %13)
  %call9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call8)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.shift, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end10:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end10
  %o11 = bitcast %union.UnionType* %o to i64*
  %14 = load i64* %o11, align 4
  %and = and i64 %14, 268435455
  %conv = trunc i64 %and to i32
  %15 = inttoptr i32 %conv to i8*
  %16 = bitcast i8* %15 to %struct._Array*
  store %struct._Array* %16, %struct._Array** %array, align 4
  %17 = load %struct._Array** %array, align 4
  %list12 = getelementptr inbounds %struct._Array* %17, i32 0, i32 1
  %18 = load %union.UnionType*** %list12, align 4
  %arrayidx13 = getelementptr inbounds %union.UnionType** %18, i32 0
  %19 = load %union.UnionType** %arrayidx13, align 4
  %20 = bitcast %union.UnionType* %ret to i8*
  %21 = bitcast %union.UnionType* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 4, i1 false)
  %22 = load %struct._Array** %array, align 4
  %size14 = getelementptr inbounds %struct._Array* %22, i32 0, i32 2
  %23 = load i32* %size14, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %size14, align 4
  %24 = load %struct._Array** %array, align 4
  %list15 = getelementptr inbounds %struct._Array* %24, i32 0, i32 1
  %25 = load %union.UnionType*** %list15, align 4
  %26 = bitcast %union.UnionType** %25 to i8*
  %27 = call i32 @llvm.objectsize.i32(i8* %26, i1 false)
  %cmp16 = icmp ne i32 %27, -1
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %28 = load %struct._Array** %array, align 4
  %list18 = getelementptr inbounds %struct._Array* %28, i32 0, i32 1
  %29 = load %union.UnionType*** %list18, align 4
  %30 = bitcast %union.UnionType** %29 to i8*
  %31 = load %struct._Array** %array, align 4
  %list19 = getelementptr inbounds %struct._Array* %31, i32 0, i32 1
  %32 = load %union.UnionType*** %list19, align 4
  %add.ptr = getelementptr inbounds %union.UnionType** %32, i32 1
  %33 = bitcast %union.UnionType** %add.ptr to i8*
  %34 = load %struct._Array** %array, align 4
  %size20 = getelementptr inbounds %struct._Array* %34, i32 0, i32 2
  %35 = load i32* %size20, align 4
  %mul = mul i32 %35, 8
  %36 = load %struct._Array** %array, align 4
  %list21 = getelementptr inbounds %struct._Array* %36, i32 0, i32 1
  %37 = load %union.UnionType*** %list21, align 4
  %38 = bitcast %union.UnionType** %37 to i8*
  %39 = call i32 @llvm.objectsize.i32(i8* %38, i1 false)
  %call22 = call i8* @__memmove_chk(i8* %30, i8* %33, i32 %mul, i32 %39) #3
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %40 = load %struct._Array** %array, align 4
  %list23 = getelementptr inbounds %struct._Array* %40, i32 0, i32 1
  %41 = load %union.UnionType*** %list23, align 4
  %42 = bitcast %union.UnionType** %41 to i8*
  %43 = load %struct._Array** %array, align 4
  %list24 = getelementptr inbounds %struct._Array* %43, i32 0, i32 1
  %44 = load %union.UnionType*** %list24, align 4
  %add.ptr25 = getelementptr inbounds %union.UnionType** %44, i32 1
  %45 = bitcast %union.UnionType** %add.ptr25 to i8*
  %46 = load %struct._Array** %array, align 4
  %size26 = getelementptr inbounds %struct._Array* %46, i32 0, i32 2
  %47 = load i32* %size26, align 4
  %mul27 = mul i32 %47, 8
  %call28 = call i8* @__inline_memmove_chk(i8* %42, i8* %45, i32 %mul27)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call22, %cond.true ], [ %call28, %cond.false ]
  br label %if.end30

if.else:                                          ; preds = %if.end
  %48 = load %struct.__sFILE** @__stderrp, align 4
  %call29 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %48, i8* getelementptr inbounds ([30 x i8]* @.str29, i32 0, i32 0))
  br label %if.end30

if.end30:                                         ; preds = %if.else, %cond.end
  %49 = bitcast %union.UnionType* %retval to i8*
  %50 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %50, i32 8, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end30, %if.then
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %51 = bitcast double* %coerce.dive to i64*
  %52 = load i64* %51, align 1
  ret i64 %52
}

; Function Attrs: nounwind readnone
declare i32 @llvm.objectsize.i32(i8*, i1) #5

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8*, i8*, i32, i32) #6

; Function Attrs: inlinehint nounwind ssp
define internal i8* @__inline_memmove_chk(i8* %__dest, i8* %__src, i32 %__len) #7 {
entry:
  %__dest.addr = alloca i8*, align 4
  %__src.addr = alloca i8*, align 4
  %__len.addr = alloca i32, align 4
  store i8* %__dest, i8** %__dest.addr, align 4
  store i8* %__src, i8** %__src.addr, align 4
  store i32 %__len, i32* %__len.addr, align 4
  %0 = load i8** %__dest.addr, align 4
  %1 = load i8** %__src.addr, align 4
  %2 = load i32* %__len.addr, align 4
  %3 = load i8** %__dest.addr, align 4
  %4 = call i32 @llvm.objectsize.i32(i8* %3, i1 false)
  %call = call i8* @__memmove_chk(i8* %0, i8* %1, i32 %2, i32 %4) #3
  ret i8* %call
}

; Function Attrs: nounwind ssp
define void @Array_grow(%struct._Array* %array, i32 %grow_size) #0 {
entry:
  %array.addr = alloca %struct._Array*, align 4
  %grow_size.addr = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %undef_ptr = alloca %union.UnionType*, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  store i32 %grow_size, i32* %grow_size.addr, align 4
  %0 = load %struct._Array** %array.addr, align 4
  %size2 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size2, align 4
  store i32 %1, i32* %size, align 4
  %2 = load i32* %grow_size.addr, align 4
  %mul = mul i32 4, %2
  %call = call i8* @malloc(i32 %mul)
  store i8* %call, i8** %tmp, align 4
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 4
  %call3 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str30, i32 0, i32 0))
  br label %if.end19

if.else:                                          ; preds = %entry
  %4 = load %struct._Array** %array.addr, align 4
  %list = getelementptr inbounds %struct._Array* %4, i32 0, i32 1
  %5 = load %union.UnionType*** %list, align 4
  %tobool4 = icmp ne %union.UnionType** %5, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %6 = load i8** %tmp, align 4
  %7 = call i32 @llvm.objectsize.i32(i8* %6, i1 false)
  %cmp = icmp ne i32 %7, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %8 = load i8** %tmp, align 4
  %9 = load %struct._Array** %array.addr, align 4
  %list6 = getelementptr inbounds %struct._Array* %9, i32 0, i32 1
  %10 = load %union.UnionType*** %list6, align 4
  %11 = bitcast %union.UnionType** %10 to i8*
  %12 = load i32* %size, align 4
  %mul7 = mul i32 4, %12
  %13 = load i8** %tmp, align 4
  %14 = call i32 @llvm.objectsize.i32(i8* %13, i1 false)
  %call8 = call i8* @__memcpy_chk(i8* %8, i8* %11, i32 %mul7, i32 %14) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %15 = load i8** %tmp, align 4
  %16 = load %struct._Array** %array.addr, align 4
  %list9 = getelementptr inbounds %struct._Array* %16, i32 0, i32 1
  %17 = load %union.UnionType*** %list9, align 4
  %18 = bitcast %union.UnionType** %17 to i8*
  %19 = load i32* %size, align 4
  %mul10 = mul i32 4, %19
  %call11 = call i8* @__inline_memcpy_chk(i8* %15, i8* %18, i32 %mul10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call8, %cond.true ], [ %call11, %cond.false ]
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.else
  %20 = load i8** %tmp, align 4
  %21 = bitcast i8* %20 to %union.UnionType**
  %22 = load %struct._Array** %array.addr, align 4
  %list12 = getelementptr inbounds %struct._Array* %22, i32 0, i32 1
  store %union.UnionType** %21, %union.UnionType*** %list12, align 4
  %23 = load i32* %size, align 4
  store i32 %23, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32* %i, align 4
  %25 = load i32* %grow_size.addr, align 4
  %cmp14 = icmp ule i32 %24, %25
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call16 = call %struct._Object* @fetch_object()
  %26 = bitcast %struct._Object* %call16 to %union.UnionType*
  store %union.UnionType* %26, %union.UnionType** %undef_ptr, align 4
  %27 = load i64* bitcast (%union.UnionType* @undef to i64*), align 4
  %28 = load %union.UnionType** %undef_ptr, align 4
  %o = bitcast %union.UnionType* %28 to i64*
  store i64 %27, i64* %o, align 4
  %29 = load %union.UnionType** %undef_ptr, align 4
  %30 = load i32* %i, align 4
  %31 = load %struct._Array** %array.addr, align 4
  %list17 = getelementptr inbounds %struct._Array* %31, i32 0, i32 1
  %32 = load %union.UnionType*** %list17, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %32, i32 %30
  store %union.UnionType* %29, %union.UnionType** %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32* %grow_size.addr, align 4
  %35 = load %struct._Array** %array.addr, align 4
  %size18 = getelementptr inbounds %struct._Array* %35, i32 0, i32 2
  store i32 %34, i32* %size18, align 4
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.then
  ret void
}

declare i8* @malloc(i32) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i32, i32) #6

; Function Attrs: inlinehint nounwind ssp
define internal i8* @__inline_memcpy_chk(i8* %__dest, i8* %__src, i32 %__len) #7 {
entry:
  %__dest.addr = alloca i8*, align 4
  %__src.addr = alloca i8*, align 4
  %__len.addr = alloca i32, align 4
  store i8* %__dest, i8** %__dest.addr, align 4
  store i8* %__src, i8** %__src.addr, align 4
  store i32 %__len, i32* %__len.addr, align 4
  %0 = load i8** %__dest.addr, align 4
  %1 = load i8** %__src.addr, align 4
  %2 = load i32* %__len.addr, align 4
  %3 = load i8** %__dest.addr, align 4
  %4 = call i32 @llvm.objectsize.i32(i8* %3, i1 false)
  %call = call i8* @__memcpy_chk(i8* %0, i8* %1, i32 %2, i32 %4) #3
  ret i8* %call
}

; Function Attrs: nounwind ssp
define %struct._Object* @fetch_object() #0 {
entry:
  %0 = load i32* @count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @count, align 4
  %1 = load i32* @count, align 4
  %2 = load %struct._Object*** @object_pool, align 4
  %arrayidx = getelementptr inbounds %struct._Object** %2, i32 %1
  %3 = load %struct._Object** %arrayidx, align 4
  ret %struct._Object* %3
}

; Function Attrs: nounwind ssp
define i64 @push(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %size = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %array = alloca %union.UnionType*, align 4
  %value = alloca %union.UnionType*, align 4
  %base = alloca %struct._Array*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load i32* %size, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([27 x i8]* @.str31, i32 0, i32 0))
  br label %if.end19

if.else:                                          ; preds = %entry
  %4 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %4, i32 0, i32 1
  %5 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %5, i32 0
  %6 = load %union.UnionType** %arrayidx, align 4
  store %union.UnionType* %6, %union.UnionType** %array, align 4
  %7 = load %struct._Array** %args.addr, align 4
  %list2 = getelementptr inbounds %struct._Array* %7, i32 0, i32 1
  %8 = load %union.UnionType*** %list2, align 4
  %arrayidx3 = getelementptr inbounds %union.UnionType** %8, i32 1
  %9 = load %union.UnionType** %arrayidx3, align 4
  store %union.UnionType* %9, %union.UnionType** %value, align 4
  br label %do.body

do.body:                                          ; preds = %if.else
  %10 = load %union.UnionType** %array, align 4
  %o = bitcast %union.UnionType* %10 to i64*
  %11 = load i64* %o, align 4
  %call4 = call i64 @TYPE(i64 %11)
  %cmp5 = icmp ne i64 %call4, 3
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %do.body
  %12 = load %struct.__sFILE** @__stderrp, align 4
  %13 = load %union.UnionType** %array, align 4
  %o7 = bitcast %union.UnionType* %13 to i64*
  %14 = load i64* %o7, align 4
  %call8 = call i64 @TYPE(i64 %14)
  %call9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call8)
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__.push, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 402, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %15 = load %union.UnionType** %array, align 4
  %o10 = bitcast %union.UnionType* %15 to i64*
  %16 = load i64* %o10, align 4
  %and = and i64 %16, 268435455
  %conv = trunc i64 %and to i32
  %17 = inttoptr i32 %conv to i8*
  %18 = bitcast i8* %17 to %struct._Array*
  store %struct._Array* %18, %struct._Array** %base, align 4
  %19 = load %struct._Array** %base, align 4
  %20 = load %struct._Array** %base, align 4
  %size11 = getelementptr inbounds %struct._Array* %20, i32 0, i32 2
  %21 = load i32* %size11, align 4
  %add = add i32 %21, 1
  call void @Array_grow(%struct._Array* %19, i32 %add)
  %22 = load %union.UnionType** %value, align 4
  %23 = load %struct._Array** %base, align 4
  %size12 = getelementptr inbounds %struct._Array* %23, i32 0, i32 2
  %24 = load i32* %size12, align 4
  %25 = load %struct._Array** %base, align 4
  %list13 = getelementptr inbounds %struct._Array* %25, i32 0, i32 1
  %26 = load %union.UnionType*** %list13, align 4
  %arrayidx14 = getelementptr inbounds %union.UnionType** %26, i32 %24
  store %union.UnionType* %22, %union.UnionType** %arrayidx14, align 4
  %27 = load %struct._Array** %base, align 4
  %size15 = getelementptr inbounds %struct._Array* %27, i32 0, i32 2
  %28 = load i32* %size15, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %size15, align 4
  %29 = load %struct._Array** %base, align 4
  %size16 = getelementptr inbounds %struct._Array* %29, i32 0, i32 2
  %30 = load i32* %size16, align 4
  %conv17 = zext i32 %30 to i64
  %or = or i64 %conv17, -64424509440
  %o18 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o18, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then
  %31 = bitcast %union.UnionType* %retval to i8*
  %32 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %33 = bitcast double* %coerce.dive to i64*
  %34 = load i64* %33, align 1
  ret i64 %34
}

; Function Attrs: nounwind ssp
define i64 @new_HashRef(%union.UnionType* byval align 4 %hash) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %ret = alloca %union.UnionType, align 4
  %o = alloca %struct._HashRef*, align 4
  %call = call %struct._Object* @fetch_object()
  %0 = bitcast %struct._Object* %call to %struct._HashRef*
  store %struct._HashRef* %0, %struct._HashRef** %o, align 4
  %1 = load %struct._HashRef** %o, align 4
  %v = getelementptr inbounds %struct._HashRef* %1, i32 0, i32 1
  %2 = bitcast %union.UnionType* %v to i8*
  %3 = bitcast %union.UnionType* %hash to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 8, i32 4, i1 false)
  %4 = load %struct._HashRef** %o, align 4
  %5 = ptrtoint %struct._HashRef* %4 to i64
  %or = or i64 %5, -42949672960
  %o1 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o1, align 4
  %6 = bitcast %union.UnionType* %retval to i8*
  %7 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %8 = bitcast double* %coerce.dive to i64*
  %9 = load i64* %8, align 1
  ret i64 %9
}

; Function Attrs: nounwind ssp
define i64 @new_ArrayRef(%union.UnionType* byval align 4 %array) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %ret = alloca %union.UnionType, align 4
  %o = alloca %struct._ArrayRef*, align 4
  %call = call %struct._Object* @fetch_object()
  %0 = bitcast %struct._Object* %call to %struct._ArrayRef*
  store %struct._ArrayRef* %0, %struct._ArrayRef** %o, align 4
  %1 = load %struct._ArrayRef** %o, align 4
  %v = getelementptr inbounds %struct._ArrayRef* %1, i32 0, i32 1
  %2 = bitcast %union.UnionType* %v to i8*
  %3 = bitcast %union.UnionType* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 8, i32 4, i1 false)
  %4 = load %struct._ArrayRef** %o, align 4
  %5 = ptrtoint %struct._ArrayRef* %4 to i64
  %or = or i64 %5, -51539607552
  %o1 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o1, align 4
  %6 = bitcast %union.UnionType* %retval to i8*
  %7 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %8 = bitcast double* %coerce.dive to i64*
  %9 = load i64* %8, align 1
  ret i64 %9
}

; Function Attrs: nounwind ssp
define %union.UnionType* @HashRef_get(%union.UnionType* %o, %struct._String* %key) #0 {
entry:
  %o.addr = alloca %union.UnionType*, align 4
  %key.addr = alloca %struct._String*, align 4
  %ret = alloca %union.UnionType*, align 4
  %ref = alloca %struct._HashRef*, align 4
  %hash = alloca %struct._Hash*, align 4
  %ref8 = alloca %struct._HashRef*, align 4
  %hash10 = alloca %struct._Hash*, align 4
  %array = alloca %struct._Array, align 4
  %hash_ref = alloca %union.UnionType, align 4
  %agg.tmp = alloca %union.UnionType, align 4
  %ref24 = alloca %struct._HashRef*, align 4
  %hash28 = alloca %struct._Hash*, align 4
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 4
  store %struct._String* %key, %struct._String** %key.addr, align 4
  store %union.UnionType* @undef, %union.UnionType** %ret, align 4
  %0 = load %union.UnionType** %o.addr, align 4
  %o1 = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o1, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 6, label %sw.bb
    i64 7, label %sw.bb7
    i64 8, label %sw.bb7
    i64 1, label %sw.bb18
    i64 0, label %sw.bb18
    i64 13, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.UnionType** %o.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %and = and i64 %3, 268435455
  %conv = trunc i64 %and to i32
  %4 = inttoptr i32 %conv to i8*
  %5 = bitcast i8* %4 to %struct._HashRef*
  store %struct._HashRef* %5, %struct._HashRef** %ref, align 4
  %6 = load %struct._HashRef** %ref, align 4
  %v = getelementptr inbounds %struct._HashRef* %6, i32 0, i32 1
  %o3 = bitcast %union.UnionType* %v to i64*
  %7 = load i64* %o3, align 4
  %and4 = and i64 %7, 268435455
  %conv5 = trunc i64 %and4 to i32
  %8 = inttoptr i32 %conv5 to i8*
  %9 = bitcast i8* %8 to %struct._Hash*
  store %struct._Hash* %9, %struct._Hash** %hash, align 4
  %10 = load %struct._String** %key.addr, align 4
  %hash6 = getelementptr inbounds %struct._String* %10, i32 0, i32 3
  %11 = load i32* %hash6, align 4
  %12 = load %struct._Hash** %hash, align 4
  %table = getelementptr inbounds %struct._Hash* %12, i32 0, i32 1
  %13 = load %union.UnionType** %table, align 4
  %arrayidx = getelementptr inbounds %union.UnionType* %13, i32 %11
  store %union.UnionType* %arrayidx, %union.UnionType** %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry
  %14 = load %union.UnionType** %o.addr, align 4
  %call9 = call %struct._HashRef* @dynamic_hash_ref_cast_code(%union.UnionType* %14)
  store %struct._HashRef* %call9, %struct._HashRef** %ref8, align 4
  %15 = load %struct._HashRef** %ref8, align 4
  %v11 = getelementptr inbounds %struct._HashRef* %15, i32 0, i32 1
  %o12 = bitcast %union.UnionType* %v11 to i64*
  %16 = load i64* %o12, align 4
  %and13 = and i64 %16, 268435455
  %conv14 = trunc i64 %and13 to i32
  %17 = inttoptr i32 %conv14 to i8*
  %18 = bitcast i8* %17 to %struct._Hash*
  store %struct._Hash* %18, %struct._Hash** %hash10, align 4
  %19 = load %struct._String** %key.addr, align 4
  %hash15 = getelementptr inbounds %struct._String* %19, i32 0, i32 3
  %20 = load i32* %hash15, align 4
  %21 = load %struct._Hash** %hash10, align 4
  %table16 = getelementptr inbounds %struct._Hash* %21, i32 0, i32 1
  %22 = load %union.UnionType** %table16, align 4
  %arrayidx17 = getelementptr inbounds %union.UnionType* %22, i32 %20
  store %union.UnionType* %arrayidx17, %union.UnionType** %ret, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry, %entry, %entry
  %size = getelementptr inbounds %struct._Array* %array, i32 0, i32 2
  store i32 0, i32* %size, align 4
  %list = getelementptr inbounds %struct._Array* %array, i32 0, i32 1
  store %union.UnionType** null, %union.UnionType*** %list, align 4
  %call19 = call i64 @new_Hash(%struct._Array* %array)
  %coerce.dive = getelementptr %union.UnionType* %agg.tmp, i32 0, i32 0
  %23 = bitcast double* %coerce.dive to i64*
  store i64 %call19, i64* %23, align 1
  %call20 = call i64 @new_HashRef(%union.UnionType* byval align 4 %agg.tmp)
  %coerce.dive21 = getelementptr %union.UnionType* %hash_ref, i32 0, i32 0
  %24 = bitcast double* %coerce.dive21 to i64*
  store i64 %call20, i64* %24, align 1
  %o22 = bitcast %union.UnionType* %hash_ref to i64*
  %25 = load i64* %o22, align 4
  %26 = load %union.UnionType** %o.addr, align 4
  %o23 = bitcast %union.UnionType* %26 to i64*
  store i64 %25, i64* %o23, align 4
  %o25 = bitcast %union.UnionType* %hash_ref to i64*
  %27 = load i64* %o25, align 4
  %and26 = and i64 %27, 268435455
  %conv27 = trunc i64 %and26 to i32
  %28 = inttoptr i32 %conv27 to i8*
  %29 = bitcast i8* %28 to %struct._HashRef*
  store %struct._HashRef* %29, %struct._HashRef** %ref24, align 4
  %30 = load %struct._HashRef** %ref24, align 4
  %v29 = getelementptr inbounds %struct._HashRef* %30, i32 0, i32 1
  %o30 = bitcast %union.UnionType* %v29 to i64*
  %31 = load i64* %o30, align 4
  %and31 = and i64 %31, 268435455
  %conv32 = trunc i64 %and31 to i32
  %32 = inttoptr i32 %conv32 to i8*
  %33 = bitcast i8* %32 to %struct._Hash*
  store %struct._Hash* %33, %struct._Hash** %hash28, align 4
  %34 = load %struct._String** %key.addr, align 4
  %35 = load %struct._Hash** %hash28, align 4
  %keys = getelementptr inbounds %struct._Hash* %35, i32 0, i32 2
  %36 = load %struct._String*** %keys, align 4
  %arrayidx33 = getelementptr inbounds %struct._String** %36, i32 0
  store %struct._String* %34, %struct._String** %arrayidx33, align 4
  %37 = load %struct._Hash** %hash28, align 4
  %size34 = getelementptr inbounds %struct._Hash* %37, i32 0, i32 3
  store i32 1, i32* %size34, align 4
  %38 = load %struct._String** %key.addr, align 4
  %hash35 = getelementptr inbounds %struct._String* %38, i32 0, i32 3
  %39 = load i32* %hash35, align 4
  %40 = load %struct._Hash** %hash28, align 4
  %table36 = getelementptr inbounds %struct._Hash* %40, i32 0, i32 1
  %41 = load %union.UnionType** %table36, align 4
  %arrayidx37 = getelementptr inbounds %union.UnionType* %41, i32 %39
  store %union.UnionType* %arrayidx37, %union.UnionType** %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %42 = load %struct.__sFILE** @__stderrp, align 4
  %43 = load %union.UnionType** %o.addr, align 4
  %o38 = bitcast %union.UnionType* %43 to i64*
  %44 = load i64* %o38, align 4
  %call39 = call i64 @TYPE(i64 %44)
  %call40 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call39)
  call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.HashRef_get, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 473, i8* getelementptr inbounds ([33 x i8]* @.str32, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb7, %sw.bb
  %45 = load %union.UnionType** %ret, align 4
  ret %union.UnionType* %45
}

; Function Attrs: nounwind ssp
define %struct._HashRef* @dynamic_hash_ref_cast_code(%union.UnionType* %o) #0 {
entry:
  %o.addr = alloca %union.UnionType*, align 4
  %ret = alloca %struct._HashRef*, align 4
  %object = alloca %struct._Object*, align 4
  %blessed = alloca %struct._BlessedObject*, align 4
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 4
  store %struct._HashRef* null, %struct._HashRef** %ret, align 4
  %0 = load %union.UnionType** %o.addr, align 4
  %o1 = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o1, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 6, label %sw.bb
    i64 7, label %sw.bb3
    i64 8, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.UnionType** %o.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %and = and i64 %3, 268435455
  %conv = trunc i64 %and to i32
  %4 = inttoptr i32 %conv to i8*
  %5 = bitcast i8* %4 to %struct._HashRef*
  store %struct._HashRef* %5, %struct._HashRef** %ret, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load %union.UnionType** %o.addr, align 4
  %o4 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o4, align 4
  %and5 = and i64 %7, 268435455
  %conv6 = trunc i64 %and5 to i32
  %8 = inttoptr i32 %conv6 to i8*
  %9 = bitcast i8* %8 to %struct._Object*
  store %struct._Object* %9, %struct._Object** %object, align 4
  %10 = load %struct._Object** %object, align 4
  %v = getelementptr inbounds %struct._Object* %10, i32 0, i32 1
  %call7 = call %struct._HashRef* @dynamic_hash_ref_cast_code(%union.UnionType* %v)
  store %struct._HashRef* %call7, %struct._HashRef** %ret, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %11 = load %union.UnionType** %o.addr, align 4
  %o9 = bitcast %union.UnionType* %11 to i64*
  %12 = load i64* %o9, align 4
  %and10 = and i64 %12, 268435455
  %conv11 = trunc i64 %and10 to i32
  %13 = inttoptr i32 %conv11 to i8*
  %14 = bitcast i8* %13 to %struct._BlessedObject*
  store %struct._BlessedObject* %14, %struct._BlessedObject** %blessed, align 4
  %15 = load %struct._BlessedObject** %blessed, align 4
  %members = getelementptr inbounds %struct._BlessedObject* %15, i32 0, i32 1
  %o12 = bitcast %union.UnionType* %members to i64*
  %16 = load i64* %o12, align 4
  %and13 = and i64 %16, 268435455
  %conv14 = trunc i64 %and13 to i32
  %17 = inttoptr i32 %conv14 to i8*
  %18 = bitcast i8* %17 to %struct._HashRef*
  store %struct._HashRef* %18, %struct._HashRef** %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %19 = load %struct.__sFILE** @__stderrp, align 4
  %20 = load %union.UnionType** %o.addr, align 4
  %o15 = bitcast %union.UnionType* %20 to i64*
  %21 = load i64* %o15, align 4
  %call16 = call i64 @TYPE(i64 %21)
  %call17 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb3, %sw.bb
  %22 = load %struct._HashRef** %ret, align 4
  ret %struct._HashRef* %22
}

; Function Attrs: nounwind ssp
define i64 @new_Hash(%struct._Array* %array) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %array.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %hash = alloca %struct._Hash*, align 4
  %size = alloca i32, align 4
  %key_n = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca %union.UnionType**, align 4
  %key = alloca %struct._String*, align 4
  %value = alloca %union.UnionType*, align 4
  %o27 = alloca %struct._Object*, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  %call = call i8* @calloc(i32 16, i32 1)
  %0 = bitcast i8* %call to %struct._Hash*
  store %struct._Hash* %0, %struct._Hash** %hash, align 4
  %call1 = call i8* @calloc(i32 8, i32 512)
  %1 = bitcast i8* %call1 to %union.UnionType*
  %2 = load %struct._Hash** %hash, align 4
  %table = getelementptr inbounds %struct._Hash* %2, i32 0, i32 1
  store %union.UnionType* %1, %union.UnionType** %table, align 4
  %3 = load %struct._Hash** %hash, align 4
  %table2 = getelementptr inbounds %struct._Hash* %3, i32 0, i32 1
  %4 = load %union.UnionType** %table2, align 4
  %5 = bitcast %union.UnionType* %4 to i8*
  %6 = call i32 @llvm.objectsize.i32(i8* %5, i1 false)
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct._Hash** %hash, align 4
  %table3 = getelementptr inbounds %struct._Hash* %7, i32 0, i32 1
  %8 = load %union.UnionType** %table3, align 4
  %9 = bitcast %union.UnionType* %8 to i8*
  %10 = load %union.UnionType** @base_hash_table, align 4
  %11 = bitcast %union.UnionType* %10 to i8*
  %12 = load %struct._Hash** %hash, align 4
  %table4 = getelementptr inbounds %struct._Hash* %12, i32 0, i32 1
  %13 = load %union.UnionType** %table4, align 4
  %14 = bitcast %union.UnionType* %13 to i8*
  %15 = call i32 @llvm.objectsize.i32(i8* %14, i1 false)
  %call5 = call i8* @__memcpy_chk(i8* %9, i8* %11, i32 4096, i32 %15) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load %struct._Hash** %hash, align 4
  %table6 = getelementptr inbounds %struct._Hash* %16, i32 0, i32 1
  %17 = load %union.UnionType** %table6, align 4
  %18 = bitcast %union.UnionType* %17 to i8*
  %19 = load %union.UnionType** @base_hash_table, align 4
  %20 = bitcast %union.UnionType* %19 to i8*
  %call7 = call i8* @__inline_memcpy_chk(i8* %18, i8* %20, i32 4096)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %call7, %cond.false ]
  %call8 = call i8* @calloc(i32 4, i32 512)
  %21 = bitcast i8* %call8 to %struct._String**
  %22 = load %struct._Hash** %hash, align 4
  %keys = getelementptr inbounds %struct._Hash* %22, i32 0, i32 2
  store %struct._String** %21, %struct._String*** %keys, align 4
  %23 = load %struct._Array** %array.addr, align 4
  %size9 = getelementptr inbounds %struct._Array* %23, i32 0, i32 2
  %24 = load i32* %size9, align 4
  store i32 %24, i32* %size, align 4
  store i32 0, i32* %key_n, align 4
  store i32 0, i32* %i, align 4
  %25 = load %struct._Array** %array.addr, align 4
  %list10 = getelementptr inbounds %struct._Array* %25, i32 0, i32 1
  %26 = load %union.UnionType*** %list10, align 4
  store %union.UnionType** %26, %union.UnionType*** %list, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %27 = load i32* %i, align 4
  %28 = load i32* %size, align 4
  %cmp11 = icmp ult i32 %27, %28
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32* %i, align 4
  %30 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %30, i32 %29
  %31 = load %union.UnionType** %arrayidx, align 4
  %o = bitcast %union.UnionType* %31 to i64*
  %32 = load i64* %o, align 4
  %and = and i64 %32, 268435455
  %conv = trunc i64 %and to i32
  %33 = inttoptr i32 %conv to i8*
  %34 = bitcast i8* %33 to %struct._String*
  store %struct._String* %34, %struct._String** %key, align 4
  %35 = load %struct._String** %key, align 4
  %36 = load i32* %key_n, align 4
  %37 = load %struct._Hash** %hash, align 4
  %keys12 = getelementptr inbounds %struct._Hash* %37, i32 0, i32 2
  %38 = load %struct._String*** %keys12, align 4
  %arrayidx13 = getelementptr inbounds %struct._String** %38, i32 %36
  store %struct._String* %35, %struct._String** %arrayidx13, align 4
  %39 = load i32* %i, align 4
  %add = add i32 %39, 1
  %40 = load i32* %size, align 4
  %cmp14 = icmp ult i32 %add, %40
  br i1 %cmp14, label %cond.true16, label %cond.false19

cond.true16:                                      ; preds = %for.body
  %41 = load i32* %i, align 4
  %add17 = add i32 %41, 1
  %42 = load %union.UnionType*** %list, align 4
  %arrayidx18 = getelementptr inbounds %union.UnionType** %42, i32 %add17
  %43 = load %union.UnionType** %arrayidx18, align 4
  br label %cond.end20

cond.false19:                                     ; preds = %for.body
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true16
  %cond21 = phi %union.UnionType* [ %43, %cond.true16 ], [ null, %cond.false19 ]
  store %union.UnionType* %cond21, %union.UnionType** %value, align 4
  %44 = load %union.UnionType** %value, align 4
  %tobool = icmp ne %union.UnionType* %44, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end20
  br label %for.inc

if.end:                                           ; preds = %cond.end20
  %45 = load %union.UnionType** %value, align 4
  %o22 = bitcast %union.UnionType* %45 to i64*
  %46 = load i64* %o22, align 4
  %call23 = call i64 @TYPE(i64 %46)
  %cmp24 = icmp eq i64 %call23, 7
  br i1 %cmp24, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.end
  %47 = load %union.UnionType** %value, align 4
  %o28 = bitcast %union.UnionType* %47 to i64*
  %48 = load i64* %o28, align 4
  %and29 = and i64 %48, 268435455
  %conv30 = trunc i64 %and29 to i32
  %49 = inttoptr i32 %conv30 to i8*
  %50 = bitcast i8* %49 to %struct._Object*
  store %struct._Object* %50, %struct._Object** %o27, align 4
  %51 = load %struct._Object** %o27, align 4
  %v = getelementptr inbounds %struct._Object* %51, i32 0, i32 1
  store %union.UnionType* %v, %union.UnionType** %value, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end
  %52 = load %union.UnionType** %value, align 4
  %o32 = bitcast %union.UnionType* %52 to i64*
  %53 = load i64* %o32, align 4
  %call33 = call i64 @TYPE(i64 %53)
  %cmp34 = icmp eq i64 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end31
  %54 = load %union.UnionType** %value, align 4
  %d = bitcast %union.UnionType* %54 to double*
  %55 = load double* %d, align 4
  %56 = load %struct._String** %key, align 4
  %hash37 = getelementptr inbounds %struct._String* %56, i32 0, i32 3
  %57 = load i32* %hash37, align 4
  %58 = load %struct._Hash** %hash, align 4
  %table38 = getelementptr inbounds %struct._Hash* %58, i32 0, i32 1
  %59 = load %union.UnionType** %table38, align 4
  %arrayidx39 = getelementptr inbounds %union.UnionType* %59, i32 %57
  %d40 = bitcast %union.UnionType* %arrayidx39 to double*
  store double %55, double* %d40, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end31
  %60 = load %union.UnionType** %value, align 4
  %o41 = bitcast %union.UnionType* %60 to i64*
  %61 = load i64* %o41, align 4
  %62 = load %struct._String** %key, align 4
  %hash42 = getelementptr inbounds %struct._String* %62, i32 0, i32 3
  %63 = load i32* %hash42, align 4
  %64 = load %struct._Hash** %hash, align 4
  %table43 = getelementptr inbounds %struct._Hash* %64, i32 0, i32 1
  %65 = load %union.UnionType** %table43, align 4
  %arrayidx44 = getelementptr inbounds %union.UnionType* %65, i32 %63
  %o45 = bitcast %union.UnionType* %arrayidx44 to i64*
  store i64 %61, i64* %o45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then36
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %if.then
  %66 = load i32* %i, align 4
  %add47 = add i32 %66, 2
  store i32 %add47, i32* %i, align 4
  %67 = load i32* %key_n, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %key_n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i32* %key_n, align 4
  %69 = load %struct._Hash** %hash, align 4
  %size48 = getelementptr inbounds %struct._Hash* %69, i32 0, i32 3
  store i32 %68, i32* %size48, align 4
  %70 = load %struct._Hash** %hash, align 4
  %71 = ptrtoint %struct._Hash* %70 to i64
  %or = or i64 %71, -47244640256
  %o49 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o49, align 4
  %72 = bitcast %union.UnionType* %retval to i8*
  %73 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %72, i8* %73, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %74 = bitcast double* %coerce.dive to i64*
  %75 = load i64* %74, align 1
  ret i64 %75
}

; Function Attrs: nounwind ssp
define void @Array_add(%struct._Array* %array, %union.UnionType* %elem) #0 {
entry:
  %array.addr = alloca %struct._Array*, align 4
  %elem.addr = alloca %union.UnionType*, align 4
  %size = alloca i32, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  store %union.UnionType* %elem, %union.UnionType** %elem.addr, align 4
  %0 = load %struct._Array** %array.addr, align 4
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load %struct._Array** %array.addr, align 4
  %3 = load i32* %size, align 4
  %add = add i32 %3, 1
  call void @Array_grow(%struct._Array* %2, i32 %add)
  %4 = load %union.UnionType** %elem.addr, align 4
  %5 = load i32* %size, align 4
  %6 = load %struct._Array** %array.addr, align 4
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  %7 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %7, i32 %5
  store %union.UnionType* %4, %union.UnionType** %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind ssp
define %union.UnionType* @Array_get(%struct._Array* %array, i32 %idx) #0 {
entry:
  %array.addr = alloca %struct._Array*, align 4
  %idx.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct._Array** %array.addr, align 4
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load i32* %size, align 4
  %3 = load i32* %idx.addr, align 4
  %cmp = icmp ule i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._Array** %array.addr, align 4
  %5 = load i32* %idx.addr, align 4
  %add = add nsw i32 %5, 1
  call void @Array_grow(%struct._Array* %4, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32* %idx.addr, align 4
  %7 = load %struct._Array** %array.addr, align 4
  %list = getelementptr inbounds %struct._Array* %7, i32 0, i32 1
  %8 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %8, i32 %6
  %9 = load %union.UnionType** %arrayidx, align 4
  ret %union.UnionType* %9
}

; Function Attrs: nounwind ssp
define %union.UnionType* @ArrayRef_get(%union.UnionType* %o, i32 %idx) #0 {
entry:
  %o.addr = alloca %union.UnionType*, align 4
  %idx.addr = alloca i32, align 4
  %ret = alloca %union.UnionType*, align 4
  %ref = alloca %struct._ArrayRef*, align 4
  %array = alloca %struct._Array*, align 4
  %ref8 = alloca %struct._ArrayRef*, align 4
  %array10 = alloca %struct._Array*, align 4
  %boxed_array = alloca %union.UnionType, align 4
  %array_ref = alloca %union.UnionType, align 4
  %array20 = alloca %struct._Array*, align 4
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 4
  store i32 %idx, i32* %idx.addr, align 4
  store %union.UnionType* @undef, %union.UnionType** %ret, align 4
  %0 = load %union.UnionType** %o.addr, align 4
  %o1 = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o1, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 4, label %sw.bb
    i64 7, label %sw.bb7
    i64 1, label %sw.bb16
    i64 0, label %sw.bb16
    i64 13, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.UnionType** %o.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %and = and i64 %3, 268435455
  %conv = trunc i64 %and to i32
  %4 = inttoptr i32 %conv to i8*
  %5 = bitcast i8* %4 to %struct._ArrayRef*
  store %struct._ArrayRef* %5, %struct._ArrayRef** %ref, align 4
  %6 = load %struct._ArrayRef** %ref, align 4
  %v = getelementptr inbounds %struct._ArrayRef* %6, i32 0, i32 1
  %o3 = bitcast %union.UnionType* %v to i64*
  %7 = load i64* %o3, align 4
  %and4 = and i64 %7, 268435455
  %conv5 = trunc i64 %and4 to i32
  %8 = inttoptr i32 %conv5 to i8*
  %9 = bitcast i8* %8 to %struct._Array*
  store %struct._Array* %9, %struct._Array** %array, align 4
  %10 = load %struct._Array** %array, align 4
  %11 = load i32* %idx.addr, align 4
  %call6 = call %union.UnionType* @Array_get(%struct._Array* %10, i32 %11)
  store %union.UnionType* %call6, %union.UnionType** %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %12 = load %union.UnionType** %o.addr, align 4
  %call9 = call %struct._ArrayRef* @dynamic_array_ref_cast_code(%union.UnionType* %12)
  store %struct._ArrayRef* %call9, %struct._ArrayRef** %ref8, align 4
  %13 = load %struct._ArrayRef** %ref8, align 4
  %v11 = getelementptr inbounds %struct._ArrayRef* %13, i32 0, i32 1
  %o12 = bitcast %union.UnionType* %v11 to i64*
  %14 = load i64* %o12, align 4
  %and13 = and i64 %14, 268435455
  %conv14 = trunc i64 %and13 to i32
  %15 = inttoptr i32 %conv14 to i8*
  %16 = bitcast i8* %15 to %struct._Array*
  store %struct._Array* %16, %struct._Array** %array10, align 4
  %17 = load %struct._Array** %array10, align 4
  %18 = load i32* %idx.addr, align 4
  %call15 = call %union.UnionType* @Array_get(%struct._Array* %17, i32 %18)
  store %union.UnionType* %call15, %union.UnionType** %ret, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry, %entry, %entry
  %call17 = call i64 @new_Array(%union.UnionType** null, i32 0)
  %coerce.dive = getelementptr %union.UnionType* %boxed_array, i32 0, i32 0
  %19 = bitcast double* %coerce.dive to i64*
  store i64 %call17, i64* %19, align 1
  %call18 = call i64 @new_ArrayRef(%union.UnionType* byval align 4 %boxed_array)
  %coerce.dive19 = getelementptr %union.UnionType* %array_ref, i32 0, i32 0
  %20 = bitcast double* %coerce.dive19 to i64*
  store i64 %call18, i64* %20, align 1
  %21 = load %union.UnionType** %o.addr, align 4
  %22 = bitcast %union.UnionType* %21 to i8*
  %23 = bitcast %union.UnionType* %array_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 8, i32 4, i1 false)
  %o21 = bitcast %union.UnionType* %boxed_array to i64*
  %24 = load i64* %o21, align 4
  %and22 = and i64 %24, 268435455
  %conv23 = trunc i64 %and22 to i32
  %25 = inttoptr i32 %conv23 to i8*
  %26 = bitcast i8* %25 to %struct._Array*
  store %struct._Array* %26, %struct._Array** %array20, align 4
  %27 = load %struct._Array** %array20, align 4
  %28 = load i32* %idx.addr, align 4
  %call24 = call %union.UnionType* @Array_get(%struct._Array* %27, i32 %28)
  store %union.UnionType* %call24, %union.UnionType** %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %29 = load %struct.__sFILE** @__stderrp, align 4
  %30 = load %union.UnionType** %o.addr, align 4
  %o25 = bitcast %union.UnionType* %30 to i64*
  %31 = load i64* %o25, align 4
  %call26 = call i64 @TYPE(i64 %31)
  %call27 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call26)
  call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.ArrayRef_get, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 530, i8* getelementptr inbounds ([33 x i8]* @.str32, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb7, %sw.bb
  %32 = load %union.UnionType** %ret, align 4
  ret %union.UnionType* %32
}

; Function Attrs: nounwind ssp
define %struct._ArrayRef* @dynamic_array_ref_cast_code(%union.UnionType* %o) #0 {
entry:
  %o.addr = alloca %union.UnionType*, align 4
  %ret = alloca %struct._ArrayRef*, align 4
  %object = alloca %struct._Object*, align 4
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 4
  store %struct._ArrayRef* null, %struct._ArrayRef** %ret, align 4
  %0 = load %union.UnionType** %o.addr, align 4
  %o1 = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o1, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 4, label %sw.bb
    i64 7, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.UnionType** %o.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %and = and i64 %3, 268435455
  %conv = trunc i64 %and to i32
  %4 = inttoptr i32 %conv to i8*
  %5 = bitcast i8* %4 to %struct._ArrayRef*
  store %struct._ArrayRef* %5, %struct._ArrayRef** %ret, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load %union.UnionType** %o.addr, align 4
  %o4 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o4, align 4
  %and5 = and i64 %7, 268435455
  %conv6 = trunc i64 %and5 to i32
  %8 = inttoptr i32 %conv6 to i8*
  %9 = bitcast i8* %8 to %struct._Object*
  store %struct._Object* %9, %struct._Object** %object, align 4
  %10 = load %struct._Object** %object, align 4
  %v = getelementptr inbounds %struct._Object* %10, i32 0, i32 1
  %call7 = call %struct._ArrayRef* @dynamic_array_ref_cast_code(%union.UnionType* %v)
  store %struct._ArrayRef* %call7, %struct._ArrayRef** %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %11 = load %struct.__sFILE** @__stderrp, align 4
  %12 = load %union.UnionType** %o.addr, align 4
  %o8 = bitcast %union.UnionType* %12 to i64*
  %13 = load i64* %o8, align 4
  %call9 = call i64 @TYPE(i64 %13)
  %call10 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %14 = load %struct._ArrayRef** %ret, align 4
  ret %struct._ArrayRef* %14
}

; Function Attrs: nounwind ssp
define i64 @new_Array(%union.UnionType** %list, i32 %size) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %list.addr = alloca %union.UnionType**, align 4
  %size.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %array = alloca %struct._Array*, align 4
  store %union.UnionType** %list, %union.UnionType*** %list.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %call = call %struct._Object* @fetch_object()
  %0 = bitcast %struct._Object* %call to %struct._Array*
  store %struct._Array* %0, %struct._Array** %array, align 4
  %1 = load %union.UnionType*** %list.addr, align 4
  %2 = load %struct._Array** %array, align 4
  %list1 = getelementptr inbounds %struct._Array* %2, i32 0, i32 1
  store %union.UnionType** %1, %union.UnionType*** %list1, align 4
  %3 = load i32* %size.addr, align 4
  %4 = load %struct._Array** %array, align 4
  %size2 = getelementptr inbounds %struct._Array* %4, i32 0, i32 2
  store i32 %3, i32* %size2, align 4
  %5 = load %struct._Array** %array, align 4
  %6 = ptrtoint %struct._Array* %5 to i64
  %or = or i64 %6, -55834574848
  %o = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o, align 4
  %7 = bitcast %union.UnionType* %retval to i8*
  %8 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %9 = bitcast double* %coerce.dive to i64*
  %10 = load i64* %9, align 1
  ret i64 %10
}

; Function Attrs: nounwind ssp
define void @Array_set(%struct._Array* %array, i32 %idx, %union.UnionType* byval align 4 %elem) #0 {
entry:
  %array.addr = alloca %struct._Array*, align 4
  %idx.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct._Array* %array, %struct._Array** %array.addr, align 4
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct._Array** %array.addr, align 4
  %size1 = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load i32* %size, align 4
  %3 = load i32* %idx.addr, align 4
  %cmp = icmp ule i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._Array** %array.addr, align 4
  %5 = load i32* %idx.addr, align 4
  %add = add nsw i32 %5, 1
  call void @Array_grow(%struct._Array* %4, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32* %idx.addr, align 4
  %7 = load %struct._Array** %array.addr, align 4
  %list = getelementptr inbounds %struct._Array* %7, i32 0, i32 1
  %8 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %8, i32 %6
  store %union.UnionType* %elem, %union.UnionType** %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind ssp
define void @init_table() #0 {
entry:
  %table = alloca %union.UnionType*, align 4
  %i = alloca i32, align 4
  %call = call i8* @calloc(i32 8, i32 512)
  %0 = bitcast i8* %call to %union.UnionType*
  store %union.UnionType* %0, %union.UnionType** %table, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp ult i32 %1, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32* %i, align 4
  %3 = load %union.UnionType** %table, align 4
  %arrayidx = getelementptr inbounds %union.UnionType* %3, i32 %2
  %4 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* bitcast (%union.UnionType* @undef to i8*), i32 8, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %union.UnionType** %table, align 4
  store %union.UnionType* %6, %union.UnionType** @base_hash_table, align 4
  ret void
}

; Function Attrs: nounwind ssp
define void @init_package_map() #0 {
entry:
  %hash = alloca %struct._Hash*, align 4
  %call = call i8* @calloc(i32 16, i32 1)
  %0 = bitcast i8* %call to %struct._Hash*
  store %struct._Hash* %0, %struct._Hash** %hash, align 4
  %call1 = call i8* @calloc(i32 8, i32 512)
  %1 = bitcast i8* %call1 to %union.UnionType*
  %2 = load %struct._Hash** %hash, align 4
  %table = getelementptr inbounds %struct._Hash* %2, i32 0, i32 1
  store %union.UnionType* %1, %union.UnionType** %table, align 4
  %3 = load %struct._Hash** %hash, align 4
  %table2 = getelementptr inbounds %struct._Hash* %3, i32 0, i32 1
  %4 = load %union.UnionType** %table2, align 4
  %5 = bitcast %union.UnionType* %4 to i8*
  %6 = call i32 @llvm.objectsize.i32(i8* %5, i1 false)
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct._Hash** %hash, align 4
  %table3 = getelementptr inbounds %struct._Hash* %7, i32 0, i32 1
  %8 = load %union.UnionType** %table3, align 4
  %9 = bitcast %union.UnionType* %8 to i8*
  %10 = load %union.UnionType** @base_hash_table, align 4
  %11 = bitcast %union.UnionType* %10 to i8*
  %12 = load %struct._Hash** %hash, align 4
  %table4 = getelementptr inbounds %struct._Hash* %12, i32 0, i32 1
  %13 = load %union.UnionType** %table4, align 4
  %14 = bitcast %union.UnionType* %13 to i8*
  %15 = call i32 @llvm.objectsize.i32(i8* %14, i1 false)
  %call5 = call i8* @__memcpy_chk(i8* %9, i8* %11, i32 4096, i32 %15) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load %struct._Hash** %hash, align 4
  %table6 = getelementptr inbounds %struct._Hash* %16, i32 0, i32 1
  %17 = load %union.UnionType** %table6, align 4
  %18 = bitcast %union.UnionType* %17 to i8*
  %19 = load %union.UnionType** @base_hash_table, align 4
  %20 = bitcast %union.UnionType* %19 to i8*
  %call7 = call i8* @__inline_memcpy_chk(i8* %18, i8* %20, i32 4096)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %call7, %cond.false ]
  %call8 = call i8* @calloc(i32 4, i32 512)
  %21 = bitcast i8* %call8 to %struct._String**
  %22 = load %struct._Hash** %hash, align 4
  %keys = getelementptr inbounds %struct._Hash* %22, i32 0, i32 2
  store %struct._String** %21, %struct._String*** %keys, align 4
  %23 = load %struct._Hash** %hash, align 4
  store %struct._Hash* %23, %struct._Hash** @pkg_map, align 4
  ret void
}

; Function Attrs: nounwind ssp
define void @global_init() #0 {
entry:
  call void @new_Undef()
  call void @init_table()
  call void @init_package_map()
  call void @make_object_pool()
  ret void
}

; Function Attrs: nounwind ssp
define void @make_object_pool() #0 {
entry:
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 524288, i32* %size, align 4
  %0 = load i32* %size, align 4
  %call = call i8* @calloc(i32 4, i32 %0)
  %1 = bitcast i8* %call to %struct._Object**
  store %struct._Object** %1, %struct._Object*** @object_pool, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32* %i, align 4
  %3 = load i32* %size, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i8* @calloc(i32 36, i32 1)
  %4 = bitcast i8* %call1 to %struct._Object*
  %5 = load i32* %i, align 4
  %6 = load %struct._Object*** @object_pool, align 4
  %arrayidx = getelementptr inbounds %struct._Object** %6, i32 %5
  store %struct._Object* %4, %struct._Object** %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp
define i32 @make_hash(i8* %_str, i32 %len) #0 {
entry:
  %_str.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %str = alloca i8*, align 4
  %hash = alloca i32, align 4
  store i8* %_str, i8** %_str.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8** %_str.addr, align 4
  store i8* %0, i8** %str, align 4
  store i32 5381, i32* %hash, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32* %len.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32* %hash, align 4
  %shl = shl i32 %2, 5
  %3 = load i32* %hash, align 4
  %add = add i32 %shl, %3
  %4 = load i8** %str, align 4
  %incdec.ptr = getelementptr inbounds i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str, align 4
  %5 = load i8* %4, align 1
  %conv = sext i8 %5 to i32
  %add1 = add i32 %add, %conv
  store i32 %add1, i32* %hash, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32* %hash, align 4
  ret i32 %6
}

declare i32 @strlen(i8*) #1

; Function Attrs: nounwind ssp
define void @_unshift(%struct._Array* %base, i8* %pkg_name) #0 {
entry:
  %base.addr = alloca %struct._Array*, align 4
  %pkg_name.addr = alloca i8*, align 4
  %tmp = alloca %union.UnionType**, align 4
  %class_o = alloca %union.UnionType*, align 4
  %coerce = alloca %union.UnionType, align 4
  store %struct._Array* %base, %struct._Array** %base.addr, align 4
  store i8* %pkg_name, i8** %pkg_name.addr, align 4
  %0 = load %struct._Array** %base.addr, align 4
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size, align 4
  %add = add i32 %1, 1
  %mul = mul i32 4, %add
  %call = call i8* @malloc(i32 %mul)
  %2 = bitcast i8* %call to %union.UnionType**
  store %union.UnionType** %2, %union.UnionType*** %tmp, align 4
  %tobool = icmp ne %union.UnionType** %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 4
  %call1 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str30, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %union.UnionType*** %tmp, align 4
  %add.ptr = getelementptr inbounds %union.UnionType** %4, i32 1
  %5 = bitcast %union.UnionType** %add.ptr to i8*
  %6 = call i32 @llvm.objectsize.i32(i8* %5, i1 false)
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load %union.UnionType*** %tmp, align 4
  %add.ptr2 = getelementptr inbounds %union.UnionType** %7, i32 1
  %8 = bitcast %union.UnionType** %add.ptr2 to i8*
  %9 = load %struct._Array** %base.addr, align 4
  %list = getelementptr inbounds %struct._Array* %9, i32 0, i32 1
  %10 = load %union.UnionType*** %list, align 4
  %11 = bitcast %union.UnionType** %10 to i8*
  %12 = load %struct._Array** %base.addr, align 4
  %size3 = getelementptr inbounds %struct._Array* %12, i32 0, i32 2
  %13 = load i32* %size3, align 4
  %mul4 = mul i32 %13, 4
  %14 = load %union.UnionType*** %tmp, align 4
  %add.ptr5 = getelementptr inbounds %union.UnionType** %14, i32 1
  %15 = bitcast %union.UnionType** %add.ptr5 to i8*
  %16 = call i32 @llvm.objectsize.i32(i8* %15, i1 false)
  %call6 = call i8* @__memcpy_chk(i8* %8, i8* %11, i32 %mul4, i32 %16) #3
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %17 = load %union.UnionType*** %tmp, align 4
  %add.ptr7 = getelementptr inbounds %union.UnionType** %17, i32 1
  %18 = bitcast %union.UnionType** %add.ptr7 to i8*
  %19 = load %struct._Array** %base.addr, align 4
  %list8 = getelementptr inbounds %struct._Array* %19, i32 0, i32 1
  %20 = load %union.UnionType*** %list8, align 4
  %21 = bitcast %union.UnionType** %20 to i8*
  %22 = load %struct._Array** %base.addr, align 4
  %size9 = getelementptr inbounds %struct._Array* %22, i32 0, i32 2
  %23 = load i32* %size9, align 4
  %mul10 = mul i32 %23, 4
  %call11 = call i8* @__inline_memcpy_chk(i8* %18, i8* %21, i32 %mul10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call6, %cond.true ], [ %call11, %cond.false ]
  %24 = load %union.UnionType*** %tmp, align 4
  %25 = load %struct._Array** %base.addr, align 4
  %list12 = getelementptr inbounds %struct._Array* %25, i32 0, i32 1
  store %union.UnionType** %24, %union.UnionType*** %list12, align 4
  %call14 = call %struct._Object* @fetch_object()
  %26 = bitcast %struct._Object* %call14 to %union.UnionType*
  store %union.UnionType* %26, %union.UnionType** %class_o, align 4
  %27 = load i8** %pkg_name.addr, align 4
  %call15 = call i64 @new_String(i8* %27)
  %coerce.dive = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %28 = bitcast double* %coerce.dive to i64*
  store i64 %call15, i64* %28, align 1
  %o = bitcast %union.UnionType* %coerce to i64*
  %29 = load i64* %o, align 4
  %30 = load %union.UnionType** %class_o, align 4
  %o16 = bitcast %union.UnionType* %30 to i64*
  store i64 %29, i64* %o16, align 4
  %31 = load %union.UnionType** %class_o, align 4
  %32 = load %struct._Array** %base.addr, align 4
  %list17 = getelementptr inbounds %struct._Array* %32, i32 0, i32 1
  %33 = load %union.UnionType*** %list17, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %33, i32 0
  store %union.UnionType* %31, %union.UnionType** %arrayidx, align 4
  %34 = load %struct._Array** %base.addr, align 4
  %size18 = getelementptr inbounds %struct._Array* %34, i32 0, i32 2
  %35 = load i32* %size18, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %size18, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp
define void @_make_method_argument(%struct._Array* %base, %struct._BlessedObject* %self) #0 {
entry:
  %base.addr = alloca %struct._Array*, align 4
  %self.addr = alloca %struct._BlessedObject*, align 4
  %tmp = alloca %union.UnionType**, align 4
  %elem = alloca %union.UnionType*, align 4
  store %struct._Array* %base, %struct._Array** %base.addr, align 4
  store %struct._BlessedObject* %self, %struct._BlessedObject** %self.addr, align 4
  %0 = load %struct._Array** %base.addr, align 4
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size, align 4
  %add = add i32 %1, 1
  %mul = mul i32 4, %add
  %call = call i8* @malloc(i32 %mul)
  %2 = bitcast i8* %call to %union.UnionType**
  store %union.UnionType** %2, %union.UnionType*** %tmp, align 4
  %tobool = icmp ne %union.UnionType** %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.__sFILE** @__stderrp, align 4
  %call1 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([34 x i8]* @.str30, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %union.UnionType*** %tmp, align 4
  %add.ptr = getelementptr inbounds %union.UnionType** %4, i32 1
  %5 = bitcast %union.UnionType** %add.ptr to i8*
  %6 = call i32 @llvm.objectsize.i32(i8* %5, i1 false)
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load %union.UnionType*** %tmp, align 4
  %add.ptr2 = getelementptr inbounds %union.UnionType** %7, i32 1
  %8 = bitcast %union.UnionType** %add.ptr2 to i8*
  %9 = load %struct._Array** %base.addr, align 4
  %list = getelementptr inbounds %struct._Array* %9, i32 0, i32 1
  %10 = load %union.UnionType*** %list, align 4
  %11 = bitcast %union.UnionType** %10 to i8*
  %12 = load %struct._Array** %base.addr, align 4
  %size3 = getelementptr inbounds %struct._Array* %12, i32 0, i32 2
  %13 = load i32* %size3, align 4
  %mul4 = mul i32 %13, 4
  %14 = load %union.UnionType*** %tmp, align 4
  %add.ptr5 = getelementptr inbounds %union.UnionType** %14, i32 1
  %15 = bitcast %union.UnionType** %add.ptr5 to i8*
  %16 = call i32 @llvm.objectsize.i32(i8* %15, i1 false)
  %call6 = call i8* @__memcpy_chk(i8* %8, i8* %11, i32 %mul4, i32 %16) #3
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %17 = load %union.UnionType*** %tmp, align 4
  %add.ptr7 = getelementptr inbounds %union.UnionType** %17, i32 1
  %18 = bitcast %union.UnionType** %add.ptr7 to i8*
  %19 = load %struct._Array** %base.addr, align 4
  %list8 = getelementptr inbounds %struct._Array* %19, i32 0, i32 1
  %20 = load %union.UnionType*** %list8, align 4
  %21 = bitcast %union.UnionType** %20 to i8*
  %22 = load %struct._Array** %base.addr, align 4
  %size9 = getelementptr inbounds %struct._Array* %22, i32 0, i32 2
  %23 = load i32* %size9, align 4
  %mul10 = mul i32 %23, 4
  %call11 = call i8* @__inline_memcpy_chk(i8* %18, i8* %21, i32 %mul10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call6, %cond.true ], [ %call11, %cond.false ]
  %24 = load %union.UnionType*** %tmp, align 4
  %25 = load %struct._Array** %base.addr, align 4
  %list12 = getelementptr inbounds %struct._Array* %25, i32 0, i32 1
  store %union.UnionType** %24, %union.UnionType*** %list12, align 4
  %call14 = call %struct._Object* @fetch_object()
  %26 = bitcast %struct._Object* %call14 to %union.UnionType*
  store %union.UnionType* %26, %union.UnionType** %elem, align 4
  %27 = load %struct._BlessedObject** %self.addr, align 4
  %28 = ptrtoint %struct._BlessedObject* %27 to i64
  %or = or i64 %28, -34359738368
  %29 = load %union.UnionType** %elem, align 4
  %o = bitcast %union.UnionType* %29 to i64*
  store i64 %or, i64* %o, align 4
  %30 = load %union.UnionType** %elem, align 4
  %31 = load %struct._Array** %base.addr, align 4
  %list15 = getelementptr inbounds %struct._Array* %31, i32 0, i32 1
  %32 = load %union.UnionType*** %list15, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %32, i32 0
  store %union.UnionType* %30, %union.UnionType** %arrayidx, align 4
  %33 = load %struct._Array** %base.addr, align 4
  %size16 = getelementptr inbounds %struct._Array* %33, i32 0, i32 2
  %34 = load i32* %size16, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %size16, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp
define void @Hash_add(%struct._Hash* %hash, %struct._String* %key, %union.UnionType* byval align 4 %elem) #0 {
entry:
  %hash.addr = alloca %struct._Hash*, align 4
  %key.addr = alloca %struct._String*, align 4
  %size = alloca i32, align 4
  store %struct._Hash* %hash, %struct._Hash** %hash.addr, align 4
  store %struct._String* %key, %struct._String** %key.addr, align 4
  %0 = load %struct._Hash** %hash.addr, align 4
  %size1 = getelementptr inbounds %struct._Hash* %0, i32 0, i32 3
  %1 = load i32* %size1, align 4
  store i32 %1, i32* %size, align 4
  %2 = load %struct._String** %key.addr, align 4
  %hash2 = getelementptr inbounds %struct._String* %2, i32 0, i32 3
  %3 = load i32* %hash2, align 4
  %4 = load %struct._Hash** %hash.addr, align 4
  %table = getelementptr inbounds %struct._Hash* %4, i32 0, i32 1
  %5 = load %union.UnionType** %table, align 4
  %arrayidx = getelementptr inbounds %union.UnionType* %5, i32 %3
  %6 = bitcast %union.UnionType* %arrayidx to i8*
  %7 = bitcast %union.UnionType* %elem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 8, i32 4, i1 false)
  %8 = load %struct._String** %key.addr, align 4
  %9 = load i32* %size, align 4
  %add = add i32 %9, 1
  %10 = load %struct._Hash** %hash.addr, align 4
  %keys = getelementptr inbounds %struct._Hash* %10, i32 0, i32 2
  %11 = load %struct._String*** %keys, align 4
  %arrayidx3 = getelementptr inbounds %struct._String** %11, i32 %add
  store %struct._String* %8, %struct._String** %arrayidx3, align 4
  %12 = load %struct._Hash** %hash.addr, align 4
  %size4 = getelementptr inbounds %struct._Hash* %12, i32 0, i32 3
  %13 = load i32* %size4, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %size4, align 4
  ret void
}

; Function Attrs: nounwind ssp
define i64 @Hash_get(%struct._Hash* %hash, %struct._String* %key) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %hash.addr = alloca %struct._Hash*, align 4
  %key.addr = alloca %struct._String*, align 4
  store %struct._Hash* %hash, %struct._Hash** %hash.addr, align 4
  store %struct._String* %key, %struct._String** %key.addr, align 4
  %0 = load %struct._String** %key.addr, align 4
  %hash1 = getelementptr inbounds %struct._String* %0, i32 0, i32 3
  %1 = load i32* %hash1, align 4
  %2 = load %struct._Hash** %hash.addr, align 4
  %table = getelementptr inbounds %struct._Hash* %2, i32 0, i32 1
  %3 = load %union.UnionType** %table, align 4
  %arrayidx = getelementptr inbounds %union.UnionType* %3, i32 %1
  %4 = bitcast %union.UnionType* %retval to i8*
  %5 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %6 = bitcast double* %coerce.dive to i64*
  %7 = load i64* %6, align 1
  ret i64 %7
}

; Function Attrs: nounwind ssp
define i64 @bless(%struct._Array* %args) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %args.addr = alloca %struct._Array*, align 4
  %ret = alloca %union.UnionType, align 4
  %self = alloca %union.UnionType, align 4
  %class = alloca %union.UnionType, align 4
  %blessed = alloca %struct._BlessedObject*, align 4
  %pkg_name = alloca i8*, align 4
  %hash_ref = alloca %struct._HashRef*, align 4
  %hash = alloca %struct._Hash*, align 4
  %pkg = alloca %struct._Package*, align 4
  store %struct._Array* %args, %struct._Array** %args.addr, align 4
  %0 = load %struct._Array** %args.addr, align 4
  %size = getelementptr inbounds %struct._Array* %0, i32 0, i32 2
  %1 = load i32* %size, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE** @__stderrp, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._Array** %args.addr, align 4
  %list = getelementptr inbounds %struct._Array* %3, i32 0, i32 1
  %4 = load %union.UnionType*** %list, align 4
  %arrayidx = getelementptr inbounds %union.UnionType** %4, i32 0
  %5 = load %union.UnionType** %arrayidx, align 4
  %6 = bitcast %union.UnionType* %self to i8*
  %7 = bitcast %union.UnionType* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 8, i32 4, i1 false)
  %8 = load %struct._Array** %args.addr, align 4
  %list1 = getelementptr inbounds %struct._Array* %8, i32 0, i32 1
  %9 = load %union.UnionType*** %list1, align 4
  %arrayidx2 = getelementptr inbounds %union.UnionType** %9, i32 1
  %10 = load %union.UnionType** %arrayidx2, align 4
  %11 = bitcast %union.UnionType* %class to i8*
  %12 = bitcast %union.UnionType* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  %call3 = call i8* @calloc(i32 20, i32 1)
  %13 = bitcast i8* %call3 to %struct._BlessedObject*
  store %struct._BlessedObject* %13, %struct._BlessedObject** %blessed, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %o = bitcast %union.UnionType* %self to i64*
  %14 = load i64* %o, align 4
  %call4 = call i64 @TYPE(i64 %14)
  %cmp5 = icmp ne i64 %call4, 6
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %do.body
  %15 = load %struct.__sFILE** @__stderrp, align 4
  %o7 = bitcast %union.UnionType* %self to i64*
  %16 = load i64* %o7, align 4
  %call8 = call i64 @TYPE(i64 %16)
  %call9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call8)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 664, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end10:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end10
  %o11 = bitcast %union.UnionType* %class to i64*
  %17 = load i64* %o11, align 4
  %call12 = call i64 @TYPE(i64 %17)
  %cmp13 = icmp eq i64 %call12, 7
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %o14 = bitcast %union.UnionType* %class to i64*
  %18 = load i64* %o14, align 4
  %and = and i64 %18, 268435455
  %conv = trunc i64 %and to i32
  %19 = inttoptr i32 %conv to i8*
  %20 = bitcast i8* %19 to %struct._Object*
  %v = getelementptr inbounds %struct._Object* %20, i32 0, i32 1
  %21 = bitcast %union.UnionType* %class to i8*
  %22 = bitcast %union.UnionType* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %22, i32 8, i32 4, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %23 = bitcast %union.UnionType* %class to i8*
  %24 = bitcast %union.UnionType* %class to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 8, i32 4, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %do.body15

do.body15:                                        ; preds = %cond.end
  %o16 = bitcast %union.UnionType* %class to i64*
  %25 = load i64* %o16, align 4
  %call17 = call i64 @TYPE(i64 %25)
  %cmp18 = icmp ne i64 %call17, 2
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %do.body15
  %26 = load %struct.__sFILE** @__stderrp, align 4
  %o21 = bitcast %union.UnionType* %class to i64*
  %27 = load i64* %o21, align 4
  %call22 = call i64 @TYPE(i64 %27)
  %call23 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call22)
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 666, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end24:                                         ; preds = %do.body15
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  %o26 = bitcast %union.UnionType* %class to i64*
  %28 = load i64* %o26, align 4
  %and27 = and i64 %28, 268435455
  %conv28 = trunc i64 %and27 to i32
  %29 = inttoptr i32 %conv28 to i8*
  %30 = bitcast i8* %29 to %struct._String*
  %s = getelementptr inbounds %struct._String* %30, i32 0, i32 1
  %31 = load i8** %s, align 4
  store i8* %31, i8** %pkg_name, align 4
  %o29 = bitcast %union.UnionType* %self to i64*
  %32 = load i64* %o29, align 4
  %and30 = and i64 %32, 268435455
  %conv31 = trunc i64 %and30 to i32
  %33 = inttoptr i32 %conv31 to i8*
  %34 = bitcast i8* %33 to %struct._HashRef*
  store %struct._HashRef* %34, %struct._HashRef** %hash_ref, align 4
  %35 = load %struct._HashRef** %hash_ref, align 4
  %v32 = getelementptr inbounds %struct._HashRef* %35, i32 0, i32 1
  %o33 = bitcast %union.UnionType* %v32 to i64*
  %36 = load i64* %o33, align 4
  %and34 = and i64 %36, 268435455
  %conv35 = trunc i64 %and34 to i32
  %37 = inttoptr i32 %conv35 to i8*
  %38 = bitcast i8* %37 to %struct._Hash*
  store %struct._Hash* %38, %struct._Hash** %hash, align 4
  %39 = load %struct._BlessedObject** %blessed, align 4
  %members = getelementptr inbounds %struct._BlessedObject* %39, i32 0, i32 1
  %40 = bitcast %union.UnionType* %members to i8*
  %41 = bitcast %union.UnionType* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %40, i8* %41, i32 8, i32 4, i1 false)
  %42 = load i8** %pkg_name, align 4
  %43 = load %struct._BlessedObject** %blessed, align 4
  %pkg_name36 = getelementptr inbounds %struct._BlessedObject* %43, i32 0, i32 3
  store i8* %42, i8** %pkg_name36, align 4
  %44 = load i8** %pkg_name, align 4
  %call37 = call %struct._Package* @get_pkg(i8* %44)
  store %struct._Package* %call37, %struct._Package** %pkg, align 4
  %45 = load %struct._Package** %pkg, align 4
  %tobool = icmp ne %struct._Package* %45, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end25
  %46 = phi i1 [ false, %do.end25 ], [ true, %land.rhs ]
  %lnot = xor i1 %46, true
  %lnot.ext = zext i1 %lnot to i32
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0)
  %tobool38 = icmp ne i32 %expval, 0
  br i1 %tobool38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([6 x i8]* @__func__.bless, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 677, i8* getelementptr inbounds ([30 x i8]* @.str35, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end41

cond.false40:                                     ; preds = %land.end
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false40, %47
  %48 = load %struct._Package** %pkg, align 4
  %49 = load %struct._BlessedObject** %blessed, align 4
  %mtds = getelementptr inbounds %struct._BlessedObject* %49, i32 0, i32 2
  store %struct._Package* %48, %struct._Package** %mtds, align 4
  %50 = load %struct._BlessedObject** %blessed, align 4
  %51 = ptrtoint %struct._BlessedObject* %50 to i64
  %or = or i64 %51, -34359738368
  %o42 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o42, align 4
  %52 = bitcast %union.UnionType* %retval to i8*
  %53 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %52, i8* %53, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %54 = bitcast double* %coerce.dive to i64*
  %55 = load i64* %54, align 1
  ret i64 %55
}

; Function Attrs: nounwind ssp
define %struct._Package* @get_pkg(i8* %pkg_name) #0 {
entry:
  %retval = alloca %struct._Package*, align 4
  %pkg_name.addr = alloca i8*, align 4
  %ret = alloca %struct._Package*, align 4
  %_key = alloca %union.UnionType, align 4
  %key = alloca %struct._String*, align 4
  %_pkg = alloca %union.UnionType, align 4
  %pkg = alloca %struct._Package*, align 4
  %coerce = alloca %union.UnionType, align 4
  %value = alloca %union.UnionType, align 4
  store i8* %pkg_name, i8** %pkg_name.addr, align 4
  store %struct._Package* null, %struct._Package** %ret, align 4
  %0 = load i8** %pkg_name.addr, align 4
  %call = call i64 @new_String(i8* %0)
  %coerce.dive = getelementptr %union.UnionType* %_key, i32 0, i32 0
  %1 = bitcast double* %coerce.dive to i64*
  store i64 %call, i64* %1, align 1
  %o = bitcast %union.UnionType* %_key to i64*
  %2 = load i64* %o, align 4
  %and = and i64 %2, 268435455
  %conv = trunc i64 %and to i32
  %3 = inttoptr i32 %conv to i8*
  %4 = bitcast i8* %3 to %struct._String*
  store %struct._String* %4, %struct._String** %key, align 4
  %5 = load %struct._Hash** @pkg_map, align 4
  %6 = load %struct._String** %key, align 4
  %call1 = call i64 @Hash_get(%struct._Hash* %5, %struct._String* %6)
  %coerce.dive2 = getelementptr %union.UnionType* %_pkg, i32 0, i32 0
  %7 = bitcast double* %coerce.dive2 to i64*
  store i64 %call1, i64* %7, align 1
  %o3 = bitcast %union.UnionType* %_pkg to i64*
  %8 = load i64* %o3, align 4
  %call4 = call i64 @TYPE(i64 %8)
  %cmp = icmp eq i64 %call4, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %o6 = bitcast %union.UnionType* %_pkg to i64*
  %9 = load i64* %o6, align 4
  %and7 = and i64 %9, 268435455
  %conv8 = trunc i64 %and7 to i32
  %10 = inttoptr i32 %conv8 to i8*
  %11 = bitcast i8* %10 to %struct._Package*
  store %struct._Package* %11, %struct._Package** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call9 = call i8* @calloc(i32 24, i32 1)
  %12 = bitcast i8* %call9 to %struct._Package*
  store %struct._Package* %12, %struct._Package** %pkg, align 4
  %call10 = call i8* @calloc(i32 8, i32 512)
  %13 = bitcast i8* %call10 to %union.UnionType*
  %14 = load %struct._Package** %pkg, align 4
  %table = getelementptr inbounds %struct._Package* %14, i32 0, i32 1
  store %union.UnionType* %13, %union.UnionType** %table, align 4
  %15 = load %struct._Package** %pkg, align 4
  %table11 = getelementptr inbounds %struct._Package* %15, i32 0, i32 1
  %16 = load %union.UnionType** %table11, align 4
  %17 = bitcast %union.UnionType* %16 to i8*
  %18 = call i32 @llvm.objectsize.i32(i8* %17, i1 false)
  %cmp12 = icmp ne i32 %18, -1
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load %struct._Package** %pkg, align 4
  %table14 = getelementptr inbounds %struct._Package* %19, i32 0, i32 1
  %20 = load %union.UnionType** %table14, align 4
  %21 = bitcast %union.UnionType* %20 to i8*
  %22 = load %union.UnionType** @base_hash_table, align 4
  %23 = bitcast %union.UnionType* %22 to i8*
  %24 = load %struct._Package** %pkg, align 4
  %table15 = getelementptr inbounds %struct._Package* %24, i32 0, i32 1
  %25 = load %union.UnionType** %table15, align 4
  %26 = bitcast %union.UnionType* %25 to i8*
  %27 = call i32 @llvm.objectsize.i32(i8* %26, i1 false)
  %call16 = call i8* @__memcpy_chk(i8* %21, i8* %23, i32 4096, i32 %27) #3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %28 = load %struct._Package** %pkg, align 4
  %table17 = getelementptr inbounds %struct._Package* %28, i32 0, i32 1
  %29 = load %union.UnionType** %table17, align 4
  %30 = bitcast %union.UnionType* %29 to i8*
  %31 = load %union.UnionType** @base_hash_table, align 4
  %32 = bitcast %union.UnionType* %31 to i8*
  %call18 = call i8* @__inline_memcpy_chk(i8* %30, i8* %32, i32 4096)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call16, %cond.true ], [ %call18, %cond.false ]
  %call19 = call i8* @calloc(i32 4, i32 512)
  %33 = bitcast i8* %call19 to %struct._String**
  %34 = load %struct._Package** %pkg, align 4
  %keys = getelementptr inbounds %struct._Package* %34, i32 0, i32 2
  store %struct._String** %33, %struct._String*** %keys, align 4
  %call20 = call i64 @new_Array(%union.UnionType** null, i32 0)
  %coerce.dive21 = getelementptr %union.UnionType* %coerce, i32 0, i32 0
  %35 = bitcast double* %coerce.dive21 to i64*
  store i64 %call20, i64* %35, align 1
  %o22 = bitcast %union.UnionType* %coerce to i64*
  %36 = load i64* %o22, align 4
  %and23 = and i64 %36, 268435455
  %conv24 = trunc i64 %and23 to i32
  %37 = inttoptr i32 %conv24 to i8*
  %38 = bitcast i8* %37 to %struct._Array*
  %39 = load %struct._Package** %pkg, align 4
  %isa = getelementptr inbounds %struct._Package* %39, i32 0, i32 4
  store %struct._Array* %38, %struct._Array** %isa, align 4
  %40 = load i8** %pkg_name.addr, align 4
  %41 = load %struct._Package** %pkg, align 4
  %name = getelementptr inbounds %struct._Package* %41, i32 0, i32 5
  store i8* %40, i8** %name, align 4
  %42 = load %struct._Package** %pkg, align 4
  %43 = ptrtoint %struct._Package* %42 to i64
  %or = or i64 %43, -21474836480
  %o25 = bitcast %union.UnionType* %value to i64*
  store i64 %or, i64* %o25, align 4
  %44 = load %struct._Hash** @pkg_map, align 4
  %45 = load %struct._String** %key, align 4
  call void @Hash_add(%struct._Hash* %44, %struct._String* %45, %union.UnionType* byval align 4 %value)
  %46 = load %struct._Package** %pkg, align 4
  store %struct._Package* %46, %struct._Package** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %47 = load %struct._Package** %retval
  ret %struct._Package* %47
}

; Function Attrs: nounwind readnone
declare i32 @llvm.expect.i32(i32, i32) #5

; Function Attrs: nounwind ssp
define void @store_method_by_pkg_name(i8* %pkg_name, i8* %mtd_name, i64 (%struct._Array*)* %code) #0 {
entry:
  %pkg_name.addr = alloca i8*, align 4
  %mtd_name.addr = alloca i8*, align 4
  %code.addr = alloca i64 (%struct._Array*)*, align 4
  %pkg = alloca %struct._Package*, align 4
  %_mtd_name = alloca %union.UnionType, align 4
  %o = alloca %struct._CodeRef*, align 4
  %code_ref = alloca %union.UnionType, align 4
  store i8* %pkg_name, i8** %pkg_name.addr, align 4
  store i8* %mtd_name, i8** %mtd_name.addr, align 4
  store i64 (%struct._Array*)* %code, i64 (%struct._Array*)** %code.addr, align 4
  %0 = load i8** %pkg_name.addr, align 4
  %call = call %struct._Package* @get_pkg(i8* %0)
  store %struct._Package* %call, %struct._Package** %pkg, align 4
  %1 = load i8** %mtd_name.addr, align 4
  %call1 = call i64 @new_String(i8* %1)
  %coerce.dive = getelementptr %union.UnionType* %_mtd_name, i32 0, i32 0
  %2 = bitcast double* %coerce.dive to i64*
  store i64 %call1, i64* %2, align 1
  %call2 = call i8* @calloc(i32 8, i32 1)
  %3 = bitcast i8* %call2 to %struct._CodeRef*
  store %struct._CodeRef* %3, %struct._CodeRef** %o, align 4
  %4 = load i64 (%struct._Array*)** %code.addr, align 4
  %5 = load %struct._CodeRef** %o, align 4
  %code3 = getelementptr inbounds %struct._CodeRef* %5, i32 0, i32 1
  store i64 (%struct._Array*)* %4, i64 (%struct._Array*)** %code3, align 4
  %6 = load %struct._CodeRef** %o, align 4
  %7 = ptrtoint %struct._CodeRef* %6 to i64
  %or = or i64 %7, -30064771072
  %o4 = bitcast %union.UnionType* %code_ref to i64*
  store i64 %or, i64* %o4, align 4
  %8 = load %struct._Package** %pkg, align 4
  %9 = bitcast %struct._Package* %8 to %struct._Hash*
  %o5 = bitcast %union.UnionType* %_mtd_name to i64*
  %10 = load i64* %o5, align 4
  %and = and i64 %10, 268435455
  %conv = trunc i64 %and to i32
  %11 = inttoptr i32 %conv to i8*
  %12 = bitcast i8* %11 to %struct._String*
  call void @Hash_add(%struct._Hash* %9, %struct._String* %12, %union.UnionType* byval align 4 %code_ref)
  ret void
}

; Function Attrs: nounwind ssp
define i64 (%struct._Array*)* @get_method_by_name(%struct._BlessedObject* %self, i8* %mtd_name) #0 {
entry:
  %self.addr = alloca %struct._BlessedObject*, align 4
  %mtd_name.addr = alloca i8*, align 4
  %mtds = alloca %struct._Package*, align 4
  %str = alloca %union.UnionType, align 4
  %s = alloca %struct._String*, align 4
  %mtd = alloca %union.UnionType, align 4
  %code_ref = alloca %struct._CodeRef*, align 4
  %isa = alloca %struct._Array*, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %base = alloca %struct._Package*, align 4
  %mtd16 = alloca %union.UnionType, align 4
  store %struct._BlessedObject* %self, %struct._BlessedObject** %self.addr, align 4
  store i8* %mtd_name, i8** %mtd_name.addr, align 4
  %0 = load %struct._BlessedObject** %self.addr, align 4
  %mtds1 = getelementptr inbounds %struct._BlessedObject* %0, i32 0, i32 2
  %1 = load %struct._Package** %mtds1, align 4
  store %struct._Package* %1, %struct._Package** %mtds, align 4
  %2 = load i8** %mtd_name.addr, align 4
  %call = call i64 @new_String(i8* %2)
  %coerce.dive = getelementptr %union.UnionType* %str, i32 0, i32 0
  %3 = bitcast double* %coerce.dive to i64*
  store i64 %call, i64* %3, align 1
  %o = bitcast %union.UnionType* %str to i64*
  %4 = load i64* %o, align 4
  %and = and i64 %4, 268435455
  %conv = trunc i64 %and to i32
  %5 = inttoptr i32 %conv to i8*
  %6 = bitcast i8* %5 to %struct._String*
  store %struct._String* %6, %struct._String** %s, align 4
  %7 = load %struct._String** %s, align 4
  %hash = getelementptr inbounds %struct._String* %7, i32 0, i32 3
  %8 = load i32* %hash, align 4
  %9 = load %struct._Package** %mtds, align 4
  %table = getelementptr inbounds %struct._Package* %9, i32 0, i32 1
  %10 = load %union.UnionType** %table, align 4
  %arrayidx = getelementptr inbounds %union.UnionType* %10, i32 %8
  %11 = bitcast %union.UnionType* %mtd to i8*
  %12 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 8, i32 4, i1 false)
  store %struct._CodeRef* null, %struct._CodeRef** %code_ref, align 4
  %o2 = bitcast %union.UnionType* %mtd to i64*
  %13 = load i64* %o2, align 4
  %call3 = call i64 @TYPE(i64 %13)
  %cmp = icmp eq i64 %call3, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %o5 = bitcast %union.UnionType* %mtd to i64*
  %14 = load i64* %o5, align 4
  %and6 = and i64 %14, 268435455
  %conv7 = trunc i64 %and6 to i32
  %15 = inttoptr i32 %conv7 to i8*
  %16 = bitcast i8* %15 to %struct._CodeRef*
  store %struct._CodeRef* %16, %struct._CodeRef** %code_ref, align 4
  br label %if.end28

if.else:                                          ; preds = %entry
  %17 = load %struct._Package** %mtds, align 4
  %isa8 = getelementptr inbounds %struct._Package* %17, i32 0, i32 4
  %18 = load %struct._Array** %isa8, align 4
  store %struct._Array* %18, %struct._Array** %isa, align 4
  %19 = load %struct._Array** %isa, align 4
  %size9 = getelementptr inbounds %struct._Array* %19, i32 0, i32 2
  %20 = load i32* %size9, align 4
  store i32 %20, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %21 = load i32* %i, align 4
  %22 = load i32* %size, align 4
  %cmp10 = icmp ult i32 %21, %22
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32* %i, align 4
  %24 = load %struct._Array** %isa, align 4
  %list = getelementptr inbounds %struct._Array* %24, i32 0, i32 1
  %25 = load %union.UnionType*** %list, align 4
  %arrayidx12 = getelementptr inbounds %union.UnionType** %25, i32 %23
  %26 = load %union.UnionType** %arrayidx12, align 4
  %o13 = bitcast %union.UnionType* %26 to i64*
  %27 = load i64* %o13, align 4
  %and14 = and i64 %27, 268435455
  %conv15 = trunc i64 %and14 to i32
  %28 = inttoptr i32 %conv15 to i8*
  %29 = bitcast i8* %28 to %struct._Package*
  store %struct._Package* %29, %struct._Package** %base, align 4
  %30 = load %struct._String** %s, align 4
  %hash17 = getelementptr inbounds %struct._String* %30, i32 0, i32 3
  %31 = load i32* %hash17, align 4
  %32 = load %struct._Package** %base, align 4
  %table18 = getelementptr inbounds %struct._Package* %32, i32 0, i32 1
  %33 = load %union.UnionType** %table18, align 4
  %arrayidx19 = getelementptr inbounds %union.UnionType* %33, i32 %31
  %34 = bitcast %union.UnionType* %mtd16 to i8*
  %35 = bitcast %union.UnionType* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* %35, i32 8, i32 4, i1 false)
  %o20 = bitcast %union.UnionType* %mtd16 to i64*
  %36 = load i64* %o20, align 4
  %call21 = call i64 @TYPE(i64 %36)
  %cmp22 = icmp eq i64 %call21, 9
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %for.body
  %o25 = bitcast %union.UnionType* %mtd16 to i64*
  %37 = load i64* %o25, align 4
  %and26 = and i64 %37, 268435455
  %conv27 = trunc i64 %and26 to i32
  %38 = inttoptr i32 %conv27 to i8*
  %39 = bitcast i8* %38 to %struct._CodeRef*
  store %struct._CodeRef* %39, %struct._CodeRef** %code_ref, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32* %i, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then24, %for.cond
  br label %if.end28

if.end28:                                         ; preds = %for.end, %if.then
  %41 = load %struct._CodeRef** %code_ref, align 4
  %tobool = icmp ne %struct._CodeRef* %41, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %42 = phi i1 [ false, %if.end28 ], [ true, %land.rhs ]
  %lnot = xor i1 %42, true
  %lnot.ext = zext i1 %lnot to i32
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0)
  %tobool29 = icmp ne i32 %expval, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.get_method_by_name, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 750, i8* getelementptr inbounds ([33 x i8]* @.str37, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %43
  %44 = load %struct._CodeRef** %code_ref, align 4
  %code = getelementptr inbounds %struct._CodeRef* %44, i32 0, i32 1
  %45 = load i64 (%struct._Array*)** %code, align 4
  ret i64 (%struct._Array*)* %45
}

; Function Attrs: nounwind ssp
define i64 (%struct._Array*)* @get_class_method_by_name(i8* %pkg_name, i8* %mtd_name) #0 {
entry:
  %pkg_name.addr = alloca i8*, align 4
  %mtd_name.addr = alloca i8*, align 4
  %pkg = alloca %struct._Package*, align 4
  %str = alloca %union.UnionType, align 4
  %s = alloca %struct._String*, align 4
  %mtd = alloca %union.UnionType, align 4
  %code_ref = alloca %struct._CodeRef*, align 4
  store i8* %pkg_name, i8** %pkg_name.addr, align 4
  store i8* %mtd_name, i8** %mtd_name.addr, align 4
  %0 = load i8** %pkg_name.addr, align 4
  %call = call %struct._Package* @get_pkg(i8* %0)
  store %struct._Package* %call, %struct._Package** %pkg, align 4
  %1 = load i8** %mtd_name.addr, align 4
  %call1 = call i64 @new_String(i8* %1)
  %coerce.dive = getelementptr %union.UnionType* %str, i32 0, i32 0
  %2 = bitcast double* %coerce.dive to i64*
  store i64 %call1, i64* %2, align 1
  %o = bitcast %union.UnionType* %str to i64*
  %3 = load i64* %o, align 4
  %and = and i64 %3, 268435455
  %conv = trunc i64 %and to i32
  %4 = inttoptr i32 %conv to i8*
  %5 = bitcast i8* %4 to %struct._String*
  store %struct._String* %5, %struct._String** %s, align 4
  %6 = load %struct._String** %s, align 4
  %hash = getelementptr inbounds %struct._String* %6, i32 0, i32 3
  %7 = load i32* %hash, align 4
  %8 = load %struct._Package** %pkg, align 4
  %table = getelementptr inbounds %struct._Package* %8, i32 0, i32 1
  %9 = load %union.UnionType** %table, align 4
  %arrayidx = getelementptr inbounds %union.UnionType* %9, i32 %7
  %10 = bitcast %union.UnionType* %mtd to i8*
  %11 = bitcast %union.UnionType* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %o2 = bitcast %union.UnionType* %mtd to i64*
  %12 = load i64* %o2, align 4
  %and3 = and i64 %12, 268435455
  %conv4 = trunc i64 %and3 to i32
  %13 = inttoptr i32 %conv4 to i8*
  %14 = bitcast i8* %13 to %struct._CodeRef*
  store %struct._CodeRef* %14, %struct._CodeRef** %code_ref, align 4
  %15 = load %struct._CodeRef** %code_ref, align 4
  %tobool = icmp ne %struct._CodeRef* %15, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %16, true
  %lnot.ext = zext i1 %lnot to i32
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0)
  %tobool5 = icmp ne i32 %expval, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(i8* getelementptr inbounds ([25 x i8]* @__func__.get_class_method_by_name, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 761, i8* getelementptr inbounds ([33 x i8]* @.str37, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %17
  %18 = load %struct._CodeRef** %code_ref, align 4
  %code = getelementptr inbounds %struct._CodeRef* %18, i32 0, i32 1
  %19 = load i64 (%struct._Array*)** %code, align 4
  ret i64 (%struct._Array*)* %19
}

; Function Attrs: nounwind ssp
define void @add_base_name(i8* %pkg_name, i8* %base_name) #0 {
entry:
  %pkg_name.addr = alloca i8*, align 4
  %base_name.addr = alloca i8*, align 4
  %pkg = alloca %struct._Package*, align 4
  %base = alloca %struct._Package*, align 4
  %boxed_base = alloca %union.UnionType*, align 4
  store i8* %pkg_name, i8** %pkg_name.addr, align 4
  store i8* %base_name, i8** %base_name.addr, align 4
  %0 = load i8** %pkg_name.addr, align 4
  %call = call %struct._Package* @get_pkg(i8* %0)
  store %struct._Package* %call, %struct._Package** %pkg, align 4
  %1 = load i8** %base_name.addr, align 4
  %call1 = call %struct._Package* @get_pkg(i8* %1)
  store %struct._Package* %call1, %struct._Package** %base, align 4
  %call2 = call %struct._Object* @fetch_object()
  %2 = bitcast %struct._Object* %call2 to %union.UnionType*
  store %union.UnionType* %2, %union.UnionType** %boxed_base, align 4
  %3 = load %struct._Package** %base, align 4
  %4 = ptrtoint %struct._Package* %3 to i64
  %or = or i64 %4, -21474836480
  %5 = load %union.UnionType** %boxed_base, align 4
  %o = bitcast %union.UnionType* %5 to i64*
  store i64 %or, i64* %o, align 4
  %6 = load %struct._Package** %pkg, align 4
  %isa = getelementptr inbounds %struct._Package* %6, i32 0, i32 4
  %7 = load %struct._Array** %isa, align 4
  %8 = load %union.UnionType** %boxed_base, align 4
  call void @Array_add(%struct._Array* %7, %union.UnionType* %8)
  ret void
}

; Function Attrs: nounwind ssp
define i64 @Hash_to_array(%struct._Hash* %hash) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %hash.addr = alloca %struct._Hash*, align 4
  %ret = alloca %union.UnionType, align 4
  %array = alloca %struct._Array*, align 4
  %key_n = alloca i32, align 4
  %array_size = alloca i32, align 4
  %i = alloca i32, align 4
  %key = alloca %struct._String*, align 4
  %boxed_key = alloca %union.UnionType*, align 4
  store %struct._Hash* %hash, %struct._Hash** %hash.addr, align 4
  %call = call i8* @calloc(i32 12, i32 1)
  %0 = bitcast i8* %call to %struct._Array*
  store %struct._Array* %0, %struct._Array** %array, align 4
  %1 = load %struct._Hash** %hash.addr, align 4
  %size = getelementptr inbounds %struct._Hash* %1, i32 0, i32 3
  %2 = load i32* %size, align 4
  store i32 %2, i32* %key_n, align 4
  %3 = load i32* %key_n, align 4
  %mul = mul i32 %3, 2
  store i32 %mul, i32* %array_size, align 4
  %4 = load i32* %array_size, align 4
  %call1 = call i8* @calloc(i32 8, i32 %4)
  %5 = bitcast i8* %call1 to %union.UnionType**
  %6 = load %struct._Array** %array, align 4
  %list = getelementptr inbounds %struct._Array* %6, i32 0, i32 1
  store %union.UnionType** %5, %union.UnionType*** %list, align 4
  %7 = load i32* %array_size, align 4
  %8 = load %struct._Array** %array, align 4
  %size2 = getelementptr inbounds %struct._Array* %8, i32 0, i32 2
  store i32 %7, i32* %size2, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32* %i, align 4
  %10 = load i32* %key_n, align 4
  %cmp = icmp ult i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32* %i, align 4
  %12 = load %struct._Hash** %hash.addr, align 4
  %keys = getelementptr inbounds %struct._Hash* %12, i32 0, i32 2
  %13 = load %struct._String*** %keys, align 4
  %arrayidx = getelementptr inbounds %struct._String** %13, i32 %11
  %14 = load %struct._String** %arrayidx, align 4
  store %struct._String* %14, %struct._String** %key, align 4
  %call3 = call %struct._Object* @fetch_object()
  %15 = bitcast %struct._Object* %call3 to %union.UnionType*
  store %union.UnionType* %15, %union.UnionType** %boxed_key, align 4
  %16 = load %struct._String** %key, align 4
  %17 = ptrtoint %struct._String* %16 to i64
  %or = or i64 %17, -60129542144
  %18 = load %union.UnionType** %boxed_key, align 4
  %o = bitcast %union.UnionType* %18 to i64*
  store i64 %or, i64* %o, align 4
  %19 = load %union.UnionType** %boxed_key, align 4
  %20 = load i32* %i, align 4
  %mul4 = mul i32 %20, 2
  %21 = load %struct._Array** %array, align 4
  %list5 = getelementptr inbounds %struct._Array* %21, i32 0, i32 1
  %22 = load %union.UnionType*** %list5, align 4
  %arrayidx6 = getelementptr inbounds %union.UnionType** %22, i32 %mul4
  store %union.UnionType* %19, %union.UnionType** %arrayidx6, align 4
  %23 = load %struct._String** %key, align 4
  %hash7 = getelementptr inbounds %struct._String* %23, i32 0, i32 3
  %24 = load i32* %hash7, align 4
  %25 = load %struct._Hash** %hash.addr, align 4
  %table = getelementptr inbounds %struct._Hash* %25, i32 0, i32 1
  %26 = load %union.UnionType** %table, align 4
  %arrayidx8 = getelementptr inbounds %union.UnionType* %26, i32 %24
  %27 = load i32* %i, align 4
  %mul9 = mul i32 %27, 2
  %add = add i32 %mul9, 1
  %28 = load %struct._Array** %array, align 4
  %list10 = getelementptr inbounds %struct._Array* %28, i32 0, i32 1
  %29 = load %union.UnionType*** %list10, align 4
  %arrayidx11 = getelementptr inbounds %union.UnionType** %29, i32 %add
  store %union.UnionType* %arrayidx8, %union.UnionType** %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32* %i, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._Array** %array, align 4
  %32 = ptrtoint %struct._Array* %31 to i64
  %or12 = or i64 %32, -55834574848
  %o13 = bitcast %union.UnionType* %ret to i64*
  store i64 %or12, i64* %o13, align 4
  %33 = bitcast %union.UnionType* %retval to i8*
  %34 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %35 = bitcast double* %coerce.dive to i64*
  %36 = load i64* %35, align 1
  ret i64 %36
}

; Function Attrs: nounwind ssp
define %struct._BlessedObject* @dynamic_blessed_object_cast_code(%union.UnionType* %o) #0 {
entry:
  %o.addr = alloca %union.UnionType*, align 4
  %ret = alloca %struct._BlessedObject*, align 4
  %object = alloca %struct._Object*, align 4
  store %union.UnionType* %o, %union.UnionType** %o.addr, align 4
  store %struct._BlessedObject* null, %struct._BlessedObject** %ret, align 4
  %0 = load %union.UnionType** %o.addr, align 4
  %o1 = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o1, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 7, label %sw.bb
    i64 8, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.UnionType** %o.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %and = and i64 %3, 268435455
  %conv = trunc i64 %and to i32
  %4 = inttoptr i32 %conv to i8*
  %5 = bitcast i8* %4 to %struct._Object*
  store %struct._Object* %5, %struct._Object** %object, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %6 = load %struct._Object** %object, align 4
  %v = getelementptr inbounds %struct._Object* %6, i32 0, i32 1
  %o3 = bitcast %union.UnionType* %v to i64*
  %7 = load i64* %o3, align 4
  %call4 = call i64 @TYPE(i64 %7)
  %cmp = icmp ne i64 %call4, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %8 = load %struct.__sFILE** @__stderrp, align 4
  %9 = load %struct._Object** %object, align 4
  %v6 = getelementptr inbounds %struct._Object* %9, i32 0, i32 1
  %o7 = bitcast %union.UnionType* %v6 to i64*
  %10 = load i64* %o7, align 4
  %call8 = call i64 @TYPE(i64 %10)
  %call9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call8)
  call void @__assert_rtn(i8* getelementptr inbounds ([33 x i8]* @__func__.dynamic_blessed_object_cast_code, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), i32 892, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct._Object** %object, align 4
  %v10 = getelementptr inbounds %struct._Object* %11, i32 0, i32 1
  %o11 = bitcast %union.UnionType* %v10 to i64*
  %12 = load i64* %o11, align 4
  %and12 = and i64 %12, 268435455
  %conv13 = trunc i64 %and12 to i32
  %13 = inttoptr i32 %conv13 to i8*
  %14 = bitcast i8* %13 to %struct._BlessedObject*
  store %struct._BlessedObject* %14, %struct._BlessedObject** %ret, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %15 = load %union.UnionType** %o.addr, align 4
  %o15 = bitcast %union.UnionType* %15 to i64*
  %16 = load i64* %o15, align 4
  %and16 = and i64 %16, 268435455
  %conv17 = trunc i64 %and16 to i32
  %17 = inttoptr i32 %conv17 to i8*
  %18 = bitcast i8* %17 to %struct._BlessedObject*
  store %struct._BlessedObject* %18, %struct._BlessedObject** %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %19 = load %struct.__sFILE** @__stderrp, align 4
  %20 = load %union.UnionType** %o.addr, align 4
  %o18 = bitcast %union.UnionType* %20 to i64*
  %21 = load i64* %o18, align 4
  %call19 = call i64 @TYPE(i64 %21)
  %call20 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i64 %call19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %do.end
  %22 = load %struct._BlessedObject** %ret, align 4
  ret %struct._BlessedObject* %22
}

; Function Attrs: nounwind ssp
define %struct._Object* @new_Object() #0 {
entry:
  %call = call i8* @malloc(i32 36)
  %0 = bitcast i8* %call to %struct._Object*
  ret %struct._Object* %0
}

; Function Attrs: nounwind ssp
define i64 @Object_addObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %j20 = alloca i32, align 4
  %k23 = alloca i32, align 4
  %d32 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default40 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb15
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %i, align 4
  br label %do.body2

do.body2:                                         ; preds = %sw.bb
  %4 = load %union.UnionType** %b.addr, align 4
  %o3 = bitcast %union.UnionType* %4 to i64*
  %5 = load i64* %o3, align 4
  %call4 = call i64 @TYPE(i64 %5)
  switch i64 %call4, label %sw.default [
    i64 1, label %sw.bb5
    i64 0, label %sw.bb10
  ]

sw.bb5:                                           ; preds = %do.body2
  %6 = load %union.UnionType** %b.addr, align 4
  %o6 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o6, align 4
  %conv7 = trunc i64 %7 to i32
  store i32 %conv7, i32* %j, align 4
  %8 = load i32* %i, align 4
  %9 = load i32* %j, align 4
  %add = add nsw i32 %8, %9
  store i32 %add, i32* %k, align 4
  %10 = load i32* %k, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -64424509440
  %o9 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body2
  %11 = load i32* %i, align 4
  %conv11 = sitofp i32 %11 to double
  %12 = load %union.UnionType** %b.addr, align 4
  %d12 = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d12, align 4
  %add13 = fadd double %conv11, %13
  store double %add13, double* %d, align 8
  %14 = load double* %d, align 8
  %d14 = bitcast %union.UnionType* %ret to double*
  store double %14, double* %d14, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb5
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog41

sw.bb15:                                          ; preds = %do.body
  br label %do.body16

do.body16:                                        ; preds = %sw.bb15
  %15 = load %union.UnionType** %b.addr, align 4
  %o17 = bitcast %union.UnionType* %15 to i64*
  %16 = load i64* %o17, align 4
  %call18 = call i64 @TYPE(i64 %16)
  switch i64 %call18, label %sw.default37 [
    i64 1, label %sw.bb19
    i64 0, label %sw.bb31
  ]

sw.bb19:                                          ; preds = %do.body16
  %17 = load %union.UnionType** %b.addr, align 4
  %o21 = bitcast %union.UnionType* %17 to i64*
  %18 = load i64* %o21, align 4
  %conv22 = trunc i64 %18 to i32
  store i32 %conv22, i32* %j20, align 4
  %19 = load %union.UnionType** %a.addr, align 4
  %d24 = bitcast %union.UnionType* %19 to double*
  %20 = load double* %d24, align 4
  %21 = load i32* %j20, align 4
  %conv25 = sitofp i32 %21 to double
  %add26 = fadd double %20, %conv25
  %conv27 = fptosi double %add26 to i32
  store i32 %conv27, i32* %k23, align 4
  %22 = load i32* %k23, align 4
  %conv28 = zext i32 %22 to i64
  %or29 = or i64 %conv28, -64424509440
  %o30 = bitcast %union.UnionType* %ret to i64*
  store i64 %or29, i64* %o30, align 4
  br label %sw.epilog38

sw.bb31:                                          ; preds = %do.body16
  %23 = load %union.UnionType** %a.addr, align 4
  %d33 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d33, align 4
  %25 = load %union.UnionType** %b.addr, align 4
  %d34 = bitcast %union.UnionType* %25 to double*
  %26 = load double* %d34, align 4
  %add35 = fadd double %24, %26
  store double %add35, double* %d32, align 8
  %27 = load double* %d32, align 8
  %d36 = bitcast %union.UnionType* %ret to double*
  store double %27, double* %d36, align 4
  br label %sw.epilog38

sw.default37:                                     ; preds = %do.body16
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.default37, %sw.bb31, %sw.bb19
  br label %do.end39

do.end39:                                         ; preds = %sw.epilog38
  br label %sw.epilog41

sw.default40:                                     ; preds = %do.body
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.default40, %do.end39, %do.end
  br label %do.end42

do.end42:                                         ; preds = %sw.epilog41
  %28 = bitcast %union.UnionType* %retval to i8*
  %29 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %30 = bitcast double* %coerce.dive to i64*
  %31 = load i64* %30, align 1
  ret i64 %31
}

; Function Attrs: nounwind ssp
define i64 @Object_subObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %j20 = alloca i32, align 4
  %k23 = alloca i32, align 4
  %d32 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default40 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb15
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %i, align 4
  br label %do.body2

do.body2:                                         ; preds = %sw.bb
  %4 = load %union.UnionType** %b.addr, align 4
  %o3 = bitcast %union.UnionType* %4 to i64*
  %5 = load i64* %o3, align 4
  %call4 = call i64 @TYPE(i64 %5)
  switch i64 %call4, label %sw.default [
    i64 1, label %sw.bb5
    i64 0, label %sw.bb10
  ]

sw.bb5:                                           ; preds = %do.body2
  %6 = load %union.UnionType** %b.addr, align 4
  %o6 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o6, align 4
  %conv7 = trunc i64 %7 to i32
  store i32 %conv7, i32* %j, align 4
  %8 = load i32* %i, align 4
  %9 = load i32* %j, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %k, align 4
  %10 = load i32* %k, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -64424509440
  %o9 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body2
  %11 = load i32* %i, align 4
  %conv11 = sitofp i32 %11 to double
  %12 = load %union.UnionType** %b.addr, align 4
  %d12 = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d12, align 4
  %sub13 = fsub double %conv11, %13
  store double %sub13, double* %d, align 8
  %14 = load double* %d, align 8
  %d14 = bitcast %union.UnionType* %ret to double*
  store double %14, double* %d14, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb5
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog41

sw.bb15:                                          ; preds = %do.body
  br label %do.body16

do.body16:                                        ; preds = %sw.bb15
  %15 = load %union.UnionType** %b.addr, align 4
  %o17 = bitcast %union.UnionType* %15 to i64*
  %16 = load i64* %o17, align 4
  %call18 = call i64 @TYPE(i64 %16)
  switch i64 %call18, label %sw.default37 [
    i64 1, label %sw.bb19
    i64 0, label %sw.bb31
  ]

sw.bb19:                                          ; preds = %do.body16
  %17 = load %union.UnionType** %b.addr, align 4
  %o21 = bitcast %union.UnionType* %17 to i64*
  %18 = load i64* %o21, align 4
  %conv22 = trunc i64 %18 to i32
  store i32 %conv22, i32* %j20, align 4
  %19 = load %union.UnionType** %a.addr, align 4
  %d24 = bitcast %union.UnionType* %19 to double*
  %20 = load double* %d24, align 4
  %21 = load i32* %j20, align 4
  %conv25 = sitofp i32 %21 to double
  %sub26 = fsub double %20, %conv25
  %conv27 = fptosi double %sub26 to i32
  store i32 %conv27, i32* %k23, align 4
  %22 = load i32* %k23, align 4
  %conv28 = zext i32 %22 to i64
  %or29 = or i64 %conv28, -64424509440
  %o30 = bitcast %union.UnionType* %ret to i64*
  store i64 %or29, i64* %o30, align 4
  br label %sw.epilog38

sw.bb31:                                          ; preds = %do.body16
  %23 = load %union.UnionType** %a.addr, align 4
  %d33 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d33, align 4
  %25 = load %union.UnionType** %b.addr, align 4
  %d34 = bitcast %union.UnionType* %25 to double*
  %26 = load double* %d34, align 4
  %sub35 = fsub double %24, %26
  store double %sub35, double* %d32, align 8
  %27 = load double* %d32, align 8
  %d36 = bitcast %union.UnionType* %ret to double*
  store double %27, double* %d36, align 4
  br label %sw.epilog38

sw.default37:                                     ; preds = %do.body16
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.default37, %sw.bb31, %sw.bb19
  br label %do.end39

do.end39:                                         ; preds = %sw.epilog38
  br label %sw.epilog41

sw.default40:                                     ; preds = %do.body
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.default40, %do.end39, %do.end
  br label %do.end42

do.end42:                                         ; preds = %sw.epilog41
  %28 = bitcast %union.UnionType* %retval to i8*
  %29 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %30 = bitcast double* %coerce.dive to i64*
  %31 = load i64* %30, align 1
  ret i64 %31
}

; Function Attrs: nounwind ssp
define i64 @Object_mulObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %j20 = alloca i32, align 4
  %k23 = alloca i32, align 4
  %d32 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default40 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb15
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %i, align 4
  br label %do.body2

do.body2:                                         ; preds = %sw.bb
  %4 = load %union.UnionType** %b.addr, align 4
  %o3 = bitcast %union.UnionType* %4 to i64*
  %5 = load i64* %o3, align 4
  %call4 = call i64 @TYPE(i64 %5)
  switch i64 %call4, label %sw.default [
    i64 1, label %sw.bb5
    i64 0, label %sw.bb10
  ]

sw.bb5:                                           ; preds = %do.body2
  %6 = load %union.UnionType** %b.addr, align 4
  %o6 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o6, align 4
  %conv7 = trunc i64 %7 to i32
  store i32 %conv7, i32* %j, align 4
  %8 = load i32* %i, align 4
  %9 = load i32* %j, align 4
  %mul = mul nsw i32 %8, %9
  store i32 %mul, i32* %k, align 4
  %10 = load i32* %k, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -64424509440
  %o9 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body2
  %11 = load i32* %i, align 4
  %conv11 = sitofp i32 %11 to double
  %12 = load %union.UnionType** %b.addr, align 4
  %d12 = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d12, align 4
  %mul13 = fmul double %conv11, %13
  store double %mul13, double* %d, align 8
  %14 = load double* %d, align 8
  %d14 = bitcast %union.UnionType* %ret to double*
  store double %14, double* %d14, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb5
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog41

sw.bb15:                                          ; preds = %do.body
  br label %do.body16

do.body16:                                        ; preds = %sw.bb15
  %15 = load %union.UnionType** %b.addr, align 4
  %o17 = bitcast %union.UnionType* %15 to i64*
  %16 = load i64* %o17, align 4
  %call18 = call i64 @TYPE(i64 %16)
  switch i64 %call18, label %sw.default37 [
    i64 1, label %sw.bb19
    i64 0, label %sw.bb31
  ]

sw.bb19:                                          ; preds = %do.body16
  %17 = load %union.UnionType** %b.addr, align 4
  %o21 = bitcast %union.UnionType* %17 to i64*
  %18 = load i64* %o21, align 4
  %conv22 = trunc i64 %18 to i32
  store i32 %conv22, i32* %j20, align 4
  %19 = load %union.UnionType** %a.addr, align 4
  %d24 = bitcast %union.UnionType* %19 to double*
  %20 = load double* %d24, align 4
  %21 = load i32* %j20, align 4
  %conv25 = sitofp i32 %21 to double
  %mul26 = fmul double %20, %conv25
  %conv27 = fptosi double %mul26 to i32
  store i32 %conv27, i32* %k23, align 4
  %22 = load i32* %k23, align 4
  %conv28 = zext i32 %22 to i64
  %or29 = or i64 %conv28, -64424509440
  %o30 = bitcast %union.UnionType* %ret to i64*
  store i64 %or29, i64* %o30, align 4
  br label %sw.epilog38

sw.bb31:                                          ; preds = %do.body16
  %23 = load %union.UnionType** %a.addr, align 4
  %d33 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d33, align 4
  %25 = load %union.UnionType** %b.addr, align 4
  %d34 = bitcast %union.UnionType* %25 to double*
  %26 = load double* %d34, align 4
  %mul35 = fmul double %24, %26
  store double %mul35, double* %d32, align 8
  %27 = load double* %d32, align 8
  %d36 = bitcast %union.UnionType* %ret to double*
  store double %27, double* %d36, align 4
  br label %sw.epilog38

sw.default37:                                     ; preds = %do.body16
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.default37, %sw.bb31, %sw.bb19
  br label %do.end39

do.end39:                                         ; preds = %sw.epilog38
  br label %sw.epilog41

sw.default40:                                     ; preds = %do.body
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.default40, %do.end39, %do.end
  br label %do.end42

do.end42:                                         ; preds = %sw.epilog41
  %28 = bitcast %union.UnionType* %retval to i8*
  %29 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %30 = bitcast double* %coerce.dive to i64*
  %31 = load i64* %30, align 1
  ret i64 %31
}

; Function Attrs: nounwind ssp
define i64 @Object_divObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  %j20 = alloca i32, align 4
  %k23 = alloca i32, align 4
  %d32 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default40 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb15
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %i, align 4
  br label %do.body2

do.body2:                                         ; preds = %sw.bb
  %4 = load %union.UnionType** %b.addr, align 4
  %o3 = bitcast %union.UnionType* %4 to i64*
  %5 = load i64* %o3, align 4
  %call4 = call i64 @TYPE(i64 %5)
  switch i64 %call4, label %sw.default [
    i64 1, label %sw.bb5
    i64 0, label %sw.bb10
  ]

sw.bb5:                                           ; preds = %do.body2
  %6 = load %union.UnionType** %b.addr, align 4
  %o6 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o6, align 4
  %conv7 = trunc i64 %7 to i32
  store i32 %conv7, i32* %j, align 4
  %8 = load i32* %i, align 4
  %9 = load i32* %j, align 4
  %div = sdiv i32 %8, %9
  store i32 %div, i32* %k, align 4
  %10 = load i32* %k, align 4
  %conv8 = zext i32 %10 to i64
  %or = or i64 %conv8, -64424509440
  %o9 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body2
  %11 = load i32* %i, align 4
  %conv11 = sitofp i32 %11 to double
  %12 = load %union.UnionType** %b.addr, align 4
  %d12 = bitcast %union.UnionType* %12 to double*
  %13 = load double* %d12, align 4
  %div13 = fdiv double %conv11, %13
  store double %div13, double* %d, align 8
  %14 = load double* %d, align 8
  %d14 = bitcast %union.UnionType* %ret to double*
  store double %14, double* %d14, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb5
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog41

sw.bb15:                                          ; preds = %do.body
  br label %do.body16

do.body16:                                        ; preds = %sw.bb15
  %15 = load %union.UnionType** %b.addr, align 4
  %o17 = bitcast %union.UnionType* %15 to i64*
  %16 = load i64* %o17, align 4
  %call18 = call i64 @TYPE(i64 %16)
  switch i64 %call18, label %sw.default37 [
    i64 1, label %sw.bb19
    i64 0, label %sw.bb31
  ]

sw.bb19:                                          ; preds = %do.body16
  %17 = load %union.UnionType** %b.addr, align 4
  %o21 = bitcast %union.UnionType* %17 to i64*
  %18 = load i64* %o21, align 4
  %conv22 = trunc i64 %18 to i32
  store i32 %conv22, i32* %j20, align 4
  %19 = load %union.UnionType** %a.addr, align 4
  %d24 = bitcast %union.UnionType* %19 to double*
  %20 = load double* %d24, align 4
  %21 = load i32* %j20, align 4
  %conv25 = sitofp i32 %21 to double
  %div26 = fdiv double %20, %conv25
  %conv27 = fptosi double %div26 to i32
  store i32 %conv27, i32* %k23, align 4
  %22 = load i32* %k23, align 4
  %conv28 = zext i32 %22 to i64
  %or29 = or i64 %conv28, -64424509440
  %o30 = bitcast %union.UnionType* %ret to i64*
  store i64 %or29, i64* %o30, align 4
  br label %sw.epilog38

sw.bb31:                                          ; preds = %do.body16
  %23 = load %union.UnionType** %a.addr, align 4
  %d33 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d33, align 4
  %25 = load %union.UnionType** %b.addr, align 4
  %d34 = bitcast %union.UnionType* %25 to double*
  %26 = load double* %d34, align 4
  %div35 = fdiv double %24, %26
  store double %div35, double* %d32, align 8
  %27 = load double* %d32, align 8
  %d36 = bitcast %union.UnionType* %ret to double*
  store double %27, double* %d36, align 4
  br label %sw.epilog38

sw.default37:                                     ; preds = %do.body16
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.default37, %sw.bb31, %sw.bb19
  br label %do.end39

do.end39:                                         ; preds = %sw.epilog38
  br label %sw.epilog41

sw.default40:                                     ; preds = %do.body
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.default40, %do.end39, %do.end
  br label %do.end42

do.end42:                                         ; preds = %sw.epilog41
  %28 = bitcast %union.UnionType* %retval to i8*
  %29 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %28, i8* %29, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %30 = bitcast double* %coerce.dive to i64*
  %31 = load i64* %30, align 1
  ret i64 %31
}

; Function Attrs: nounwind ssp
define i64 @Object_eqObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %i28 = alloca i32, align 4
  %d39 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default52 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb23
  ]

sw.bb:                                            ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %sw.bb
  %2 = load %union.UnionType** %b.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %call3 = call i64 @TYPE(i64 %3)
  switch i64 %call3, label %sw.default [
    i64 1, label %sw.bb4
    i64 0, label %sw.bb11
  ]

sw.bb4:                                           ; preds = %do.body1
  %4 = load %union.UnionType** %a.addr, align 4
  %o5 = bitcast %union.UnionType* %4 to i64*
  %5 = load i64* %o5, align 4
  %conv = trunc i64 %5 to i32
  %6 = load %union.UnionType** %b.addr, align 4
  %o6 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o6, align 4
  %conv7 = trunc i64 %7 to i32
  %cmp = icmp eq i32 %conv, %conv7
  %conv8 = zext i1 %cmp to i32
  store i32 %conv8, i32* %i, align 4
  %8 = load i32* %i, align 4
  %conv9 = zext i32 %8 to i64
  %or = or i64 %conv9, -64424509440
  %o10 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.body1
  %9 = load %union.UnionType** %a.addr, align 4
  %o12 = bitcast %union.UnionType* %9 to i64*
  %10 = load i64* %o12, align 4
  %conv13 = trunc i64 %10 to i32
  %conv14 = sitofp i32 %conv13 to double
  %11 = load %union.UnionType** %b.addr, align 4
  %d15 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d15, align 4
  %cmp16 = fcmp oeq double %conv14, %12
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = sitofp i32 %conv17 to double
  store double %conv18, double* %d, align 8
  %13 = load double* %d, align 8
  %conv19 = fptosi double %13 to i32
  %conv20 = zext i32 %conv19 to i64
  %or21 = or i64 %conv20, -64424509440
  %o22 = bitcast %union.UnionType* %ret to i64*
  store i64 %or21, i64* %o22, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb4
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog53

sw.bb23:                                          ; preds = %do.body
  br label %do.body24

do.body24:                                        ; preds = %sw.bb23
  %14 = load %union.UnionType** %b.addr, align 4
  %o25 = bitcast %union.UnionType* %14 to i64*
  %15 = load i64* %o25, align 4
  %call26 = call i64 @TYPE(i64 %15)
  switch i64 %call26, label %sw.default49 [
    i64 1, label %sw.bb27
    i64 0, label %sw.bb38
  ]

sw.bb27:                                          ; preds = %do.body24
  %16 = load %union.UnionType** %a.addr, align 4
  %d29 = bitcast %union.UnionType* %16 to double*
  %17 = load double* %d29, align 4
  %18 = load %union.UnionType** %b.addr, align 4
  %o30 = bitcast %union.UnionType* %18 to i64*
  %19 = load i64* %o30, align 4
  %conv31 = trunc i64 %19 to i32
  %conv32 = sitofp i32 %conv31 to double
  %cmp33 = fcmp oeq double %17, %conv32
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %i28, align 4
  %20 = load i32* %i28, align 4
  %conv35 = zext i32 %20 to i64
  %or36 = or i64 %conv35, -64424509440
  %o37 = bitcast %union.UnionType* %ret to i64*
  store i64 %or36, i64* %o37, align 4
  br label %sw.epilog50

sw.bb38:                                          ; preds = %do.body24
  %21 = load %union.UnionType** %a.addr, align 4
  %d40 = bitcast %union.UnionType* %21 to double*
  %22 = load double* %d40, align 4
  %23 = load %union.UnionType** %b.addr, align 4
  %d41 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d41, align 4
  %cmp42 = fcmp oeq double %22, %24
  %conv43 = zext i1 %cmp42 to i32
  %conv44 = sitofp i32 %conv43 to double
  store double %conv44, double* %d39, align 8
  %25 = load double* %d39, align 8
  %conv45 = fptosi double %25 to i32
  %conv46 = zext i32 %conv45 to i64
  %or47 = or i64 %conv46, -64424509440
  %o48 = bitcast %union.UnionType* %ret to i64*
  store i64 %or47, i64* %o48, align 4
  br label %sw.epilog50

sw.default49:                                     ; preds = %do.body24
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.default49, %sw.bb38, %sw.bb27
  br label %do.end51

do.end51:                                         ; preds = %sw.epilog50
  br label %sw.epilog53

sw.default52:                                     ; preds = %do.body
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.default52, %do.end51, %do.end
  br label %do.end54

do.end54:                                         ; preds = %sw.epilog53
  %26 = bitcast %union.UnionType* %retval to i8*
  %27 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %28 = bitcast double* %coerce.dive to i64*
  %29 = load i64* %28, align 1
  ret i64 %29
}

; Function Attrs: nounwind ssp
define i64 @Object_neObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %i28 = alloca i32, align 4
  %d39 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default52 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb23
  ]

sw.bb:                                            ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %sw.bb
  %2 = load %union.UnionType** %b.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %call3 = call i64 @TYPE(i64 %3)
  switch i64 %call3, label %sw.default [
    i64 1, label %sw.bb4
    i64 0, label %sw.bb11
  ]

sw.bb4:                                           ; preds = %do.body1
  %4 = load %union.UnionType** %a.addr, align 4
  %o5 = bitcast %union.UnionType* %4 to i64*
  %5 = load i64* %o5, align 4
  %conv = trunc i64 %5 to i32
  %6 = load %union.UnionType** %b.addr, align 4
  %o6 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o6, align 4
  %conv7 = trunc i64 %7 to i32
  %cmp = icmp ne i32 %conv, %conv7
  %conv8 = zext i1 %cmp to i32
  store i32 %conv8, i32* %i, align 4
  %8 = load i32* %i, align 4
  %conv9 = zext i32 %8 to i64
  %or = or i64 %conv9, -64424509440
  %o10 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.body1
  %9 = load %union.UnionType** %a.addr, align 4
  %o12 = bitcast %union.UnionType* %9 to i64*
  %10 = load i64* %o12, align 4
  %conv13 = trunc i64 %10 to i32
  %conv14 = sitofp i32 %conv13 to double
  %11 = load %union.UnionType** %b.addr, align 4
  %d15 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d15, align 4
  %cmp16 = fcmp une double %conv14, %12
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = sitofp i32 %conv17 to double
  store double %conv18, double* %d, align 8
  %13 = load double* %d, align 8
  %conv19 = fptosi double %13 to i32
  %conv20 = zext i32 %conv19 to i64
  %or21 = or i64 %conv20, -64424509440
  %o22 = bitcast %union.UnionType* %ret to i64*
  store i64 %or21, i64* %o22, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb4
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog53

sw.bb23:                                          ; preds = %do.body
  br label %do.body24

do.body24:                                        ; preds = %sw.bb23
  %14 = load %union.UnionType** %b.addr, align 4
  %o25 = bitcast %union.UnionType* %14 to i64*
  %15 = load i64* %o25, align 4
  %call26 = call i64 @TYPE(i64 %15)
  switch i64 %call26, label %sw.default49 [
    i64 1, label %sw.bb27
    i64 0, label %sw.bb38
  ]

sw.bb27:                                          ; preds = %do.body24
  %16 = load %union.UnionType** %a.addr, align 4
  %d29 = bitcast %union.UnionType* %16 to double*
  %17 = load double* %d29, align 4
  %18 = load %union.UnionType** %b.addr, align 4
  %o30 = bitcast %union.UnionType* %18 to i64*
  %19 = load i64* %o30, align 4
  %conv31 = trunc i64 %19 to i32
  %conv32 = sitofp i32 %conv31 to double
  %cmp33 = fcmp une double %17, %conv32
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %i28, align 4
  %20 = load i32* %i28, align 4
  %conv35 = zext i32 %20 to i64
  %or36 = or i64 %conv35, -64424509440
  %o37 = bitcast %union.UnionType* %ret to i64*
  store i64 %or36, i64* %o37, align 4
  br label %sw.epilog50

sw.bb38:                                          ; preds = %do.body24
  %21 = load %union.UnionType** %a.addr, align 4
  %d40 = bitcast %union.UnionType* %21 to double*
  %22 = load double* %d40, align 4
  %23 = load %union.UnionType** %b.addr, align 4
  %d41 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d41, align 4
  %cmp42 = fcmp une double %22, %24
  %conv43 = zext i1 %cmp42 to i32
  %conv44 = sitofp i32 %conv43 to double
  store double %conv44, double* %d39, align 8
  %25 = load double* %d39, align 8
  %conv45 = fptosi double %25 to i32
  %conv46 = zext i32 %conv45 to i64
  %or47 = or i64 %conv46, -64424509440
  %o48 = bitcast %union.UnionType* %ret to i64*
  store i64 %or47, i64* %o48, align 4
  br label %sw.epilog50

sw.default49:                                     ; preds = %do.body24
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.default49, %sw.bb38, %sw.bb27
  br label %do.end51

do.end51:                                         ; preds = %sw.epilog50
  br label %sw.epilog53

sw.default52:                                     ; preds = %do.body
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.default52, %do.end51, %do.end
  br label %do.end54

do.end54:                                         ; preds = %sw.epilog53
  %26 = bitcast %union.UnionType* %retval to i8*
  %27 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %28 = bitcast double* %coerce.dive to i64*
  %29 = load i64* %28, align 1
  ret i64 %29
}

; Function Attrs: nounwind ssp
define i64 @Object_gtObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %i28 = alloca i32, align 4
  %d39 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default52 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb23
  ]

sw.bb:                                            ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %sw.bb
  %2 = load %union.UnionType** %b.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %call3 = call i64 @TYPE(i64 %3)
  switch i64 %call3, label %sw.default [
    i64 1, label %sw.bb4
    i64 0, label %sw.bb11
  ]

sw.bb4:                                           ; preds = %do.body1
  %4 = load %union.UnionType** %a.addr, align 4
  %o5 = bitcast %union.UnionType* %4 to i64*
  %5 = load i64* %o5, align 4
  %conv = trunc i64 %5 to i32
  %6 = load %union.UnionType** %b.addr, align 4
  %o6 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o6, align 4
  %conv7 = trunc i64 %7 to i32
  %cmp = icmp sgt i32 %conv, %conv7
  %conv8 = zext i1 %cmp to i32
  store i32 %conv8, i32* %i, align 4
  %8 = load i32* %i, align 4
  %conv9 = zext i32 %8 to i64
  %or = or i64 %conv9, -64424509440
  %o10 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.body1
  %9 = load %union.UnionType** %a.addr, align 4
  %o12 = bitcast %union.UnionType* %9 to i64*
  %10 = load i64* %o12, align 4
  %conv13 = trunc i64 %10 to i32
  %conv14 = sitofp i32 %conv13 to double
  %11 = load %union.UnionType** %b.addr, align 4
  %d15 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d15, align 4
  %cmp16 = fcmp ogt double %conv14, %12
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = sitofp i32 %conv17 to double
  store double %conv18, double* %d, align 8
  %13 = load double* %d, align 8
  %conv19 = fptosi double %13 to i32
  %conv20 = zext i32 %conv19 to i64
  %or21 = or i64 %conv20, -64424509440
  %o22 = bitcast %union.UnionType* %ret to i64*
  store i64 %or21, i64* %o22, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb4
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog53

sw.bb23:                                          ; preds = %do.body
  br label %do.body24

do.body24:                                        ; preds = %sw.bb23
  %14 = load %union.UnionType** %b.addr, align 4
  %o25 = bitcast %union.UnionType* %14 to i64*
  %15 = load i64* %o25, align 4
  %call26 = call i64 @TYPE(i64 %15)
  switch i64 %call26, label %sw.default49 [
    i64 1, label %sw.bb27
    i64 0, label %sw.bb38
  ]

sw.bb27:                                          ; preds = %do.body24
  %16 = load %union.UnionType** %a.addr, align 4
  %d29 = bitcast %union.UnionType* %16 to double*
  %17 = load double* %d29, align 4
  %18 = load %union.UnionType** %b.addr, align 4
  %o30 = bitcast %union.UnionType* %18 to i64*
  %19 = load i64* %o30, align 4
  %conv31 = trunc i64 %19 to i32
  %conv32 = sitofp i32 %conv31 to double
  %cmp33 = fcmp ogt double %17, %conv32
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %i28, align 4
  %20 = load i32* %i28, align 4
  %conv35 = zext i32 %20 to i64
  %or36 = or i64 %conv35, -64424509440
  %o37 = bitcast %union.UnionType* %ret to i64*
  store i64 %or36, i64* %o37, align 4
  br label %sw.epilog50

sw.bb38:                                          ; preds = %do.body24
  %21 = load %union.UnionType** %a.addr, align 4
  %d40 = bitcast %union.UnionType* %21 to double*
  %22 = load double* %d40, align 4
  %23 = load %union.UnionType** %b.addr, align 4
  %d41 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d41, align 4
  %cmp42 = fcmp ogt double %22, %24
  %conv43 = zext i1 %cmp42 to i32
  %conv44 = sitofp i32 %conv43 to double
  store double %conv44, double* %d39, align 8
  %25 = load double* %d39, align 8
  %conv45 = fptosi double %25 to i32
  %conv46 = zext i32 %conv45 to i64
  %or47 = or i64 %conv46, -64424509440
  %o48 = bitcast %union.UnionType* %ret to i64*
  store i64 %or47, i64* %o48, align 4
  br label %sw.epilog50

sw.default49:                                     ; preds = %do.body24
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.default49, %sw.bb38, %sw.bb27
  br label %do.end51

do.end51:                                         ; preds = %sw.epilog50
  br label %sw.epilog53

sw.default52:                                     ; preds = %do.body
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.default52, %do.end51, %do.end
  br label %do.end54

do.end54:                                         ; preds = %sw.epilog53
  %26 = bitcast %union.UnionType* %retval to i8*
  %27 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %28 = bitcast double* %coerce.dive to i64*
  %29 = load i64* %28, align 1
  ret i64 %29
}

; Function Attrs: nounwind ssp
define i64 @Object_ltObject(%union.UnionType* %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %i28 = alloca i32, align 4
  %d39 = alloca double, align 8
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default52 [
    i64 1, label %sw.bb
    i64 0, label %sw.bb23
  ]

sw.bb:                                            ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %sw.bb
  %2 = load %union.UnionType** %b.addr, align 4
  %o2 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o2, align 4
  %call3 = call i64 @TYPE(i64 %3)
  switch i64 %call3, label %sw.default [
    i64 1, label %sw.bb4
    i64 0, label %sw.bb11
  ]

sw.bb4:                                           ; preds = %do.body1
  %4 = load %union.UnionType** %a.addr, align 4
  %o5 = bitcast %union.UnionType* %4 to i64*
  %5 = load i64* %o5, align 4
  %conv = trunc i64 %5 to i32
  %6 = load %union.UnionType** %b.addr, align 4
  %o6 = bitcast %union.UnionType* %6 to i64*
  %7 = load i64* %o6, align 4
  %conv7 = trunc i64 %7 to i32
  %cmp = icmp slt i32 %conv, %conv7
  %conv8 = zext i1 %cmp to i32
  store i32 %conv8, i32* %i, align 4
  %8 = load i32* %i, align 4
  %conv9 = zext i32 %8 to i64
  %or = or i64 %conv9, -64424509440
  %o10 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.body1
  %9 = load %union.UnionType** %a.addr, align 4
  %o12 = bitcast %union.UnionType* %9 to i64*
  %10 = load i64* %o12, align 4
  %conv13 = trunc i64 %10 to i32
  %conv14 = sitofp i32 %conv13 to double
  %11 = load %union.UnionType** %b.addr, align 4
  %d15 = bitcast %union.UnionType* %11 to double*
  %12 = load double* %d15, align 4
  %cmp16 = fcmp olt double %conv14, %12
  %conv17 = zext i1 %cmp16 to i32
  %conv18 = sitofp i32 %conv17 to double
  store double %conv18, double* %d, align 8
  %13 = load double* %d, align 8
  %conv19 = fptosi double %13 to i32
  %conv20 = zext i32 %conv19 to i64
  %or21 = or i64 %conv20, -64424509440
  %o22 = bitcast %union.UnionType* %ret to i64*
  store i64 %or21, i64* %o22, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb4
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  br label %sw.epilog53

sw.bb23:                                          ; preds = %do.body
  br label %do.body24

do.body24:                                        ; preds = %sw.bb23
  %14 = load %union.UnionType** %b.addr, align 4
  %o25 = bitcast %union.UnionType* %14 to i64*
  %15 = load i64* %o25, align 4
  %call26 = call i64 @TYPE(i64 %15)
  switch i64 %call26, label %sw.default49 [
    i64 1, label %sw.bb27
    i64 0, label %sw.bb38
  ]

sw.bb27:                                          ; preds = %do.body24
  %16 = load %union.UnionType** %a.addr, align 4
  %d29 = bitcast %union.UnionType* %16 to double*
  %17 = load double* %d29, align 4
  %18 = load %union.UnionType** %b.addr, align 4
  %o30 = bitcast %union.UnionType* %18 to i64*
  %19 = load i64* %o30, align 4
  %conv31 = trunc i64 %19 to i32
  %conv32 = sitofp i32 %conv31 to double
  %cmp33 = fcmp olt double %17, %conv32
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %i28, align 4
  %20 = load i32* %i28, align 4
  %conv35 = zext i32 %20 to i64
  %or36 = or i64 %conv35, -64424509440
  %o37 = bitcast %union.UnionType* %ret to i64*
  store i64 %or36, i64* %o37, align 4
  br label %sw.epilog50

sw.bb38:                                          ; preds = %do.body24
  %21 = load %union.UnionType** %a.addr, align 4
  %d40 = bitcast %union.UnionType* %21 to double*
  %22 = load double* %d40, align 4
  %23 = load %union.UnionType** %b.addr, align 4
  %d41 = bitcast %union.UnionType* %23 to double*
  %24 = load double* %d41, align 4
  %cmp42 = fcmp olt double %22, %24
  %conv43 = zext i1 %cmp42 to i32
  %conv44 = sitofp i32 %conv43 to double
  store double %conv44, double* %d39, align 8
  %25 = load double* %d39, align 8
  %conv45 = fptosi double %25 to i32
  %conv46 = zext i32 %conv45 to i64
  %or47 = or i64 %conv46, -64424509440
  %o48 = bitcast %union.UnionType* %ret to i64*
  store i64 %or47, i64* %o48, align 4
  br label %sw.epilog50

sw.default49:                                     ; preds = %do.body24
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.default49, %sw.bb38, %sw.bb27
  br label %do.end51

do.end51:                                         ; preds = %sw.epilog50
  br label %sw.epilog53

sw.default52:                                     ; preds = %do.body
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.default52, %do.end51, %do.end
  br label %do.end54

do.end54:                                         ; preds = %sw.epilog53
  %26 = bitcast %union.UnionType* %retval to i8*
  %27 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %28 = bitcast double* %coerce.dive to i64*
  %29 = load i64* %28, align 1
  ret i64 %29
}

; Function Attrs: nounwind ssp
define i64 @Object_addInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %4 = load i32* %b.addr, align 4
  %add = add nsw i32 %conv, %4
  store i32 %add, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %or = or i64 %conv2, -64424509440
  %o3 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load i32* %b.addr, align 4
  %conv5 = sitofp i32 %8 to double
  %add6 = fadd double %7, %conv5
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %add6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @Object_subInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %4 = load i32* %b.addr, align 4
  %sub = sub nsw i32 %conv, %4
  store i32 %sub, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %or = or i64 %conv2, -64424509440
  %o3 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load i32* %b.addr, align 4
  %conv5 = sitofp i32 %8 to double
  %sub6 = fsub double %7, %conv5
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %sub6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @Object_mulInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %4 = load i32* %b.addr, align 4
  %mul = mul nsw i32 %conv, %4
  store i32 %mul, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %or = or i64 %conv2, -64424509440
  %o3 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load i32* %b.addr, align 4
  %conv5 = sitofp i32 %8 to double
  %mul6 = fmul double %7, %conv5
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %mul6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @Object_divInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %4 = load i32* %b.addr, align 4
  %div = sdiv i32 %conv, %4
  store i32 %div, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %or = or i64 %conv2, -64424509440
  %o3 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load i32* %b.addr, align 4
  %conv5 = sitofp i32 %8 to double
  %div6 = fdiv double %7, %conv5
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %div6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @Object_eqInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %4 = load i32* %b.addr, align 4
  %cmp = icmp eq i32 %conv, %4
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv3 = zext i32 %5 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load i32* %b.addr, align 4
  %conv7 = sitofp i32 %8 to double
  %cmp8 = fcmp oeq double %7, %conv7
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i6, align 4
  %9 = load i32* %i6, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_neInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %4 = load i32* %b.addr, align 4
  %cmp = icmp ne i32 %conv, %4
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv3 = zext i32 %5 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load i32* %b.addr, align 4
  %conv7 = sitofp i32 %8 to double
  %cmp8 = fcmp une double %7, %conv7
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i6, align 4
  %9 = load i32* %i6, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_gtInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %4 = load i32* %b.addr, align 4
  %cmp = icmp sgt i32 %conv, %4
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv3 = zext i32 %5 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load i32* %b.addr, align 4
  %conv7 = sitofp i32 %8 to double
  %cmp8 = fcmp ogt double %7, %conv7
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i6, align 4
  %9 = load i32* %i6, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_ltInt(%union.UnionType* %a, i32 %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca i32, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %4 = load i32* %b.addr, align 4
  %cmp = icmp slt i32 %conv, %4
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv3 = zext i32 %5 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load i32* %b.addr, align 4
  %conv7 = sitofp i32 %8 to double
  %cmp8 = fcmp olt double %7, %conv7
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i6, align 4
  %9 = load i32* %i6, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_addInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i32* %a.addr, align 4
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %add = add nsw i32 %2, %conv
  store i32 %add, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %or = or i64 %conv2, -64424509440
  %o3 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %conv5 = sitofp i32 %6 to double
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %add6 = fadd double %conv5, %8
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %add6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @Object_subInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i32* %a.addr, align 4
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %sub = sub nsw i32 %2, %conv
  store i32 %sub, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %or = or i64 %conv2, -64424509440
  %o3 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %conv5 = sitofp i32 %6 to double
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %sub6 = fsub double %conv5, %8
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %sub6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @Object_mulInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i32* %a.addr, align 4
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %mul = mul nsw i32 %2, %conv
  store i32 %mul, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %or = or i64 %conv2, -64424509440
  %o3 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %conv5 = sitofp i32 %6 to double
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %mul6 = fmul double %conv5, %8
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %mul6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @Object_divInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i32* %a.addr, align 4
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %div = sdiv i32 %2, %conv
  store i32 %div, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv2 = zext i32 %5 to i64
  %or = or i64 %conv2, -64424509440
  %o3 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %conv5 = sitofp i32 %6 to double
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %div6 = fdiv double %conv5, %8
  %d7 = bitcast %union.UnionType* %ret to double*
  store double %div6, double* %d7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %9 = bitcast %union.UnionType* %retval to i8*
  %10 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %9, i8* %10, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %11 = bitcast double* %coerce.dive to i64*
  %12 = load i64* %11, align 1
  ret i64 %12
}

; Function Attrs: nounwind ssp
define i64 @Object_eqInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i32* %a.addr, align 4
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %cmp = icmp eq i32 %2, %conv
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv3 = zext i32 %5 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %conv7 = sitofp i32 %6 to double
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %cmp8 = fcmp oeq double %conv7, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i6, align 4
  %9 = load i32* %i6, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_neInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i32* %a.addr, align 4
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %cmp = icmp ne i32 %2, %conv
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv3 = zext i32 %5 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %conv7 = sitofp i32 %6 to double
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %cmp8 = fcmp une double %conv7, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i6, align 4
  %9 = load i32* %i6, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_gtInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i32* %a.addr, align 4
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %cmp = icmp sgt i32 %2, %conv
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv3 = zext i32 %5 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %conv7 = sitofp i32 %6 to double
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %cmp8 = fcmp ogt double %conv7, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i6, align 4
  %9 = load i32* %i6, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_ltInt2(i32 %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load i32* %a.addr, align 4
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %cmp = icmp slt i32 %2, %conv
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv3 = zext i32 %5 to i64
  %or = or i64 %conv3, -64424509440
  %o4 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  %6 = load i32* %a.addr, align 4
  %conv7 = sitofp i32 %6 to double
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %cmp8 = fcmp olt double %conv7, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i6, align 4
  %9 = load i32* %i6, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_addDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double* %b.addr, align 8
  %add = fadd double %conv2, %4
  %d = bitcast %union.UnionType* %ret to double*
  store double %add, double* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %5 = load %union.UnionType** %a.addr, align 4
  %d4 = bitcast %union.UnionType* %5 to double*
  %6 = load double* %d4, align 4
  %7 = load double* %b.addr, align 8
  %add5 = fadd double %6, %7
  %d6 = bitcast %union.UnionType* %ret to double*
  store double %add5, double* %d6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp
define i64 @Object_subDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double* %b.addr, align 8
  %sub = fsub double %conv2, %4
  %d = bitcast %union.UnionType* %ret to double*
  store double %sub, double* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %5 = load %union.UnionType** %a.addr, align 4
  %d4 = bitcast %union.UnionType* %5 to double*
  %6 = load double* %d4, align 4
  %7 = load double* %b.addr, align 8
  %sub5 = fsub double %6, %7
  %d6 = bitcast %union.UnionType* %ret to double*
  store double %sub5, double* %d6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp
define i64 @Object_mulDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double* %b.addr, align 8
  %mul = fmul double %conv2, %4
  %d = bitcast %union.UnionType* %ret to double*
  store double %mul, double* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %5 = load %union.UnionType** %a.addr, align 4
  %d4 = bitcast %union.UnionType* %5 to double*
  %6 = load double* %d4, align 4
  %7 = load double* %b.addr, align 8
  %mul5 = fmul double %6, %7
  %d6 = bitcast %union.UnionType* %ret to double*
  store double %mul5, double* %d6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp
define i64 @Object_divDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double* %b.addr, align 8
  %div = fdiv double %conv2, %4
  %d = bitcast %union.UnionType* %ret to double*
  store double %div, double* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %5 = load %union.UnionType** %a.addr, align 4
  %d4 = bitcast %union.UnionType* %5 to double*
  %6 = load double* %d4, align 4
  %7 = load double* %b.addr, align 8
  %div5 = fdiv double %6, %7
  %d6 = bitcast %union.UnionType* %ret to double*
  store double %div5, double* %d6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp
define i64 @Object_eqDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double* %b.addr, align 8
  %cmp = fcmp oeq double %conv2, %4
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv4 = zext i32 %5 to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load double* %b.addr, align 8
  %cmp8 = fcmp oeq double %7, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i7, align 4
  %9 = load i32* %i7, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_neDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double* %b.addr, align 8
  %cmp = fcmp une double %conv2, %4
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv4 = zext i32 %5 to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load double* %b.addr, align 8
  %cmp8 = fcmp une double %7, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i7, align 4
  %9 = load i32* %i7, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_gtDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double* %b.addr, align 8
  %cmp = fcmp ogt double %conv2, %4
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv4 = zext i32 %5 to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load double* %b.addr, align 8
  %cmp8 = fcmp ogt double %7, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i7, align 4
  %9 = load i32* %i7, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_ltDouble(%union.UnionType* %a, double %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca %union.UnionType*, align 4
  %b.addr = alloca double, align 8
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store double %b, double* %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load double* %b.addr, align 8
  %cmp = fcmp olt double %conv2, %4
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv4 = zext i32 %5 to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %6 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d, align 4
  %8 = load double* %b.addr, align 8
  %cmp8 = fcmp olt double %7, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i7, align 4
  %9 = load i32* %i7, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_addDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load double* %a.addr, align 8
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %conv2 = sitofp i32 %conv to double
  %add = fadd double %2, %conv2
  %d = bitcast %union.UnionType* %ret to double*
  store double %add, double* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %5 = load double* %a.addr, align 8
  %6 = load %union.UnionType** %b.addr, align 4
  %d4 = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d4, align 4
  %add5 = fadd double %5, %7
  %d6 = bitcast %union.UnionType* %ret to double*
  store double %add5, double* %d6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp
define i64 @Object_subDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load double* %a.addr, align 8
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %conv2 = sitofp i32 %conv to double
  %add = fadd double %2, %conv2
  %d = bitcast %union.UnionType* %ret to double*
  store double %add, double* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %5 = load double* %a.addr, align 8
  %6 = load %union.UnionType** %b.addr, align 4
  %d4 = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d4, align 4
  %add5 = fadd double %5, %7
  %d6 = bitcast %union.UnionType* %ret to double*
  store double %add5, double* %d6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp
define i64 @Object_mulDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load double* %a.addr, align 8
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %conv2 = sitofp i32 %conv to double
  %mul = fmul double %2, %conv2
  %d = bitcast %union.UnionType* %ret to double*
  store double %mul, double* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %5 = load double* %a.addr, align 8
  %6 = load %union.UnionType** %b.addr, align 4
  %d4 = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d4, align 4
  %mul5 = fmul double %5, %7
  %d6 = bitcast %union.UnionType* %ret to double*
  store double %mul5, double* %d6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp
define i64 @Object_divDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load double* %a.addr, align 8
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %conv2 = sitofp i32 %conv to double
  %div = fdiv double %2, %conv2
  %d = bitcast %union.UnionType* %ret to double*
  store double %div, double* %d, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %5 = load double* %a.addr, align 8
  %6 = load %union.UnionType** %b.addr, align 4
  %d4 = bitcast %union.UnionType* %6 to double*
  %7 = load double* %d4, align 4
  %div5 = fdiv double %5, %7
  %d6 = bitcast %union.UnionType* %ret to double*
  store double %div5, double* %d6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %8 = bitcast %union.UnionType* %retval to i8*
  %9 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %8, i8* %9, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %10 = bitcast double* %coerce.dive to i64*
  %11 = load i64* %10, align 1
  ret i64 %11
}

; Function Attrs: nounwind ssp
define i64 @Object_eqDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load double* %a.addr, align 8
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %conv2 = sitofp i32 %conv to double
  %cmp = fcmp oeq double %2, %conv2
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv4 = zext i32 %5 to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %cmp8 = fcmp oeq double %6, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i7, align 4
  %9 = load i32* %i7, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_neDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load double* %a.addr, align 8
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %conv2 = sitofp i32 %conv to double
  %cmp = fcmp une double %2, %conv2
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv4 = zext i32 %5 to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %cmp8 = fcmp une double %6, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i7, align 4
  %9 = load i32* %i7, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_gtDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load double* %a.addr, align 8
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %conv2 = sitofp i32 %conv to double
  %cmp = fcmp ogt double %2, %conv2
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv4 = zext i32 %5 to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %cmp8 = fcmp ogt double %6, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i7, align 4
  %9 = load i32* %i7, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i64 @Object_ltDouble2(double %a, %union.UnionType* %b) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca %union.UnionType*, align 4
  %ret = alloca %union.UnionType, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  store double %a, double* %a.addr, align 8
  store %union.UnionType* %b, %union.UnionType** %b.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.UnionType** %b.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  %2 = load double* %a.addr, align 8
  %3 = load %union.UnionType** %b.addr, align 4
  %o1 = bitcast %union.UnionType* %3 to i64*
  %4 = load i64* %o1, align 4
  %conv = trunc i64 %4 to i32
  %conv2 = sitofp i32 %conv to double
  %cmp = fcmp olt double %2, %conv2
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %i, align 4
  %5 = load i32* %i, align 4
  %conv4 = zext i32 %5 to i64
  %or = or i64 %conv4, -64424509440
  %o5 = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  %6 = load double* %a.addr, align 8
  %7 = load %union.UnionType** %b.addr, align 4
  %d = bitcast %union.UnionType* %7 to double*
  %8 = load double* %d, align 4
  %cmp8 = fcmp olt double %6, %8
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %i7, align 4
  %9 = load i32* %i7, align 4
  %conv10 = zext i32 %9 to i64
  %or11 = or i64 %conv10, -64424509440
  %o12 = bitcast %union.UnionType* %ret to i64*
  store i64 %or11, i64* %o12, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  br label %do.end

do.end:                                           ; preds = %sw.epilog
  %10 = bitcast %union.UnionType* %retval to i8*
  %11 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %12 = bitcast double* %coerce.dive to i64*
  %13 = load i64* %12, align 1
  ret i64 %13
}

; Function Attrs: nounwind ssp
define i32 @Object_isTrue(%union.UnionType* byval align 4 %a) #0 {
entry:
  %ret = alloca i32, align 4
  store i32 0, i32* %ret, align 4
  %o = bitcast %union.UnionType* %a to i64*
  %0 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %0)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %o1 = bitcast %union.UnionType* %a to i64*
  %1 = load i64* %o1, align 4
  %conv = trunc i64 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %ret, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %d = bitcast %union.UnionType* %a to double*
  %2 = load double* %d, align 4
  %cmp4 = fcmp une double %2, 0.000000e+00
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %3 = load i32* %ret, align 4
  ret i32 %3
}

; Function Attrs: nounwind ssp
define i32 @Value_isTrue(%union.UnionType* %a) #0 {
entry:
  %a.addr = alloca %union.UnionType*, align 4
  %ret = alloca i32, align 4
  store %union.UnionType* %a, %union.UnionType** %a.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %union.UnionType** %a.addr, align 4
  %o = bitcast %union.UnionType* %0 to i64*
  %1 = load i64* %o, align 4
  %call = call i64 @TYPE(i64 %1)
  switch i64 %call, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.UnionType** %a.addr, align 4
  %o1 = bitcast %union.UnionType* %2 to i64*
  %3 = load i64* %o1, align 4
  %conv = trunc i64 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %ret, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load %union.UnionType** %a.addr, align 4
  %d = bitcast %union.UnionType* %4 to double*
  %5 = load double* %d, align 4
  %cmp4 = fcmp une double %5, 0.000000e+00
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %6 = load i32* %ret, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp
define i8* @int_to_string(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  %buf = alloca [256 x i8], align 1
  %len = alloca i32, align 4
  %ret = alloca i8*, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 256, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %1 = load i32* %v.addr, align 4
  %call = call i32 (i8*, i32, i32, i32, i8*, ...)* @__snprintf_chk(i8* %arraydecay, i32 256, i32 0, i32 256, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i32 %1)
  %arraydecay1 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 @strlen(i8* %arraydecay1)
  %add = add i32 %call2, 1
  store i32 %add, i32* %len, align 4
  %2 = load i32* %len, align 4
  %call3 = call i8* @malloc(i32 %2)
  store i8* %call3, i8** %ret, align 4
  %3 = load i8** %ret, align 4
  %4 = call i32 @llvm.objectsize.i32(i8* %3, i1 false)
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8** %ret, align 4
  %arraydecay4 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %6 = load i32* %len, align 4
  %7 = load i8** %ret, align 4
  %8 = call i32 @llvm.objectsize.i32(i8* %7, i1 false)
  %call5 = call i8* @__memcpy_chk(i8* %5, i8* %arraydecay4, i32 %6, i32 %8) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i8** %ret, align 4
  %arraydecay6 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %10 = load i32* %len, align 4
  %call7 = call i8* @__inline_memcpy_chk(i8* %9, i8* %arraydecay6, i32 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %call7, %cond.false ]
  %11 = load i8** %ret, align 4
  ret i8* %11
}

declare i32 @__snprintf_chk(i8*, i32, i32, i32, i8*, ...) #1

; Function Attrs: nounwind ssp
define i8* @double_to_string(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  %buf = alloca [256 x i8], align 1
  %len = alloca i32, align 4
  %ret = alloca i8*, align 4
  store double %v, double* %v.addr, align 8
  %0 = bitcast [256 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i32(i8* %0, i8 0, i32 256, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %1 = load double* %v.addr, align 8
  %call = call i32 (i8*, i32, i32, i32, i8*, ...)* @__snprintf_chk(i8* %arraydecay, i32 256, i32 0, i32 256, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), double %1)
  %arraydecay1 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 @strlen(i8* %arraydecay1)
  %add = add i32 %call2, 1
  store i32 %add, i32* %len, align 4
  %2 = load i32* %len, align 4
  %call3 = call i8* @malloc(i32 %2)
  store i8* %call3, i8** %ret, align 4
  %3 = load i8** %ret, align 4
  %4 = call i32 @llvm.objectsize.i32(i8* %3, i1 false)
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8** %ret, align 4
  %arraydecay4 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %6 = load i32* %len, align 4
  %7 = load i8** %ret, align 4
  %8 = call i32 @llvm.objectsize.i32(i8* %7, i1 false)
  %call5 = call i8* @__memcpy_chk(i8* %5, i8* %arraydecay4, i32 %6, i32 %8) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i8** %ret, align 4
  %arraydecay6 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0
  %10 = load i32* %len, align 4
  %call7 = call i8* @__inline_memcpy_chk(i8* %9, i8* %arraydecay6, i32 %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %call7, %cond.false ]
  %11 = load i8** %ret, align 4
  ret i8* %11
}

; Function Attrs: nounwind ssp
define i64 @expandVariable(i8* %fmt, ...) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %fmt.addr = alloca i8*, align 4
  %p = alloca i8*, align 4
  %args = alloca i8*, align 4
  %fmt_len = alloca i32, align 4
  %arg_num = alloca i32, align 4
  %saved_stack = alloca i8*
  %i = alloca i32, align 4
  %all_length = alloca i32, align 4
  %arg = alloca %union.UnionType*, align 4
  %str = alloca i8*, align 4
  %k = alloca i32, align 4
  %s56 = alloca i8*, align 4
  %len = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %fmt, i8** %fmt.addr, align 4
  %0 = load %struct.__sFILE** @__stderrp, align 4
  %call = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([23 x i8]* @.str40, i32 0, i32 0))
  %args1 = bitcast i8** %args to i8*
  call void @llvm.va_start(i8* %args1)
  %1 = load i8** %fmt.addr, align 4
  %call2 = call i32 @strlen(i8* %1)
  store i32 %call2, i32* %fmt_len, align 4
  store i32 0, i32* %arg_num, align 4
  %2 = load i8** %fmt.addr, align 4
  store i8* %2, i8** %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8** %p, align 4
  %4 = load i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8** %p, align 4
  %6 = load i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 37
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8** %p, align 4
  %add.ptr = getelementptr inbounds i8* %7, i32 1
  %8 = load i8* %add.ptr, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 115
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32* %arg_num, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %arg_num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i8** %p, align 4
  %incdec.ptr = getelementptr inbounds i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32* %arg_num, align 4
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %saved_stack
  %vla = alloca i8*, i32 %11, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %all_length, align 4
  %13 = load i8** %fmt.addr, align 4
  store i8* %13, i8** %p, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc38, %for.end
  %14 = load i8** %p, align 4
  %15 = load i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %for.body14, label %for.end40

for.body14:                                       ; preds = %for.cond10
  %16 = load i8** %p, align 4
  %17 = load i8* %16, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 37
  br i1 %cmp16, label %land.lhs.true18, label %if.else

land.lhs.true18:                                  ; preds = %for.body14
  %18 = load i8** %p, align 4
  %add.ptr19 = getelementptr inbounds i8* %18, i32 1
  %19 = load i8* %add.ptr19, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 115
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %land.lhs.true18
  %ap.cur = load i8** %args
  %20 = bitcast i8* %ap.cur to %union.UnionType**
  %ap.next = getelementptr i8* %ap.cur, i32 4
  store i8* %ap.next, i8** %args
  %21 = load %union.UnionType** %20
  store %union.UnionType* %21, %union.UnionType** %arg, align 4
  store i8* null, i8** %str, align 4
  %22 = load %union.UnionType** %arg, align 4
  %o = bitcast %union.UnionType* %22 to i64*
  %23 = load i64* %o, align 4
  %call24 = call i64 @TYPE(i64 %23)
  switch i64 %call24, label %sw.default [
    i64 1, label %sw.bb
    i64 0, label %sw.bb28
    i64 2, label %sw.bb30
    i64 3, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.then23
  %24 = load %union.UnionType** %arg, align 4
  %o25 = bitcast %union.UnionType* %24 to i64*
  %25 = load i64* %o25, align 4
  %conv26 = trunc i64 %25 to i32
  %call27 = call i8* @int_to_string(i32 %conv26)
  store i8* %call27, i8** %str, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then23
  %26 = load %union.UnionType** %arg, align 4
  %d = bitcast %union.UnionType* %26 to double*
  %27 = load double* %d, align 4
  %call29 = call i8* @double_to_string(double %27)
  store i8* %call29, i8** %str, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.then23
  %28 = load %union.UnionType** %arg, align 4
  %o31 = bitcast %union.UnionType* %28 to i64*
  %29 = load i64* %o31, align 4
  %and = and i64 %29, 268435455
  %conv32 = trunc i64 %and to i32
  %30 = inttoptr i32 %conv32 to i8*
  %31 = bitcast i8* %30 to %struct._String*
  %s = getelementptr inbounds %struct._String* %31, i32 0, i32 1
  %32 = load i8** %s, align 4
  store i8* %32, i8** %str, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then23
  br label %sw.epilog

sw.default:                                       ; preds = %if.then23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %sw.bb30, %sw.bb28, %sw.bb
  %33 = load i8** %str, align 4
  %34 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds i8** %vla, i32 %34
  store i8* %33, i8** %arrayidx, align 4
  %35 = load i8** %str, align 4
  %call34 = call i32 @strlen(i8* %35)
  %36 = load i32* %all_length, align 4
  %add = add i32 %36, %call34
  store i32 %add, i32* %all_length, align 4
  %37 = load i8** %p, align 4
  %incdec.ptr35 = getelementptr inbounds i8* %37, i32 1
  store i8* %incdec.ptr35, i8** %p, align 4
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true18, %for.body14
  %38 = load i32* %all_length, align 4
  %inc36 = add i32 %38, 1
  store i32 %inc36, i32* %all_length, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %sw.epilog
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %39 = load i8** %p, align 4
  %incdec.ptr39 = getelementptr inbounds i8* %39, i32 1
  store i8* %incdec.ptr39, i8** %p, align 4
  br label %for.cond10

for.end40:                                        ; preds = %for.cond10
  %40 = load i32* %all_length, align 4
  %vla41 = alloca i8, i32 %40, align 1
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  %41 = load i8** %fmt.addr, align 4
  store i8* %41, i8** %p, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc76, %for.end40
  %42 = load i8** %p, align 4
  %43 = load i8* %42, align 1
  %conv43 = sext i8 %43 to i32
  %cmp44 = icmp ne i32 %conv43, 0
  br i1 %cmp44, label %for.body46, label %for.end78

for.body46:                                       ; preds = %for.cond42
  %44 = load i8** %p, align 4
  %45 = load i8* %44, align 1
  %conv47 = sext i8 %45 to i32
  %cmp48 = icmp eq i32 %conv47, 37
  br i1 %cmp48, label %land.lhs.true50, label %if.else70

land.lhs.true50:                                  ; preds = %for.body46
  %46 = load i8** %p, align 4
  %add.ptr51 = getelementptr inbounds i8* %46, i32 1
  %47 = load i8* %add.ptr51, align 1
  %conv52 = sext i8 %47 to i32
  %cmp53 = icmp eq i32 %conv52, 115
  br i1 %cmp53, label %if.then55, label %if.else70

if.then55:                                        ; preds = %land.lhs.true50
  %48 = load i32* %i, align 4
  %arrayidx57 = getelementptr inbounds i8** %vla, i32 %48
  %49 = load i8** %arrayidx57, align 4
  store i8* %49, i8** %s56, align 4
  %50 = load i8** %s56, align 4
  %call58 = call i32 @strlen(i8* %50)
  store i32 %call58, i32* %len, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc66, %if.then55
  %51 = load i32* %j, align 4
  %52 = load i32* %len, align 4
  %cmp60 = icmp ult i32 %51, %52
  br i1 %cmp60, label %for.body62, label %for.end68

for.body62:                                       ; preds = %for.cond59
  %53 = load i32* %j, align 4
  %54 = load i8** %s56, align 4
  %arrayidx63 = getelementptr inbounds i8* %54, i32 %53
  %55 = load i8* %arrayidx63, align 1
  %56 = load i32* %i, align 4
  %arrayidx64 = getelementptr inbounds i8* %vla41, i32 %56
  store i8 %55, i8* %arrayidx64, align 1
  %57 = load i32* %i, align 4
  %inc65 = add i32 %57, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.inc66

for.inc66:                                        ; preds = %for.body62
  %58 = load i32* %j, align 4
  %inc67 = add i32 %58, 1
  store i32 %inc67, i32* %j, align 4
  br label %for.cond59

for.end68:                                        ; preds = %for.cond59
  %59 = load i8** %p, align 4
  %incdec.ptr69 = getelementptr inbounds i8* %59, i32 1
  store i8* %incdec.ptr69, i8** %p, align 4
  br label %if.end73

if.else70:                                        ; preds = %land.lhs.true50, %for.body46
  %60 = load i32* %k, align 4
  %61 = load i8** %fmt.addr, align 4
  %arrayidx71 = getelementptr inbounds i8* %61, i32 %60
  %62 = load i8* %arrayidx71, align 1
  %63 = load i32* %i, align 4
  %arrayidx72 = getelementptr inbounds i8* %vla41, i32 %63
  store i8 %62, i8* %arrayidx72, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.else70, %for.end68
  %64 = load i32* %i, align 4
  %inc74 = add i32 %64, 1
  store i32 %inc74, i32* %i, align 4
  %65 = load i32* %k, align 4
  %inc75 = add i32 %65, 1
  store i32 %inc75, i32* %k, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %if.end73
  %66 = load i8** %p, align 4
  %incdec.ptr77 = getelementptr inbounds i8* %66, i32 1
  store i8* %incdec.ptr77, i8** %p, align 4
  br label %for.cond42

for.end78:                                        ; preds = %for.cond42
  %67 = load %struct.__sFILE** @__stderrp, align 4
  %call79 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %67, i8* getelementptr inbounds ([12 x i8]* @.str41, i32 0, i32 0), i8* %vla41)
  %call80 = call i64 @new_String(i8* %vla41)
  %coerce.dive = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %68 = bitcast double* %coerce.dive to i64*
  store i64 %call80, i64* %68, align 1
  store i32 1, i32* %cleanup.dest.slot
  %69 = load i8** %saved_stack
  call void @llvm.stackrestore(i8* %69)
  %coerce.dive81 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %70 = bitcast double* %coerce.dive81 to i64*
  %71 = load i64* %70, align 1
  ret i64 %71
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind ssp
define i64 @new_FFI(i8* %name, i8* %ptr) #0 {
entry:
  %retval = alloca %union.UnionType, align 4
  %name.addr = alloca i8*, align 4
  %ptr.addr = alloca i8*, align 4
  %ret = alloca %union.UnionType, align 4
  %ffi = alloca %struct._FFIObject*, align 4
  %array = alloca %struct._Array, align 4
  %hash_ref = alloca %union.UnionType, align 4
  %agg.tmp = alloca %union.UnionType, align 4
  %pkg = alloca %struct._Package*, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  %call = call %struct._Object* @fetch_object()
  %0 = bitcast %struct._Object* %call to %struct._FFIObject*
  store %struct._FFIObject* %0, %struct._FFIObject** %ffi, align 4
  %size = getelementptr inbounds %struct._Array* %array, i32 0, i32 2
  store i32 0, i32* %size, align 4
  %list = getelementptr inbounds %struct._Array* %array, i32 0, i32 1
  store %union.UnionType** null, %union.UnionType*** %list, align 4
  %call1 = call i64 @new_Hash(%struct._Array* %array)
  %coerce.dive = getelementptr %union.UnionType* %agg.tmp, i32 0, i32 0
  %1 = bitcast double* %coerce.dive to i64*
  store i64 %call1, i64* %1, align 1
  %call2 = call i64 @new_HashRef(%union.UnionType* byval align 4 %agg.tmp)
  %coerce.dive3 = getelementptr %union.UnionType* %hash_ref, i32 0, i32 0
  %2 = bitcast double* %coerce.dive3 to i64*
  store i64 %call2, i64* %2, align 1
  %3 = load i8** %name.addr, align 4
  %call4 = call %struct._Package* @get_pkg(i8* %3)
  store %struct._Package* %call4, %struct._Package** %pkg, align 4
  %4 = load %struct._FFIObject** %ffi, align 4
  %header = getelementptr inbounds %struct._FFIObject* %4, i32 0, i32 0
  store i32 12, i32* %header, align 4
  %5 = load %struct._FFIObject** %ffi, align 4
  %members = getelementptr inbounds %struct._FFIObject* %5, i32 0, i32 1
  %6 = bitcast %union.UnionType* %members to i8*
  %7 = bitcast %union.UnionType* %hash_ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %6, i8* %7, i32 8, i32 4, i1 false)
  %8 = load %struct._Package** %pkg, align 4
  %9 = load %struct._FFIObject** %ffi, align 4
  %mtds = getelementptr inbounds %struct._FFIObject* %9, i32 0, i32 2
  store %struct._Package* %8, %struct._Package** %mtds, align 4
  %10 = load i8** %name.addr, align 4
  %11 = load %struct._FFIObject** %ffi, align 4
  %pkg_name = getelementptr inbounds %struct._FFIObject* %11, i32 0, i32 3
  store i8* %10, i8** %pkg_name, align 4
  %12 = load i8** %ptr.addr, align 4
  %13 = load %struct._FFIObject** %ffi, align 4
  %ptr5 = getelementptr inbounds %struct._FFIObject* %13, i32 0, i32 4
  store i8* %12, i8** %ptr5, align 4
  %14 = load %struct._FFIObject** %ffi, align 4
  %15 = ptrtoint %struct._FFIObject* %14 to i64
  %or = or i64 %15, -17179869184
  %o = bitcast %union.UnionType* %ret to i64*
  store i64 %or, i64* %o, align 4
  %16 = bitcast %union.UnionType* %retval to i8*
  %17 = bitcast %union.UnionType* %ret to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 8, i32 4, i1 false)
  %coerce.dive6 = getelementptr %union.UnionType* %retval, i32 0, i32 0
  %18 = bitcast double* %coerce.dive6 to i64*
  %19 = load i64* %18, align 1
  ret i64 %19
}

attributes #0 = { nounwind ssp "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind ssp "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn }
