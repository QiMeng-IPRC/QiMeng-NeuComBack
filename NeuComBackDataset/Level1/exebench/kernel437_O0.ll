; ModuleID = '../benchmarks/fine_grained/exebench/kernel437.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel437.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@score_2p = dso_local global ptr null, align 8
@isRed_other = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @updateCount_other(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds float, ptr %11, i64 1
  %13 = load float, ptr %12, align 4
  %14 = fcmp oeq float %13, 2.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, ptr %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %7, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds float, ptr %19, i64 2
  %21 = load float, ptr %20, align 4
  %22 = fcmp oeq float %21, 2.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %7, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds float, ptr %27, i64 3
  %29 = load float, ptr %28, align 4
  %30 = fcmp oeq float %29, 2.000000e+00
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, ptr %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %8, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds float, ptr %35, i64 4
  %37 = load float, ptr %36, align 4
  %38 = fcmp oeq float %37, 2.000000e+00
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, ptr %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %8, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds float, ptr %43, i64 5
  %45 = load float, ptr %44, align 4
  %46 = fcmp oeq float %45, 2.000000e+00
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, ptr %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %9, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, ptr %8, align 4
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds i32, ptr %52, i64 1
  %54 = load i32, ptr %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds float, ptr %58, i64 0
  %60 = load float, ptr %59, align 4
  %61 = fcmp une float %60, 2.000000e+00
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  store i32 1, ptr %10, align 4
  %63 = load ptr, ptr @score_2p, align 8
  %64 = getelementptr inbounds i64, ptr %63, i64 0
  %65 = load i64, ptr %64, align 8
  %66 = add nsw i64 %65, 2
  %67 = load ptr, ptr @score_2p, align 8
  %68 = getelementptr inbounds i64, ptr %67, i64 0
  store i64 %66, ptr %68, align 8
  br label %69

69:                                               ; preds = %62, %57, %50
  %70 = load i32, ptr %9, align 4
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds i32, ptr %71, i64 2
  %73 = load i32, ptr %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds float, ptr %77, i64 0
  %79 = load float, ptr %78, align 4
  %80 = fcmp une float %79, 2.000000e+00
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  store i32 1, ptr %10, align 4
  store i8 121, ptr @isRed_other, align 1
  %82 = load ptr, ptr @score_2p, align 8
  %83 = getelementptr inbounds i64, ptr %82, i64 0
  %84 = load i64, ptr %83, align 8
  %85 = add nsw i64 %84, 3
  %86 = load ptr, ptr @score_2p, align 8
  %87 = getelementptr inbounds i64, ptr %86, i64 0
  store i64 %85, ptr %87, align 8
  br label %88

88:                                               ; preds = %81, %76, %69
  %89 = load i32, ptr %7, align 4
  %90 = load ptr, ptr %6, align 8
  %91 = getelementptr inbounds i32, ptr %90, i64 0
  store i32 %89, ptr %91, align 4
  %92 = load i32, ptr %8, align 4
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds i32, ptr %93, i64 1
  store i32 %92, ptr %94, align 4
  %95 = load i32, ptr %9, align 4
  %96 = load ptr, ptr %6, align 8
  %97 = getelementptr inbounds i32, ptr %96, i64 2
  store i32 %95, ptr %97, align 4
  %98 = load i32, ptr %10, align 4
  ret i32 %98
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
