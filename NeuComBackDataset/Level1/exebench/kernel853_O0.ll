; ModuleID = '../benchmarks/fine_grained/exebench/kernel853.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel853.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = dso_local global float 0.000000e+00, align 4
@twopi = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @makeAnglePosNeg(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, ptr %2, align 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = load float, ptr %2, align 4
  %5 = load float, ptr @pi, align 4
  %6 = fcmp ogt float %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i64, ptr @twopi, align 8
  %9 = sitofp i64 %8 to float
  %10 = load float, ptr %2, align 4
  %11 = fsub float %10, %9
  store float %11, ptr %2, align 4
  br label %3, !llvm.loop !6

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %18, %12
  %14 = load float, ptr %2, align 4
  %15 = load float, ptr @pi, align 4
  %16 = fneg float %15
  %17 = fcmp olt float %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i64, ptr @twopi, align 8
  %20 = sitofp i64 %19 to float
  %21 = load float, ptr %2, align 4
  %22 = fadd float %21, %20
  store float %22, ptr %2, align 4
  br label %13, !llvm.loop !8

23:                                               ; preds = %13
  %24 = load float, ptr %2, align 4
  ret float %24
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
!8 = distinct !{!8, !7}
