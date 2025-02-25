; ModuleID = 'bpftrace'
source_filename = "bpftrace"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "bpf-pc-linux"

%printf_t = type { i64, i64, i64, i64, i64 }

; Function Attrs: nounwind
declare i64 @llvm.bpf.pseudo(i64 %0, i64 %1) #0

define i64 @BEGIN(i8* %0) section "s_BEGIN_1" {
entry:
  %"struct Foo.m16" = alloca i32, align 4
  %"||_result15" = alloca i64, align 8
  %"struct Foo.m8" = alloca i32, align 4
  %"||_result" = alloca i64, align 8
  %"struct Foo.m6" = alloca i32, align 4
  %"&&_result5" = alloca i64, align 8
  %"struct Foo.m" = alloca i32, align 4
  %"&&_result" = alloca i64, align 8
  %printf_args = alloca %printf_t, align 8
  %"$foo" = alloca i64, align 8
  %1 = bitcast i64* %"$foo" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %1)
  store i64 0, i64* %"$foo", align 8
  %2 = bitcast i8* %0 to i64*
  %3 = getelementptr i64, i64* %2, i64 14
  %arg0 = load volatile i64, i64* %3, align 8
  store i64 %arg0, i64* %"$foo", align 8
  %4 = bitcast %printf_t* %printf_args to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %4)
  %5 = bitcast %printf_t* %printf_args to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 40, i1 false)
  %6 = getelementptr %printf_t, %printf_t* %printf_args, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = bitcast i64* %"&&_result" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %7)
  %8 = load i64, i64* %"$foo", align 8
  %9 = add i64 %8, 0
  %10 = bitcast i32* %"struct Foo.m" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %10)
  %probe_read_user = call i64 inttoptr (i64 112 to i64 (i32*, i32, i64)*)(i32* %"struct Foo.m", i32 4, i64 %9)
  %11 = load i32, i32* %"struct Foo.m", align 4
  %12 = bitcast i32* %"struct Foo.m" to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %12)
  %lhs_true_cond = icmp ne i32 %11, 0
  br i1 %lhs_true_cond, label %"&&_lhs_true", label %"&&_false"

"&&_lhs_true":                                    ; preds = %entry
  br i1 false, label %"&&_true", label %"&&_false"

"&&_true":                                        ; preds = %"&&_lhs_true"
  store i64 1, i64* %"&&_result", align 8
  br label %"&&_merge"

"&&_false":                                       ; preds = %"&&_lhs_true", %entry
  store i64 0, i64* %"&&_result", align 8
  br label %"&&_merge"

"&&_merge":                                       ; preds = %"&&_false", %"&&_true"
  %13 = load i64, i64* %"&&_result", align 8
  %14 = getelementptr %printf_t, %printf_t* %printf_args, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = bitcast i64* %"&&_result5" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %15)
  br i1 true, label %"&&_lhs_true1", label %"&&_false3"

"&&_lhs_true1":                                   ; preds = %"&&_merge"
  %16 = load i64, i64* %"$foo", align 8
  %17 = add i64 %16, 0
  %18 = bitcast i32* %"struct Foo.m6" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %18)
  %probe_read_user7 = call i64 inttoptr (i64 112 to i64 (i32*, i32, i64)*)(i32* %"struct Foo.m6", i32 4, i64 %17)
  %19 = load i32, i32* %"struct Foo.m6", align 4
  %20 = bitcast i32* %"struct Foo.m6" to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %20)
  %rhs_true_cond = icmp ne i32 %19, 0
  br i1 %rhs_true_cond, label %"&&_true2", label %"&&_false3"

"&&_true2":                                       ; preds = %"&&_lhs_true1"
  store i64 1, i64* %"&&_result5", align 8
  br label %"&&_merge4"

"&&_false3":                                      ; preds = %"&&_lhs_true1", %"&&_merge"
  store i64 0, i64* %"&&_result5", align 8
  br label %"&&_merge4"

"&&_merge4":                                      ; preds = %"&&_false3", %"&&_true2"
  %21 = load i64, i64* %"&&_result5", align 8
  %22 = getelementptr %printf_t, %printf_t* %printf_args, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  %23 = bitcast i64* %"||_result" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %23)
  %24 = load i64, i64* %"$foo", align 8
  %25 = add i64 %24, 0
  %26 = bitcast i32* %"struct Foo.m8" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %26)
  %probe_read_user9 = call i64 inttoptr (i64 112 to i64 (i32*, i32, i64)*)(i32* %"struct Foo.m8", i32 4, i64 %25)
  %27 = load i32, i32* %"struct Foo.m8", align 4
  %28 = bitcast i32* %"struct Foo.m8" to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %28)
  %lhs_true_cond10 = icmp ne i32 %27, 0
  br i1 %lhs_true_cond10, label %"||_true", label %"||_lhs_false"

"||_lhs_false":                                   ; preds = %"&&_merge4"
  br i1 false, label %"||_true", label %"||_false"

"||_false":                                       ; preds = %"||_lhs_false"
  store i64 0, i64* %"||_result", align 8
  br label %"||_merge"

"||_true":                                        ; preds = %"||_lhs_false", %"&&_merge4"
  store i64 1, i64* %"||_result", align 8
  br label %"||_merge"

"||_merge":                                       ; preds = %"||_true", %"||_false"
  %29 = load i64, i64* %"||_result", align 8
  %30 = getelementptr %printf_t, %printf_t* %printf_args, i32 0, i32 3
  store i64 %29, i64* %30, align 8
  %31 = bitcast i64* %"||_result15" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %31)
  br i1 false, label %"||_true13", label %"||_lhs_false11"

"||_lhs_false11":                                 ; preds = %"||_merge"
  %32 = load i64, i64* %"$foo", align 8
  %33 = add i64 %32, 0
  %34 = bitcast i32* %"struct Foo.m16" to i8*
  call void @llvm.lifetime.start.p0i8(i64 -1, i8* %34)
  %probe_read_user17 = call i64 inttoptr (i64 112 to i64 (i32*, i32, i64)*)(i32* %"struct Foo.m16", i32 4, i64 %33)
  %35 = load i32, i32* %"struct Foo.m16", align 4
  %36 = bitcast i32* %"struct Foo.m16" to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %36)
  %rhs_true_cond18 = icmp ne i32 %35, 0
  br i1 %rhs_true_cond18, label %"||_true13", label %"||_false12"

"||_false12":                                     ; preds = %"||_lhs_false11"
  store i64 0, i64* %"||_result15", align 8
  br label %"||_merge14"

"||_true13":                                      ; preds = %"||_lhs_false11", %"||_merge"
  store i64 1, i64* %"||_result15", align 8
  br label %"||_merge14"

"||_merge14":                                     ; preds = %"||_true13", %"||_false12"
  %37 = load i64, i64* %"||_result15", align 8
  %38 = getelementptr %printf_t, %printf_t* %printf_args, i32 0, i32 4
  store i64 %37, i64* %38, align 8
  %pseudo = call i64 @llvm.bpf.pseudo(i64 1, i64 0)
  %perf_event_output = call i64 inttoptr (i64 25 to i64 (i8*, i64, i64, %printf_t*, i64)*)(i8* %0, i64 %pseudo, i64 4294967295, %printf_t* %printf_args, i64 40)
  %39 = bitcast %printf_t* %printf_args to i8*
  call void @llvm.lifetime.end.p0i8(i64 -1, i8* %39)
  ret i64 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg %0, i8* nocapture %1) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly %0, i8 %1, i64 %2, i1 immarg %3) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg %0, i8* nocapture %1) #1

attributes #0 = { nounwind }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
