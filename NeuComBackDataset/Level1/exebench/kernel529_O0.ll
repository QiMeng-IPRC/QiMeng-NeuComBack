; ModuleID = '../benchmarks/fine_grained/exebench/kernel529.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel529.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double, float }

@odo = dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@motionState = dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @get_vd() #0 {
  %1 = alloca float, align 4
  %2 = load double, ptr @odo, align 8
  %3 = fmul double %2, 5.000000e-01
  %4 = load double, ptr @motionState, align 8
  %5 = fmul double %3, %4
  %6 = fptrunc double %5 to float
  store float %6, ptr %1, align 4
  %7 = load float, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @motionState, i32 0, i32 1), align 8
  %8 = load float, ptr %1, align 4
  %9 = fadd float %7, %8
  ret float %9
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
