; ModuleID = '../benchmarks/fine_grained/exebench/kernel97.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y_bias = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@Y_angle = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@YP_11 = dso_local local_unnamed_addr global i32 0, align 4
@YP_10 = dso_local local_unnamed_addr global i32 0, align 4
@YP_01 = dso_local local_unnamed_addr global i32 0, align 4
@YQ_angle = dso_local local_unnamed_addr global i64 0, align 8
@YP_00 = dso_local local_unnamed_addr global i32 0, align 4
@YQ_bias = dso_local local_unnamed_addr global i32 0, align 4
@YR_measured = dso_local local_unnamed_addr global i32 0, align 4
@YS = dso_local local_unnamed_addr global i32 0, align 4
@YK_0 = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@YK_1 = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@Yy = dso_local local_unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @kalmanFilterY(float noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sitofp i32 %2 to float
  %5 = load float, ptr @Y_bias, align 4, !tbaa !5
  %6 = fsub float %1, %5
  %7 = load float, ptr @Y_angle, align 4, !tbaa !5
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %6, float %7)
  %9 = load i32, ptr @YP_11, align 4, !tbaa !9
  %10 = mul i32 %9, %2
  %11 = load i32, ptr @YP_10, align 4, !tbaa !9
  %12 = load i32, ptr @YP_01, align 4, !tbaa !9
  %13 = add i32 %11, %12
  %14 = sub i32 %10, %13
  %15 = mul nsw i32 %14, %2
  %16 = load i64, ptr @YQ_angle, align 8, !tbaa !11
  %17 = load i32, ptr @YP_00, align 4, !tbaa !9
  %18 = trunc i64 %16 to i32
  %19 = add i32 %15, %18
  %20 = add i32 %19, %17
  %21 = sub i32 %12, %10
  %22 = sub i32 %11, %10
  %23 = load i32, ptr @YQ_bias, align 4, !tbaa !9
  %24 = add nsw i32 %23, %9
  %25 = load i32, ptr @YR_measured, align 4, !tbaa !9
  %26 = add nsw i32 %25, %20
  store i32 %26, ptr @YS, align 4, !tbaa !9
  %27 = sdiv i32 %20, %26
  %28 = sitofp i32 %27 to float
  store float %28, ptr @YK_0, align 4, !tbaa !5
  %29 = sdiv i32 %22, %26
  %30 = sitofp i32 %29 to float
  store float %30, ptr @YK_1, align 4, !tbaa !5
  %31 = fsub float %0, %8
  store float %31, ptr @Yy, align 4, !tbaa !5
  %32 = tail call float @llvm.fmuladd.f32(float %28, float %31, float %8)
  store float %32, ptr @Y_angle, align 4, !tbaa !5
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %31, float %5)
  store float %33, ptr @Y_bias, align 4, !tbaa !5
  %34 = sitofp i32 %20 to float
  %35 = fneg float %28
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %34, float %34)
  %37 = fptosi float %36 to i32
  store i32 %37, ptr @YP_00, align 4, !tbaa !9
  %38 = sitofp i32 %21 to float
  %39 = tail call float @llvm.fmuladd.f32(float %35, float %38, float %38)
  %40 = fptosi float %39 to i32
  store i32 %40, ptr @YP_01, align 4, !tbaa !9
  %41 = sitofp i32 %37 to float
  %42 = sitofp i32 %22 to float
  %43 = fneg float %30
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %41, float %42)
  %45 = fptosi float %44 to i32
  store i32 %45, ptr @YP_10, align 4, !tbaa !9
  %46 = sitofp i32 %40 to float
  %47 = sitofp i32 %24 to float
  %48 = tail call float @llvm.fmuladd.f32(float %43, float %46, float %47)
  %49 = fptosi float %48 to i32
  store i32 %49, ptr @YP_11, align 4, !tbaa !9
  ret float %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
