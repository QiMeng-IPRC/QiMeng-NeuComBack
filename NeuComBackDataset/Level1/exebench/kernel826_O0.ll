; ModuleID = '../benchmarks/fine_grained/exebench/kernel826.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel826.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [10 x i8] c"pass_test\00", align 1
@TESTS_ = dso_local global ptr null, align 8
@CURR_TEST_ = dso_local global i64 0, align 8
@test_func_pass_test = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fail_test_test_true\00", align 1
@test_func_fail_test_test_true = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"fail_test_test_false\00", align 1
@test_func_fail_test_test_false = dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"test_case\00", align 1
@test_setup_test_case = dso_local global ptr null, align 8
@test_func_test_case = dso_local global i32 0, align 4
@test_clnup_test_case = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupTests() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = load ptr, ptr @TESTS_, align 8
  %3 = load i64, ptr @CURR_TEST_, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, ptr %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i32 0, i32 0
  store ptr @.str, ptr %5, align 8
  %6 = load ptr, ptr @TESTS_, align 8
  %7 = load i64, ptr @CURR_TEST_, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, ptr %8, i32 0, i32 3
  store ptr null, ptr %9, align 8
  %10 = load i32, ptr @test_func_pass_test, align 4
  %11 = load ptr, ptr @TESTS_, align 8
  %12 = load i64, ptr @CURR_TEST_, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, ptr %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, ptr %13, i32 0, i32 2
  store i32 %10, ptr %14, align 8
  %15 = load ptr, ptr @TESTS_, align 8
  %16 = load i64, ptr @CURR_TEST_, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, ptr %17, i32 0, i32 1
  store ptr null, ptr %18, align 8
  %19 = load i64, ptr @CURR_TEST_, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr @CURR_TEST_, align 8
  br label %21

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @TESTS_, align 8
  %24 = load i64, ptr @CURR_TEST_, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i32 0, i32 0
  store ptr @.str.1, ptr %26, align 8
  %27 = load ptr, ptr @TESTS_, align 8
  %28 = load i64, ptr @CURR_TEST_, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, ptr %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, ptr %29, i32 0, i32 3
  store ptr null, ptr %30, align 8
  %31 = load i32, ptr @test_func_fail_test_test_true, align 4
  %32 = load ptr, ptr @TESTS_, align 8
  %33 = load i64, ptr @CURR_TEST_, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, ptr %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, ptr %34, i32 0, i32 2
  store i32 %31, ptr %35, align 8
  %36 = load ptr, ptr @TESTS_, align 8
  %37 = load i64, ptr @CURR_TEST_, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, ptr %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, ptr %38, i32 0, i32 1
  store ptr null, ptr %39, align 8
  %40 = load i64, ptr @CURR_TEST_, align 8
  %41 = add i64 %40, 1
  store i64 %41, ptr @CURR_TEST_, align 8
  br label %42

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr @TESTS_, align 8
  %45 = load i64, ptr @CURR_TEST_, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, ptr %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, ptr %46, i32 0, i32 0
  store ptr @.str.2, ptr %47, align 8
  %48 = load ptr, ptr @TESTS_, align 8
  %49 = load i64, ptr @CURR_TEST_, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, ptr %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, ptr %50, i32 0, i32 3
  store ptr null, ptr %51, align 8
  %52 = load i32, ptr @test_func_fail_test_test_false, align 4
  %53 = load ptr, ptr @TESTS_, align 8
  %54 = load i64, ptr @CURR_TEST_, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, ptr %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, ptr %55, i32 0, i32 2
  store i32 %52, ptr %56, align 8
  %57 = load ptr, ptr @TESTS_, align 8
  %58 = load i64, ptr @CURR_TEST_, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, ptr %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, ptr %59, i32 0, i32 1
  store ptr null, ptr %60, align 8
  %61 = load i64, ptr @CURR_TEST_, align 8
  %62 = add i64 %61, 1
  store i64 %62, ptr @CURR_TEST_, align 8
  br label %63

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr @TESTS_, align 8
  %66 = load i64, ptr @CURR_TEST_, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, ptr %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, ptr %67, i32 0, i32 0
  store ptr @.str.3, ptr %68, align 8
  %69 = load ptr, ptr @test_setup_test_case, align 8
  %70 = load ptr, ptr @TESTS_, align 8
  %71 = load i64, ptr @CURR_TEST_, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, ptr %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, ptr %72, i32 0, i32 3
  store ptr %69, ptr %73, align 8
  %74 = load i32, ptr @test_func_test_case, align 4
  %75 = load ptr, ptr @TESTS_, align 8
  %76 = load i64, ptr @CURR_TEST_, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, ptr %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, ptr %77, i32 0, i32 2
  store i32 %74, ptr %78, align 8
  %79 = load ptr, ptr @test_clnup_test_case, align 8
  %80 = load ptr, ptr @TESTS_, align 8
  %81 = load i64, ptr @CURR_TEST_, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, ptr %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, ptr %82, i32 0, i32 1
  store ptr %79, ptr %83, align 8
  %84 = load i64, ptr @CURR_TEST_, align 8
  %85 = add i64 %84, 1
  store i64 %85, ptr @CURR_TEST_, align 8
  br label %86

86:                                               ; preds = %64
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
