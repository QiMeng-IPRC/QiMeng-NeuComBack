; ModuleID = '../benchmarks/fine_grained/exebench/kernel528.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel528.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalcOrientRestrainInteraction(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef byval(%struct.TYPE_5__) align 8 %3, ptr noundef byval(%struct.TYPE_5__) align 8 %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store double %2, ptr %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 0
  %11 = load double, ptr %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %13 = load double, ptr %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 1
  %17 = load double, ptr %16, align 8
  %18 = fmul double %15, %17
  %19 = call double @llvm.fmuladd.f64(double %11, double %13, double %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 2
  %21 = load double, ptr %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 2
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fmuladd.f64(double %21, double %23, double %19)
  store double %24, ptr %9, align 8
  %25 = load double, ptr %8, align 8
  %26 = fmul double 5.000000e-01, %25
  %27 = load double, ptr %9, align 8
  %28 = fsub double %27, 1.000000e+00
  %29 = load double, ptr %9, align 8
  %30 = fsub double %29, 1.000000e+00
  %31 = fmul double %28, %30
  %32 = fmul double %26, %31
  %33 = load ptr, ptr %6, align 8
  store double %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 1
  %35 = load double, ptr %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 2
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 2
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 1
  %41 = load double, ptr %40, align 8
  %42 = fmul double %39, %41
  %43 = fneg double %42
  %44 = call double @llvm.fmuladd.f64(double %35, double %37, double %43)
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, ptr %45, i32 0, i32 0
  store double %44, ptr %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 2
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 0
  %50 = load double, ptr %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %52 = load double, ptr %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 2
  %54 = load double, ptr %53, align 8
  %55 = fmul double %52, %54
  %56 = fneg double %55
  %57 = call double @llvm.fmuladd.f64(double %48, double %50, double %56)
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, ptr %58, i32 0, i32 1
  store double %57, ptr %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %61 = load double, ptr %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 1
  %63 = load double, ptr %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 1
  %65 = load double, ptr %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 0
  %67 = load double, ptr %66, align 8
  %68 = fmul double %65, %67
  %69 = fneg double %68
  %70 = call double @llvm.fmuladd.f64(double %61, double %63, double %69)
  %71 = load ptr, ptr %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, ptr %71, i32 0, i32 2
  store double %70, ptr %72, align 8
  %73 = load double, ptr %8, align 8
  %74 = load double, ptr %9, align 8
  %75 = fsub double 1.000000e+00, %74
  %76 = fmul double %73, %75
  %77 = load ptr, ptr %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, ptr %77, i32 0, i32 0
  %79 = load double, ptr %78, align 8
  %80 = fmul double %79, %76
  store double %80, ptr %78, align 8
  %81 = load double, ptr %8, align 8
  %82 = load double, ptr %9, align 8
  %83 = fsub double 1.000000e+00, %82
  %84 = fmul double %81, %83
  %85 = load ptr, ptr %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, ptr %85, i32 0, i32 1
  %87 = load double, ptr %86, align 8
  %88 = fmul double %87, %84
  store double %88, ptr %86, align 8
  %89 = load double, ptr %8, align 8
  %90 = load double, ptr %9, align 8
  %91 = fsub double 1.000000e+00, %90
  %92 = fmul double %89, %91
  %93 = load ptr, ptr %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, ptr %93, i32 0, i32 2
  %95 = load double, ptr %94, align 8
  %96 = fmul double %95, %92
  store double %96, ptr %94, align 8
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
