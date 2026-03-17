; ModuleID = '../benchmarks/fine_grained/exebench/kernel496.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel496.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@erand.im = internal global i32 6075, align 4
@erand.ia = internal global i32 106, align 4
@erand.ic = internal global i32 1283, align 4
@rand_state = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @erand() #0 {
  %1 = load i32, ptr @rand_state, align 4
  %2 = load i32, ptr @erand.ia, align 4
  %3 = mul nsw i32 %1, %2
  %4 = load i32, ptr @erand.ic, align 4
  %5 = add nsw i32 %3, %4
  %6 = load i32, ptr @erand.im, align 4
  %7 = srem i32 %5, %6
  store i32 %7, ptr @rand_state, align 4
  %8 = load i32, ptr @rand_state, align 4
  %9 = sitofp i32 %8 to float
  %10 = load i32, ptr @erand.im, align 4
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %9, %11
  ret float %12
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
