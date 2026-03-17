; ModuleID = '../benchmarks/fine_grained/exebench/kernel821.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel821.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_stats(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.stats, ptr %6, i32 0, i32 0
  %8 = load double, ptr %7, align 8
  %9 = fadd double %8, 1.000000e+00
  store double %9, ptr %7, align 8
  %10 = load double, ptr %4, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.stats, ptr %11, i32 0, i32 1
  %13 = load double, ptr %12, align 8
  %14 = fsub double %10, %13
  store double %14, ptr %5, align 8
  %15 = load double, ptr %5, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.stats, ptr %16, i32 0, i32 0
  %18 = load double, ptr %17, align 8
  %19 = fdiv double %15, %18
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.stats, ptr %20, i32 0, i32 1
  %22 = load double, ptr %21, align 8
  %23 = fadd double %22, %19
  store double %23, ptr %21, align 8
  %24 = load double, ptr %5, align 8
  %25 = load double, ptr %4, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.stats, ptr %26, i32 0, i32 1
  %28 = load double, ptr %27, align 8
  %29 = fsub double %25, %28
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.stats, ptr %30, i32 0, i32 2
  %32 = load double, ptr %31, align 8
  %33 = call double @llvm.fmuladd.f64(double %24, double %29, double %32)
  store double %33, ptr %31, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
