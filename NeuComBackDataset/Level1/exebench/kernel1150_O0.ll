; ModuleID = '../benchmarks/fine_grained/exebench/kernel1150.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1150.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ferTimerElapsedInSF(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i32 0, i32 0
  %7 = load float, ptr %6, align 8
  %8 = fdiv float %7, 1.000000e+09
  store float %8, ptr %3, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = sitofp i64 %12 to float
  %14 = load float, ptr %3, align 4
  %15 = fadd float %14, %13
  store float %15, ptr %3, align 4
  %16 = load float, ptr %3, align 4
  ret float %16
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
