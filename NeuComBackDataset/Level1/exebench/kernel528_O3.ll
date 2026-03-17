; ModuleID = '../benchmarks/fine_grained/exebench/kernel528.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel528.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double, double }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @CalcOrientRestrainInteraction(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, double noundef %2, ptr nocapture noundef readonly byval(%struct.TYPE_5__) align 8 %3, ptr nocapture noundef readonly byval(%struct.TYPE_5__) align 8 %4) local_unnamed_addr #0 {
  %6 = load double, ptr %3, align 8, !tbaa !5
  %7 = load double, ptr %4, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i64 0, i32 1
  %10 = fmul double %2, 5.000000e-01
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 2
  %12 = load <2 x double>, ptr %8, align 8, !tbaa !10
  %13 = load <2 x double>, ptr %9, align 8, !tbaa !10
  %14 = extractelement <2 x double> %13, i64 0
  %15 = extractelement <2 x double> %12, i64 0
  %16 = fmul <2 x double> %12, %13
  %17 = extractelement <2 x double> %16, i64 0
  %18 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %17)
  %19 = extractelement <2 x double> %13, i64 1
  %20 = extractelement <2 x double> %12, i64 1
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %19, double %18)
  %22 = fadd double %21, -1.000000e+00
  %23 = fmul double %22, %22
  %24 = fmul double %10, %23
  store double %24, ptr %0, align 8, !tbaa !10
  %25 = insertelement <2 x double> %13, double %7, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %27 = fneg <2 x double> %26
  %28 = fmul <2 x double> %12, %27
  %29 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %30 = insertelement <2 x double> %29, double %6, i64 1
  %31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %30, <2 x double> %28)
  %32 = fneg double %14
  %33 = fmul double %6, %32
  %34 = tail call double @llvm.fmuladd.f64(double %7, double %15, double %33)
  %35 = fsub double 1.000000e+00, %21
  %36 = fmul double %35, %2
  %37 = insertelement <2 x double> poison, double %36, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x double> %31, %38
  store <2 x double> %39, ptr %1, align 8, !tbaa !10
  %40 = fmul double %34, %36
  store double %40, ptr %11, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_5__", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !7, i64 16}
