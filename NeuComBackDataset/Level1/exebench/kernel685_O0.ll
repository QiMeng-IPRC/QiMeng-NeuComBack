; ModuleID = '../benchmarks/fine_grained/exebench/kernel685.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel685.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double }

@nPlotpoints = dso_local global i64 0, align 8
@plotpoints = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calcplotp(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, ptr %6, align 8
  store double %1, ptr %7, align 8
  store double %2, ptr %8, align 8
  store double %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  store i64 0, ptr %11, align 8
  br label %14

14:                                               ; preds = %56, %5
  %15 = load i64, ptr %11, align 8
  %16 = load i64, ptr @nPlotpoints, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  %19 = load double, ptr %6, align 8
  %20 = load ptr, ptr @plotpoints, align 8
  %21 = load i64, ptr %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, ptr %22, i32 0, i32 0
  %24 = load double, ptr %23, align 8
  %25 = fsub double %19, %24
  store double %25, ptr %12, align 8
  %26 = load double, ptr %7, align 8
  %27 = load ptr, ptr @plotpoints, align 8
  %28 = load i64, ptr %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, ptr %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, ptr %29, i32 0, i32 1
  %31 = load double, ptr %30, align 8
  %32 = fsub double %26, %31
  store double %32, ptr %13, align 8
  %33 = load double, ptr %12, align 8
  %34 = load double, ptr %8, align 8
  %35 = fcmp olt double %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %18
  %37 = load double, ptr %12, align 8
  %38 = load double, ptr %8, align 8
  %39 = fneg double %38
  %40 = fcmp ogt double %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load double, ptr %13, align 8
  %43 = load double, ptr %9, align 8
  %44 = fcmp olt double %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load double, ptr %13, align 8
  %47 = load double, ptr %9, align 8
  %48 = fneg double %47
  %49 = fcmp ogt double %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load ptr, ptr %10, align 8
  store double 1.000000e+00, ptr %51, align 8
  br label %59

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %18
  br label %56

56:                                               ; preds = %55
  %57 = load i64, ptr %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, ptr %11, align 8
  br label %14, !llvm.loop !6

59:                                               ; preds = %50, %14
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
