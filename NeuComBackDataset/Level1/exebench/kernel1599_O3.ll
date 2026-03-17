; ModuleID = '../benchmarks/fine_grained/exebench/kernel1599.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, double, double, double, double }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local float @filter_DEMA(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !5
  %5 = fmul float %4, %1
  %6 = fpext float %5 to double
  %7 = fpext float %4 to double
  %8 = fsub double 1.000000e+00, %7
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 2
  %10 = load double, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 3
  %12 = load double, ptr %11, align 8, !tbaa !12
  %13 = fadd double %10, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %13, double %6)
  %15 = fptrunc double %14 to float
  store float %15, ptr %0, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 5
  %17 = load double, ptr %16, align 8, !tbaa !14
  %18 = fpext float %15 to double
  %19 = fsub double %18, %10
  %20 = fsub double 1.000000e+00, %17
  %21 = fmul double %12, %20
  %22 = tail call double @llvm.fmuladd.f64(double %17, double %19, double %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %0, i64 0, i32 4
  store double %22, ptr %23, align 8, !tbaa !15
  store double %18, ptr %9, align 8, !tbaa !11
  store double %22, ptr %11, align 8, !tbaa !12
  %24 = fadd double %22, %18
  %25 = fptrunc double %24 to float
  ret float %25
}

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
!5 = !{!6, !7, i64 4}
!6 = !{!"TYPE_3__", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"double", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!6, !7, i64 0}
!14 = !{!6, !10, i64 32}
!15 = !{!6, !10, i64 24}
