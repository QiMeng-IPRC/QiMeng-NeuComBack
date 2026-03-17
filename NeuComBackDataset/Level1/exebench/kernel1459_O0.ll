; ModuleID = '../benchmarks/fine_grained/exebench/kernel1459.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1459.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vexRT = dso_local global ptr null, align 8
@JOY_BTN_HITCH_UP = dso_local global i64 0, align 8
@JOY_BTN_HITCH_DOWN = dso_local global i64 0, align 8
@motor = dso_local global ptr null, align 8
@servoHitch = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @runHitch() #0 {
  %1 = alloca float, align 4
  %2 = load ptr, ptr @vexRT, align 8
  %3 = load i64, ptr @JOY_BTN_HITCH_UP, align 8
  %4 = getelementptr inbounds float, ptr %2, i64 %3
  %5 = load float, ptr %4, align 4
  %6 = load ptr, ptr @vexRT, align 8
  %7 = load i64, ptr @JOY_BTN_HITCH_DOWN, align 8
  %8 = getelementptr inbounds float, ptr %6, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fsub float %5, %9
  store float %10, ptr %1, align 4
  %11 = load float, ptr %1, align 4
  %12 = fpext float %11 to double
  %13 = fcmp une double %12, 0.000000e+00
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load float, ptr %1, align 4
  %16 = fmul float %15, 1.280000e+02
  %17 = load ptr, ptr @motor, align 8
  %18 = load i64, ptr @servoHitch, align 8
  %19 = getelementptr inbounds float, ptr %17, i64 %18
  store float %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %14, %0
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
