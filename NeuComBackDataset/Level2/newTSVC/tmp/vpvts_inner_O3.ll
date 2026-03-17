; ModuleID = 'tmp/vpvts_inner.c'
source_filename = "tmp/vpvts_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @vpvts_inner(float noundef %0) local_unnamed_addr #0 {
  %2 = insertelement <4 x float> poison, float %0, i64 0
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = insertelement <4 x float> poison, float %0, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  br label %6

6:                                                ; preds = %23, %1
  %7 = phi i32 [ 0, %1 ], [ %25, %23 ]
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i64 [ 0, %6 ], [ %20, %8 ]
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %11 = load <4 x float>, ptr %10, align 32, !tbaa !5
  %12 = getelementptr inbounds float, ptr %10, i64 4
  %13 = load <4 x float>, ptr %12, align 16, !tbaa !5
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %15 = load <4 x float>, ptr %14, align 32, !tbaa !5
  %16 = getelementptr inbounds float, ptr %14, i64 4
  %17 = load <4 x float>, ptr %16, align 16, !tbaa !5
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %3, <4 x float> %15)
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %5, <4 x float> %17)
  store <4 x float> %18, ptr %14, align 32, !tbaa !5
  store <4 x float> %19, ptr %16, align 16, !tbaa !5
  %20 = add nuw i64 %9, 8
  %21 = icmp eq i64 %20, 32000
  br i1 %21, label %23, label %8, !llvm.loop !9

22:                                               ; preds = %23
  ret void

23:                                               ; preds = %8
  %24 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %25 = add nuw nsw i32 %7, 1
  %26 = icmp eq i32 %25, 100000
  br i1 %26, label %22, label %6, !llvm.loop !13
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
