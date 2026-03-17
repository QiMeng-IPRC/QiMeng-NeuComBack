; ModuleID = '../benchmarks/fine_grained/exebench/kernel519.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, double, double, double, double }

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @gs_matrix_invert(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load double, ptr %0, align 8, !tbaa !5
  %4 = fcmp oeq double %3, 0.000000e+00
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !10
  %7 = fcmp oeq double %6, 0.000000e+00
  %8 = select i1 %4, i1 %7, i1 false
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 2
  %10 = load double, ptr %9, align 8, !tbaa !11
  br i1 %8, label %11, label %33

11:                                               ; preds = %2
  %12 = fcmp oeq double %10, 0.000000e+00
  br i1 %12, label %69, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 3
  %15 = load double, ptr %14, align 8, !tbaa !12
  %16 = fcmp oeq double %15, 0.000000e+00
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  %18 = insertelement <2 x double> poison, double %10, i64 0
  %19 = insertelement <2 x double> %18, double %15, i64 1
  %20 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %19
  %21 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2
  %22 = extractelement <2 x double> %20, i64 0
  %23 = fneg double %22
  %24 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 4
  %25 = load double, ptr %24, align 8, !tbaa !13
  %26 = fmul double %25, %23
  %27 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 4
  store double %26, ptr %27, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store <2 x double> %20, ptr %21, align 8, !tbaa !14
  %28 = extractelement <2 x double> %20, i64 1
  %29 = fneg double %28
  %30 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 5
  %31 = load double, ptr %30, align 8, !tbaa !15
  %32 = fmul double %31, %29
  br label %66

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 3
  %35 = load double, ptr %34, align 8, !tbaa !12
  %36 = fneg double %3
  %37 = fmul double %6, %36
  %38 = tail call double @llvm.fmuladd.f64(double %10, double %35, double %37)
  %39 = fcmp oeq double %38, 0.000000e+00
  br i1 %39, label %69, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 4
  %42 = load double, ptr %41, align 8, !tbaa !13
  %43 = insertelement <2 x double> poison, double %35, i64 0
  %44 = insertelement <2 x double> %43, double %10, i64 1
  %45 = insertelement <2 x double> poison, double %38, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = fdiv <2 x double> %44, %46
  %48 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 2
  %49 = fneg double %6
  %50 = insertelement <2 x double> poison, double %36, i64 0
  %51 = insertelement <2 x double> %50, double %49, i64 1
  %52 = fdiv <2 x double> %51, %46
  store <2 x double> %52, ptr %1, align 8, !tbaa !14
  store <2 x double> %47, ptr %48, align 8, !tbaa !14
  %53 = getelementptr inbounds %struct.TYPE_4__, ptr %0, i64 0, i32 5
  %54 = load double, ptr %53, align 8, !tbaa !15
  %55 = extractelement <2 x double> %52, i64 1
  %56 = fmul double %55, %54
  %57 = extractelement <2 x double> %47, i64 0
  %58 = tail call double @llvm.fmuladd.f64(double %42, double %57, double %56)
  %59 = fneg double %58
  %60 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 4
  store double %59, ptr %60, align 8, !tbaa !13
  %61 = extractelement <2 x double> %47, i64 1
  %62 = fmul double %61, %54
  %63 = extractelement <2 x double> %52, i64 0
  %64 = tail call double @llvm.fmuladd.f64(double %42, double %63, double %62)
  %65 = fneg double %64
  br label %66

66:                                               ; preds = %40, %17
  %67 = phi double [ %32, %17 ], [ %65, %40 ]
  %68 = getelementptr inbounds %struct.TYPE_4__, ptr %1, i64 0, i32 5
  store double %67, ptr %68, align 8, !tbaa !15
  br label %69

69:                                               ; preds = %66, %33, %11, %13
  %70 = phi i32 [ -23, %13 ], [ -23, %11 ], [ -23, %33 ], [ 0, %66 ]
  ret i32 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_4__", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 24}
!13 = !{!6, !7, i64 32}
!14 = !{!7, !7, i64 0}
!15 = !{!6, !7, i64 40}
