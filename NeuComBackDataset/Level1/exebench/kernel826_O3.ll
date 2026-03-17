; ModuleID = '../benchmarks/fine_grained/exebench/kernel826.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel826.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [10 x i8] c"pass_test\00", align 1
@TESTS_ = dso_local local_unnamed_addr global ptr null, align 8
@CURR_TEST_ = dso_local local_unnamed_addr global i64 0, align 8
@test_func_pass_test = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fail_test_test_true\00", align 1
@test_func_fail_test_test_true = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"fail_test_test_false\00", align 1
@test_func_fail_test_test_false = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"test_case\00", align 1
@test_setup_test_case = dso_local local_unnamed_addr global ptr null, align 8
@test_func_test_case = dso_local local_unnamed_addr global i32 0, align 4
@test_clnup_test_case = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @SetupTests() local_unnamed_addr #0 {
  %1 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %2 = load i64, ptr @CURR_TEST_, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.TYPE_2__, ptr %1, i64 %2
  store ptr @.str, ptr %3, align 8, !tbaa !11
  %4 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i64 %2, i32 3
  store ptr null, ptr %5, align 8, !tbaa !14
  %6 = load i32, ptr @test_func_pass_test, align 4, !tbaa !15
  %7 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %2, i32 2
  store i32 %6, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %2, i32 1
  store ptr null, ptr %9, align 8, !tbaa !17
  %10 = add i64 %2, 1
  %11 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.TYPE_2__, ptr %11, i64 %10
  store ptr @.str.1, ptr %12, align 8, !tbaa !11
  %13 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.TYPE_2__, ptr %13, i64 %10, i32 3
  store ptr null, ptr %14, align 8, !tbaa !14
  %15 = load i32, ptr @test_func_fail_test_test_true, align 4, !tbaa !15
  %16 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %16, i64 %10, i32 2
  store i32 %15, ptr %17, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.TYPE_2__, ptr %16, i64 %10, i32 1
  store ptr null, ptr %18, align 8, !tbaa !17
  %19 = add i64 %2, 2
  %20 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.TYPE_2__, ptr %20, i64 %19
  store ptr @.str.2, ptr %21, align 8, !tbaa !11
  %22 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.TYPE_2__, ptr %22, i64 %19, i32 3
  store ptr null, ptr %23, align 8, !tbaa !14
  %24 = load i32, ptr @test_func_fail_test_test_false, align 4, !tbaa !15
  %25 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i64 %19, i32 2
  store i32 %24, ptr %26, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i64 %19, i32 1
  store ptr null, ptr %27, align 8, !tbaa !17
  %28 = add i64 %2, 3
  %29 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.TYPE_2__, ptr %29, i64 %28
  store ptr @.str.3, ptr %30, align 8, !tbaa !11
  %31 = load ptr, ptr @test_setup_test_case, align 8, !tbaa !5
  %32 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.TYPE_2__, ptr %32, i64 %28, i32 3
  store ptr %31, ptr %33, align 8, !tbaa !14
  %34 = load i32, ptr @test_func_test_case, align 4, !tbaa !15
  %35 = load ptr, ptr @TESTS_, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.TYPE_2__, ptr %35, i64 %28, i32 2
  store i32 %34, ptr %36, align 8, !tbaa !16
  %37 = load ptr, ptr @test_clnup_test_case, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.TYPE_2__, ptr %35, i64 %28, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !17
  %39 = add i64 %2, 4
  store i64 %39, ptr @CURR_TEST_, align 8, !tbaa !9
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"TYPE_2__", !6, i64 0, !6, i64 8, !13, i64 16, !6, i64 24}
!13 = !{!"int", !7, i64 0}
!14 = !{!12, !6, i64 24}
!15 = !{!13, !13, i64 0}
!16 = !{!12, !13, i64 16}
!17 = !{!12, !6, i64 8}
