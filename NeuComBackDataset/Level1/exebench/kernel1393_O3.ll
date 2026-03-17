; ModuleID = '../benchmarks/fine_grained/exebench/kernel1393.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1393.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @xrot(ptr nocapture noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  %5 = load double, ptr %4, align 8, !tbaa.struct !5
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = getelementptr inbounds i8, ptr %0, i64 40
  %9 = load double, ptr %8, align 8, !tbaa.struct !10
  %10 = load <2 x double>, ptr %0, align 8
  %11 = load <2 x double>, ptr %6, align 8
  %12 = extractelement <2 x double> %10, i64 0
  %13 = fneg double %12
  %14 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x double> %14, double %5, i64 1
  %16 = fneg <2 x double> %15
  %17 = insertelement <2 x double> poison, double %2, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x double> %18, %16
  %20 = insertelement <2 x double> poison, double %1, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %23 = insertelement <2 x double> %22, double %9, i64 1
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %23, <2 x double> %19)
  store <2 x double> %24, ptr %7, align 8, !tbaa !6
  %25 = fmul <2 x double> %10, %21
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %11, <2 x double> %25)
  store <2 x double> %26, ptr %0, align 8, !tbaa !6
  %27 = insertelement <2 x double> poison, double %5, i64 0
  %28 = insertelement <2 x double> %27, double %13, i64 1
  %29 = insertelement <2 x double> %20, double %2, i64 1
  %30 = fmul <2 x double> %28, %29
  %31 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %32 = insertelement <2 x double> %22, double %9, i64 0
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> %32, <2 x double> %30)
  store <2 x double> %33, ptr %4, align 8, !tbaa !6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{i64 0, i64 8, !6}
