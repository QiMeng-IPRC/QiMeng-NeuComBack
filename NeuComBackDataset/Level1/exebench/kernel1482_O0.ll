; ModuleID = '../benchmarks/fine_grained/exebench/kernel1482.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1482.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bezier_t = type { double, double, double, double, double, double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deltaBRZ(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store ptr %0, ptr %5, align 8
  store float %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %13 = load float, ptr %6, align 4
  %14 = call float @llvm.fmuladd.f32(float 6.000000e+00, float %13, float -3.000000e+00)
  %15 = load float, ptr %6, align 4
  %16 = fmul float 3.000000e+00, %15
  %17 = load float, ptr %6, align 4
  %18 = fneg float %16
  %19 = call float @llvm.fmuladd.f32(float %18, float %17, float %14)
  %20 = fpext float %19 to double
  store double %20, ptr %9, align 8
  %21 = load float, ptr %6, align 4
  %22 = call float @llvm.fmuladd.f32(float -1.200000e+01, float %21, float 3.000000e+00)
  %23 = load float, ptr %6, align 4
  %24 = fmul float 9.000000e+00, %23
  %25 = load float, ptr %6, align 4
  %26 = call float @llvm.fmuladd.f32(float %24, float %25, float %22)
  %27 = fpext float %26 to double
  store double %27, ptr %10, align 8
  %28 = load float, ptr %6, align 4
  %29 = load float, ptr %6, align 4
  %30 = fmul float 9.000000e+00, %29
  %31 = load float, ptr %6, align 4
  %32 = fmul float %30, %31
  %33 = fneg float %32
  %34 = call float @llvm.fmuladd.f32(float 6.000000e+00, float %28, float %33)
  %35 = fpext float %34 to double
  store double %35, ptr %11, align 8
  %36 = load float, ptr %6, align 4
  %37 = fmul float 3.000000e+00, %36
  %38 = load float, ptr %6, align 4
  %39 = fmul float %37, %38
  %40 = fpext float %39 to double
  store double %40, ptr %12, align 8
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %struct.bezier_t, ptr %41, i32 0, i32 0
  %43 = load double, ptr %42, align 8
  %44 = load double, ptr %9, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.bezier_t, ptr %45, i32 0, i32 1
  %47 = load double, ptr %46, align 8
  %48 = load double, ptr %10, align 8
  %49 = fmul double %47, %48
  %50 = call double @llvm.fmuladd.f64(double %43, double %44, double %49)
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds %struct.bezier_t, ptr %51, i32 0, i32 2
  %53 = load double, ptr %52, align 8
  %54 = load double, ptr %11, align 8
  %55 = call double @llvm.fmuladd.f64(double %53, double %54, double %50)
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.bezier_t, ptr %56, i32 0, i32 3
  %58 = load double, ptr %57, align 8
  %59 = load double, ptr %12, align 8
  %60 = call double @llvm.fmuladd.f64(double %58, double %59, double %55)
  %61 = fptrunc double %60 to float
  %62 = load ptr, ptr %7, align 8
  store float %61, ptr %62, align 4
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds %struct.bezier_t, ptr %63, i32 0, i32 4
  %65 = load double, ptr %64, align 8
  %66 = load double, ptr %9, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.bezier_t, ptr %67, i32 0, i32 5
  %69 = load double, ptr %68, align 8
  %70 = load double, ptr %10, align 8
  %71 = fmul double %69, %70
  %72 = call double @llvm.fmuladd.f64(double %65, double %66, double %71)
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds %struct.bezier_t, ptr %73, i32 0, i32 6
  %75 = load double, ptr %74, align 8
  %76 = load double, ptr %11, align 8
  %77 = call double @llvm.fmuladd.f64(double %75, double %76, double %72)
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds %struct.bezier_t, ptr %78, i32 0, i32 7
  %80 = load double, ptr %79, align 8
  %81 = load double, ptr %12, align 8
  %82 = call double @llvm.fmuladd.f64(double %80, double %81, double %77)
  %83 = fptrunc double %82 to float
  %84 = load ptr, ptr %8, align 8
  store float %83, ptr %84, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

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
