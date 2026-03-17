; ModuleID = 'tmp/s243_inner.c'
source_filename = "tmp/s243_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s243_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %23, %0
  %2 = phi i32 [ 0, %0 ], [ %49, %23 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %20, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %4
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !5
  %9 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %4
  %10 = load <4 x float>, ptr %9, align 16, !tbaa !5
  %11 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %10, <4 x float> %6)
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  %13 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %4
  %14 = load <4 x float>, ptr %13, align 16, !tbaa !5
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %14, <4 x float> %11)
  store <4 x float> %15, ptr %5, align 16, !tbaa !5
  %16 = or i64 %4, 1
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load <4 x float>, ptr %17, align 4, !tbaa !5
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %10, <4 x float> %15)
  store <4 x float> %19, ptr %12, align 16, !tbaa !5
  %20 = add nuw i64 %4, 4
  %21 = icmp eq i64 %20, 31996
  br i1 %21, label %23, label %3, !llvm.loop !9

22:                                               ; preds = %23
  ret void

23:                                               ; preds = %3
  %24 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31996), align 16, !tbaa !5
  %25 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31996), align 16, !tbaa !5
  %26 = load float, ptr getelementptr inbounds ([32000 x float], ptr @d, i64 0, i64 31996), align 16, !tbaa !5
  %27 = tail call float @llvm.fmuladd.f32(float %25, float %26, float %24)
  %28 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31996), align 16, !tbaa !5
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %28, float %27)
  store float %29, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31996), align 16, !tbaa !5
  %30 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %31 = tail call float @llvm.fmuladd.f32(float %30, float %26, float %29)
  store float %31, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %32 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31997), align 4, !tbaa !5
  %33 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31997), align 4, !tbaa !5
  %34 = load float, ptr getelementptr inbounds ([32000 x float], ptr @d, i64 0, i64 31997), align 4, !tbaa !5
  %35 = tail call float @llvm.fmuladd.f32(float %33, float %34, float %32)
  %36 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31997), align 4, !tbaa !5
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %36, float %35)
  store float %37, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31997), align 4, !tbaa !5
  %38 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %34, float %37)
  store float %39, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %40 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %41 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31998), align 8, !tbaa !5
  %42 = load float, ptr getelementptr inbounds ([32000 x float], ptr @d, i64 0, i64 31998), align 8, !tbaa !5
  %43 = tail call float @llvm.fmuladd.f32(float %41, float %42, float %40)
  %44 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31998), align 8, !tbaa !5
  %45 = tail call float @llvm.fmuladd.f32(float %42, float %44, float %43)
  store float %45, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %46 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999), align 4, !tbaa !5
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %42, float %45)
  store float %47, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %48 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #4
  %49 = add nuw nsw i32 %2, 1
  %50 = icmp eq i32 %49, 100000
  br i1 %50, label %22, label %1, !llvm.loop !13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
