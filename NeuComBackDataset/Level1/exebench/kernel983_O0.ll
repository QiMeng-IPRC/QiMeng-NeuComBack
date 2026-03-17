; ModuleID = '../benchmarks/fine_grained/exebench/kernel983.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel983.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TNC_FALSE = dso_local global i32 0, align 4
@TNC_TRUE = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @removeConstraint(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store double %0, ptr %10, align 8
  store double %1, ptr %11, align 8
  store double %2, ptr %12, align 8
  store double %3, ptr %13, align 8
  store double %4, ptr %14, align 8
  store ptr %5, ptr %15, align 8
  store ptr %6, ptr %16, align 8
  store i32 %7, ptr %17, align 4
  %22 = load double, ptr %14, align 8
  %23 = load double, ptr %13, align 8
  %24 = fsub double %22, %23
  %25 = load double, ptr %10, align 8
  %26 = fmul double %25, -5.000000e-01
  %27 = fcmp ole double %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %8
  %29 = load double, ptr %11, align 8
  %30 = load double, ptr %12, align 8
  %31 = fcmp ogt double %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, ptr @TNC_FALSE, align 4
  store i32 %33, ptr %9, align 4
  br label %82

34:                                               ; preds = %28, %8
  store i32 -1, ptr %20, align 4
  store double 0.000000e+00, ptr %18, align 8
  store i32 0, ptr %21, align 4
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i32, ptr %21, align 4
  %37 = load i32, ptr %17, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load ptr, ptr %16, align 8
  %41 = load i32, ptr %21, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %68

47:                                               ; preds = %39
  %48 = load ptr, ptr %16, align 8
  %49 = load i32, ptr %21, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = sub nsw i32 0, %52
  %54 = sitofp i32 %53 to double
  %55 = load ptr, ptr %15, align 8
  %56 = load i32, ptr %21, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, ptr %55, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = fmul double %54, %59
  store double %60, ptr %19, align 8
  %61 = load double, ptr %19, align 8
  %62 = load double, ptr %18, align 8
  %63 = fcmp olt double %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load double, ptr %19, align 8
  store double %65, ptr %18, align 8
  %66 = load i32, ptr %21, align 4
  store i32 %66, ptr %20, align 4
  br label %67

67:                                               ; preds = %64, %47
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32, ptr %21, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %21, align 4
  br label %35, !llvm.loop !6

71:                                               ; preds = %35
  %72 = load i32, ptr %20, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load ptr, ptr %16, align 8
  %76 = load i32, ptr %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %75, i64 %77
  store i32 0, ptr %78, align 4
  %79 = load i32, ptr @TNC_TRUE, align 4
  store i32 %79, ptr %9, align 4
  br label %82

80:                                               ; preds = %71
  %81 = load i32, ptr @TNC_FALSE, align 4
  store i32 %81, ptr %9, align 4
  br label %82

82:                                               ; preds = %80, %74, %32
  %83 = load i32, ptr %9, align 4
  ret i32 %83
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
