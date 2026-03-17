; ModuleID = '../benchmarks/fine_grained/exebench/kernel1540.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phi = dso_local global float 0.000000e+00, align 4
@theta = dso_local global float 0.000000e+00, align 4
@psi = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KALMANFILTER_getData(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load float, ptr @phi, align 4
  %8 = load ptr, ptr %4, align 8
  store float %7, ptr %8, align 4
  %9 = load float, ptr @theta, align 4
  %10 = load ptr, ptr %5, align 8
  store float %9, ptr %10, align 4
  %11 = load float, ptr @psi, align 4
  %12 = load ptr, ptr %6, align 8
  store float %11, ptr %12, align 4
  ret i32 1
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
