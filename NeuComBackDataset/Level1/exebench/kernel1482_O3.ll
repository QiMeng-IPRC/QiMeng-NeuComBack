; ModuleID = '../benchmarks/fine_grained/exebench/kernel1482.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1482.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bezier_t = type { double, double, double, double, double, double, double, double }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @deltaBRZ(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call float @llvm.fmuladd.f32(float %1, float 6.000000e+00, float -3.000000e+00)
  %6 = fmul float %1, 3.000000e+00
  %7 = fneg float %6
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %1, float %5)
  %9 = fpext float %8 to double
  %10 = tail call float @llvm.fmuladd.f32(float %1, float -1.200000e+01, float 3.000000e+00)
  %11 = fmul float %1, 9.000000e+00
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %1, float %10)
  %13 = fpext float %12 to double
  %14 = fneg float %11
  %15 = fmul float %14, %1
  %16 = tail call float @llvm.fmuladd.f32(float %1, float 6.000000e+00, float %15)
  %17 = fpext float %16 to double
  %18 = fmul float %6, %1
  %19 = fpext float %18 to double
  %20 = load double, ptr %0, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.bezier_t, ptr %0, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !10
  %23 = fmul double %22, %13
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %9, double %23)
  %25 = getelementptr inbounds %struct.bezier_t, ptr %0, i64 0, i32 2
  %26 = load double, ptr %25, align 8, !tbaa !11
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %17, double %24)
  %28 = getelementptr inbounds %struct.bezier_t, ptr %0, i64 0, i32 3
  %29 = load double, ptr %28, align 8, !tbaa !12
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %19, double %27)
  %31 = fptrunc double %30 to float
  store float %31, ptr %2, align 4, !tbaa !13
  %32 = getelementptr inbounds %struct.bezier_t, ptr %0, i64 0, i32 4
  %33 = load double, ptr %32, align 8, !tbaa !15
  %34 = getelementptr inbounds %struct.bezier_t, ptr %0, i64 0, i32 5
  %35 = load double, ptr %34, align 8, !tbaa !16
  %36 = fmul double %35, %13
  %37 = tail call double @llvm.fmuladd.f64(double %33, double %9, double %36)
  %38 = getelementptr inbounds %struct.bezier_t, ptr %0, i64 0, i32 6
  %39 = load double, ptr %38, align 8, !tbaa !17
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %17, double %37)
  %41 = getelementptr inbounds %struct.bezier_t, ptr %0, i64 0, i32 7
  %42 = load double, ptr %41, align 8, !tbaa !18
  %43 = tail call double @llvm.fmuladd.f64(double %42, double %19, double %40)
  %44 = fptrunc double %43 to float
  store float %44, ptr %3, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"bezier_t", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 24}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 40}
!17 = !{!6, !7, i64 48}
!18 = !{!6, !7, i64 56}
