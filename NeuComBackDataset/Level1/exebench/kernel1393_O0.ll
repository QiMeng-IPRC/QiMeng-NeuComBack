; ModuleID = '../benchmarks/fine_grained/exebench/kernel1393.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1393.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { double, double, double }
%struct.TYPE_5__ = type { double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xrot(ptr noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store ptr %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  store double %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 48, i1 false)
  %9 = load double, ptr %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %10, i32 0, i32 0
  %12 = load double, ptr %11, align 8
  %13 = load double, ptr %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %14, i32 0, i32 0
  %16 = load double, ptr %15, align 8
  %17 = fmul double %13, %16
  %18 = fneg double %17
  %19 = call double @llvm.fmuladd.f64(double %9, double %12, double %18)
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 0
  store double %19, ptr %22, align 8
  %23 = load double, ptr %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, ptr %24, i32 0, i32 1
  %26 = load double, ptr %25, align 8
  %27 = load double, ptr %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, ptr %28, i32 0, i32 1
  %30 = load double, ptr %29, align 8
  %31 = fmul double %27, %30
  %32 = fneg double %31
  %33 = call double @llvm.fmuladd.f64(double %23, double %26, double %32)
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, ptr %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %35, i32 0, i32 1
  store double %33, ptr %36, align 8
  %37 = load double, ptr %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, ptr %38, i32 0, i32 2
  %40 = load double, ptr %39, align 8
  %41 = load double, ptr %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, ptr %42, i32 0, i32 2
  %44 = load double, ptr %43, align 8
  %45 = fmul double %41, %44
  %46 = fneg double %45
  %47 = call double @llvm.fmuladd.f64(double %37, double %40, double %46)
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, ptr %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, ptr %49, i32 0, i32 2
  store double %47, ptr %50, align 8
  %51 = load double, ptr %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, ptr %52, i32 0, i32 0
  %54 = load double, ptr %53, align 8
  %55 = load double, ptr %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, ptr %56, i32 0, i32 0
  %58 = load double, ptr %57, align 8
  %59 = fmul double %55, %58
  %60 = call double @llvm.fmuladd.f64(double %51, double %54, double %59)
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, ptr %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, ptr %62, i32 0, i32 0
  store double %60, ptr %63, align 8
  %64 = load double, ptr %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, ptr %65, i32 0, i32 1
  %67 = load double, ptr %66, align 8
  %68 = load double, ptr %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, ptr %69, i32 0, i32 1
  %71 = load double, ptr %70, align 8
  %72 = fmul double %68, %71
  %73 = call double @llvm.fmuladd.f64(double %64, double %67, double %72)
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, ptr %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, ptr %75, i32 0, i32 1
  store double %73, ptr %76, align 8
  %77 = load double, ptr %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, ptr %78, i32 0, i32 2
  %80 = load double, ptr %79, align 8
  %81 = load double, ptr %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, ptr %82, i32 0, i32 2
  %84 = load double, ptr %83, align 8
  %85 = fmul double %81, %84
  %86 = call double @llvm.fmuladd.f64(double %77, double %80, double %85)
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, ptr %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, ptr %88, i32 0, i32 2
  store double %86, ptr %89, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
