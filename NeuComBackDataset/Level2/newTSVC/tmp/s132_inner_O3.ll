; ModuleID = 'tmp/s132_inner.c'
source_filename = "tmp/s132_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s132_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %26
  %2 = phi i32 [ 0, %0 ], [ %49, %26 ]
  %3 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 1), align 4, !tbaa !5
  %4 = insertelement <4 x float> poison, float %3, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = insertelement <4 x float> poison, float %3, i64 0
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %23, %8 ]
  %10 = or i64 %9, 1
  %11 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 %9
  %12 = load <4 x float>, ptr %11, align 32, !tbaa !5
  %13 = getelementptr inbounds float, ptr %11, i64 4
  %14 = load <4 x float>, ptr %13, align 16, !tbaa !5
  %15 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %16 = load <4 x float>, ptr %15, align 4, !tbaa !5
  %17 = getelementptr inbounds float, ptr %15, i64 4
  %18 = load <4 x float>, ptr %17, align 4, !tbaa !5
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %5, <4 x float> %12)
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %7, <4 x float> %14)
  %21 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %10
  store <4 x float> %19, ptr %21, align 4, !tbaa !5
  %22 = getelementptr inbounds float, ptr %21, i64 4
  store <4 x float> %20, ptr %22, align 4, !tbaa !5
  %23 = add nuw i64 %9, 8
  %24 = icmp eq i64 %23, 248
  br i1 %24, label %26, label %8, !llvm.loop !9

25:                                               ; preds = %26
  ret void

26:                                               ; preds = %8
  %27 = load float, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 248), align 32, !tbaa !5
  %28 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 249), align 4, !tbaa !5
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %3, float %27)
  store float %29, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 249), align 4, !tbaa !5
  %30 = load float, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 249), align 4, !tbaa !5
  %31 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 250), align 8, !tbaa !5
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %3, float %30)
  store float %32, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 250), align 8, !tbaa !5
  %33 = load float, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 250), align 8, !tbaa !5
  %34 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 251), align 4, !tbaa !5
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %3, float %33)
  store float %35, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 251), align 4, !tbaa !5
  %36 = load float, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 251), align 4, !tbaa !5
  %37 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 252), align 16, !tbaa !5
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %3, float %36)
  store float %38, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 252), align 16, !tbaa !5
  %39 = load float, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 252), align 16, !tbaa !5
  %40 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 253), align 4, !tbaa !5
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %3, float %39)
  store float %41, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 253), align 4, !tbaa !5
  %42 = load float, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 253), align 4, !tbaa !5
  %43 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 254), align 8, !tbaa !5
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %3, float %42)
  store float %44, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 254), align 8, !tbaa !5
  %45 = load float, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 254), align 8, !tbaa !5
  %46 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 255), align 4, !tbaa !5
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %3, float %45)
  store float %47, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 255), align 4, !tbaa !5
  %48 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #4
  %49 = add nuw nsw i32 %2, 1
  %50 = icmp eq i32 %49, 40000000
  br i1 %50, label %25, label %1, !llvm.loop !13
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
