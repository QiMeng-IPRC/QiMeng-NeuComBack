; ModuleID = '../benchmarks/fine_grained/exebench/kernel202.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel202.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dispKp = dso_local global float 0.000000e+00, align 4
@dispKi = dso_local global float 0.000000e+00, align 4
@dispKd = dso_local global float 0.000000e+00, align 4
@SampleTime = dso_local global i64 0, align 8
@kp = dso_local global float 0.000000e+00, align 4
@ki = dso_local global float 0.000000e+00, align 4
@kd = dso_local global float 0.000000e+00, align 4
@controllerDirection = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PIDSetTunings(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, ptr %4, align 4
  store float %1, ptr %5, align 4
  store float %2, ptr %6, align 4
  %8 = load float, ptr %4, align 4
  %9 = fcmp olt float %8, 0.000000e+00
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load float, ptr %5, align 4
  %12 = fcmp olt float %11, 0.000000e+00
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load float, ptr %6, align 4
  %15 = fcmp olt float %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  br label %40

17:                                               ; preds = %13
  %18 = load float, ptr %4, align 4
  store float %18, ptr @dispKp, align 4
  %19 = load float, ptr %5, align 4
  store float %19, ptr @dispKi, align 4
  %20 = load float, ptr %6, align 4
  store float %20, ptr @dispKd, align 4
  %21 = load i64, ptr @SampleTime, align 8
  %22 = sitofp i64 %21 to float
  %23 = fdiv float %22, 1.000000e+03
  store float %23, ptr %7, align 4
  %24 = load float, ptr %4, align 4
  store float %24, ptr @kp, align 4
  %25 = load float, ptr %5, align 4
  %26 = load float, ptr %7, align 4
  %27 = fmul float %25, %26
  store float %27, ptr @ki, align 4
  %28 = load float, ptr %6, align 4
  %29 = load float, ptr %7, align 4
  %30 = fdiv float %28, %29
  store float %30, ptr @kd, align 4
  %31 = load i32, ptr @controllerDirection, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load float, ptr @kp, align 4
  %35 = fsub float 0.000000e+00, %34
  store float %35, ptr @kp, align 4
  %36 = load float, ptr @ki, align 4
  %37 = fsub float 0.000000e+00, %36
  store float %37, ptr @ki, align 4
  %38 = load float, ptr @kd, align 4
  %39 = fsub float 0.000000e+00, %38
  store float %39, ptr @kd, align 4
  br label %40

40:                                               ; preds = %16, %33, %17
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
