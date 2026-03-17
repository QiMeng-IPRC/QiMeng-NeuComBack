; ModuleID = '../benchmarks/fine_grained/exebench/kernel631.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel631.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, double, double, double, double }

@MyGraph = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scale3d(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store double %0, ptr %7, align 8
  store double %1, ptr %8, align 8
  store double %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %13 = load double, ptr %7, align 8
  %14 = load ptr, ptr @MyGraph, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %14, i32 0, i32 0
  %16 = load double, ptr %15, align 8
  %17 = fsub double %13, %16
  %18 = load ptr, ptr @MyGraph, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, ptr %18, i32 0, i32 1
  %20 = load double, ptr %19, align 8
  %21 = fmul double %17, %20
  %22 = fptrunc double %21 to float
  %23 = load ptr, ptr %10, align 8
  store float %22, ptr %23, align 4
  %24 = load double, ptr %8, align 8
  %25 = load ptr, ptr @MyGraph, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i32 0, i32 2
  %27 = load double, ptr %26, align 8
  %28 = fsub double %24, %27
  %29 = load ptr, ptr @MyGraph, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, ptr %29, i32 0, i32 3
  %31 = load double, ptr %30, align 8
  %32 = fmul double %28, %31
  %33 = fptrunc double %32 to float
  %34 = load ptr, ptr %11, align 8
  store float %33, ptr %34, align 4
  %35 = load double, ptr %9, align 8
  %36 = load ptr, ptr @MyGraph, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, ptr %36, i32 0, i32 4
  %38 = load double, ptr %37, align 8
  %39 = fsub double %35, %38
  %40 = load ptr, ptr @MyGraph, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, ptr %40, i32 0, i32 5
  %42 = load double, ptr %41, align 8
  %43 = fmul double %39, %42
  %44 = fptrunc double %43 to float
  %45 = load ptr, ptr %12, align 8
  store float %44, ptr %45, align 4
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
