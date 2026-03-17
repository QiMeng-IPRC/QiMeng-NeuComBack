; ModuleID = '../benchmarks/fine_grained/exebench/kernel276.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel276.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.duration = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { float, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @duration_elapsed(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.duration, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i32 0, i32 0
  %7 = load float, ptr %6, align 8
  store float %7, ptr %3, align 4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.duration, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, ptr %9, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = sitofp i64 %11 to float
  %13 = fpext float %12 to double
  %14 = fdiv double %13, 1.000000e+06
  %15 = load float, ptr %3, align 4
  %16 = fpext float %15 to double
  %17 = fadd double %16, %14
  %18 = fptrunc double %17 to float
  store float %18, ptr %3, align 4
  %19 = load float, ptr %3, align 4
  ret float %19
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
