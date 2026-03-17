; ModuleID = 'task_ir_O3/s176_inner_ori.ll'
source_filename = "task_c/s176_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s176_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %25, %0
  %2 = phi i32 [ 0, %0 ], [ %27, %25 ]
  br label %4

3:                                                ; preds = %25
  ret void

4:                                                ; preds = %29, %1
  %5 = phi i64 [ 0, %1 ], [ %30, %29 ]
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = insertelement <4 x float> poison, float %7, i64 0
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  br label %10

10:                                               ; preds = %10, %4
  %11 = phi i64 [ 0, %4 ], [ %23, %10 ]
  %reass.sub = sub nsw i64 %11, %5
  %12 = add nsw i64 %reass.sub, 15999
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load <4 x float>, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 4, !tbaa !5
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %18 = load <4 x float>, ptr %17, align 32, !tbaa !5
  %19 = getelementptr inbounds float, ptr %17, i64 4
  %20 = load <4 x float>, ptr %19, align 16, !tbaa !5
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %9, <4 x float> %18)
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %9, <4 x float> %20)
  store <4 x float> %21, ptr %17, align 32, !tbaa !5
  store <4 x float> %22, ptr %19, align 16, !tbaa !5
  %23 = add nuw nsw i64 %11, 8
  %24 = icmp eq i64 %23, 16000
  br i1 %24, label %29, label %10, !llvm.loop !9

25:                                               ; preds = %29
  %26 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %27 = add nuw nsw i32 %2, 1
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %3, label %1, !llvm.loop !13

29:                                               ; preds = %10
  %30 = add nuw nsw i64 %5, 1
  %31 = icmp eq i64 %30, 16000
  br i1 %31, label %25, label %4, !llvm.loop !14
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!14 = distinct !{!14, !10}
