; ModuleID = '../benchmarks/fine_grained/exebench/kernel144.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel144.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @map_env_adjust_close_repulsion(ptr noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  store double %2, ptr %6, align 8
  %7 = load double, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %9, i32 0, i32 0
  %11 = load double, ptr %10, align 8
  %12 = fmul double %11, %7
  store double %12, ptr %10, align 8
  %13 = load double, ptr %6, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %15, i32 0, i32 1
  %17 = load double, ptr %16, align 8
  %18 = fmul double %17, %13
  store double %18, ptr %16, align 8
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
