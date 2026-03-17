; ModuleID = '../benchmarks/fine_grained/exebench/kernel1322.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1322.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double }
%struct.TYPE_5__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enesim_line_direction_from(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store double %2, ptr %7, align 8
  store double %3, ptr %8, align 8
  %9 = load double, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %10, i32 0, i32 0
  store double %9, ptr %11, align 8
  %12 = load double, ptr %7, align 8
  %13 = fneg double %12
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %14, i32 0, i32 1
  store double %13, ptr %15, align 8
  %16 = load double, ptr %7, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, ptr %17, i32 0, i32 0
  %19 = load double, ptr %18, align 8
  %20 = load double, ptr %8, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 1
  %23 = load double, ptr %22, align 8
  %24 = fmul double %20, %23
  %25 = fneg double %24
  %26 = call double @llvm.fmuladd.f64(double %16, double %19, double %25)
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, ptr %27, i32 0, i32 2
  store double %26, ptr %28, align 8
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
