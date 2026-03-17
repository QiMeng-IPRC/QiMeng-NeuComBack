; ModuleID = 'tmp/s176_inner.c'
source_filename = "tmp/s176_inner.c"
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

1:                                                ; preds = %0, %28
  %2 = phi i32 [ 0, %0 ], [ %30, %28 ]
  br label %4

3:                                                ; preds = %28
  ret void

4:                                                ; preds = %32, %1
  %5 = phi i64 [ 0, %1 ], [ %33, %32 ]
  %6 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = insertelement <4 x float> poison, float %7, i64 0
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x float> poison, float %7, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %4
  %13 = phi i64 [ 0, %4 ], [ %26, %12 ]
  %14 = sub nsw i64 %13, %5
  %15 = add nsw i64 %14, 15999
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %17 = load <4 x float>, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds float, ptr %16, i64 4
  %19 = load <4 x float>, ptr %18, align 4, !tbaa !5
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %21 = load <4 x float>, ptr %20, align 32, !tbaa !5
  %22 = getelementptr inbounds float, ptr %20, i64 4
  %23 = load <4 x float>, ptr %22, align 16, !tbaa !5
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %9, <4 x float> %21)
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %11, <4 x float> %23)
  store <4 x float> %24, ptr %20, align 32, !tbaa !5
  store <4 x float> %25, ptr %22, align 16, !tbaa !5
  %26 = add nuw i64 %13, 8
  %27 = icmp eq i64 %26, 16000
  br i1 %27, label %32, label %12, !llvm.loop !9

28:                                               ; preds = %32
  %29 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %30 = add nuw nsw i32 %2, 1
  %31 = icmp eq i32 %30, 12
  br i1 %31, label %3, label %1, !llvm.loop !13

32:                                               ; preds = %12
  %33 = add nuw nsw i64 %5, 1
  %34 = icmp eq i64 %33, 16000
  br i1 %34, label %28, label %4, !llvm.loop !14
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
!14 = distinct !{!14, !10}
