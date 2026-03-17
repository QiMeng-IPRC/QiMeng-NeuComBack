; ModuleID = '../benchmarks/fine_grained/exebench/kernel889.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel889.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @righttensor(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  store double %0, ptr %5, align 8
  store double %1, ptr %6, align 8
  store double %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = load double, ptr %5, align 8
  %11 = fadd double %10, 1.000000e+00
  store double %11, ptr %9, align 8
  %12 = load double, ptr %9, align 8
  %13 = fcmp olt double %12, 1.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store double 1.000000e+00, ptr %9, align 8
  br label %15

15:                                               ; preds = %14, %4
  %16 = load double, ptr %9, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds [3 x double], ptr %17, i64 0
  %19 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 0
  store double %16, ptr %19, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = getelementptr inbounds [3 x double], ptr %20, i64 0
  %22 = getelementptr inbounds [3 x double], ptr %21, i64 0, i64 1
  store double 0.000000e+00, ptr %22, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds [3 x double], ptr %23, i64 0
  %25 = getelementptr inbounds [3 x double], ptr %24, i64 0, i64 2
  store double 0.000000e+00, ptr %25, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = getelementptr inbounds [3 x double], ptr %26, i64 1
  %28 = getelementptr inbounds [3 x double], ptr %27, i64 0, i64 0
  store double 0.000000e+00, ptr %28, align 8
  %29 = load double, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds [3 x double], ptr %30, i64 1
  %32 = getelementptr inbounds [3 x double], ptr %31, i64 0, i64 1
  store double %29, ptr %32, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr inbounds [3 x double], ptr %33, i64 1
  %35 = getelementptr inbounds [3 x double], ptr %34, i64 0, i64 2
  store double 0.000000e+00, ptr %35, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds [3 x double], ptr %36, i64 2
  %38 = getelementptr inbounds [3 x double], ptr %37, i64 0, i64 0
  store double 0.000000e+00, ptr %38, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds [3 x double], ptr %39, i64 2
  %41 = getelementptr inbounds [3 x double], ptr %40, i64 0, i64 1
  store double 0.000000e+00, ptr %41, align 8
  %42 = load double, ptr %9, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds [3 x double], ptr %43, i64 2
  %45 = getelementptr inbounds [3 x double], ptr %44, i64 0, i64 2
  store double %42, ptr %45, align 8
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
