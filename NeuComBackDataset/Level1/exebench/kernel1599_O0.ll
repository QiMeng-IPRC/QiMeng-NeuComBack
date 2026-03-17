; ModuleID = '../benchmarks/fine_grained/exebench/kernel1599.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @filter_DEMA(ptr noundef %0, float noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca float, align 4
  store ptr %0, ptr %3, align 8
  store float %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 1
  %7 = load float, ptr %6, align 4
  %8 = load float, ptr %4, align 4
  %9 = fmul float %7, %8
  %10 = fpext float %9 to double
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i32 0, i32 1
  %13 = load float, ptr %12, align 4
  %14 = fpext float %13 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 2
  %18 = load double, ptr %17, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 3
  %21 = load double, ptr %20, align 8
  %22 = fadd double %18, %21
  %23 = call double @llvm.fmuladd.f64(double %15, double %22, double %10)
  %24 = fptrunc double %23 to float
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %25, i32 0, i32 0
  store float %24, ptr %26, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, ptr %27, i32 0, i32 5
  %29 = load double, ptr %28, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, ptr %30, i32 0, i32 0
  %32 = load float, ptr %31, align 8
  %33 = fpext float %32 to double
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %34, i32 0, i32 2
  %36 = load double, ptr %35, align 8
  %37 = fsub double %33, %36
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, ptr %38, i32 0, i32 5
  %40 = load double, ptr %39, align 8
  %41 = fsub double 1.000000e+00, %40
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %42, i32 0, i32 3
  %44 = load double, ptr %43, align 8
  %45 = fmul double %41, %44
  %46 = call double @llvm.fmuladd.f64(double %29, double %37, double %45)
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, ptr %47, i32 0, i32 4
  store double %46, ptr %48, align 8
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, ptr %49, i32 0, i32 0
  %51 = load float, ptr %50, align 8
  %52 = fpext float %51 to double
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, ptr %53, i32 0, i32 2
  store double %52, ptr %54, align 8
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %55, i32 0, i32 4
  %57 = load double, ptr %56, align 8
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, ptr %58, i32 0, i32 3
  store double %57, ptr %59, align 8
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, ptr %60, i32 0, i32 0
  %62 = load float, ptr %61, align 8
  %63 = fpext float %62 to double
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, ptr %64, i32 0, i32 4
  %66 = load double, ptr %65, align 8
  %67 = fadd double %63, %66
  %68 = fptrunc double %67 to float
  ret float %68
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
