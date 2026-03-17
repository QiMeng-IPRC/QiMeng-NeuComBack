; ModuleID = 'task_ir_O3/s4112_inner_ori.ll'
source_filename = "task_c/s4112_inner.c"
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
define dso_local void @s4112_inner(ptr noalias nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = insertelement <2 x float> poison, float %1, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  br label %5

5:                                                ; preds = %8, %2
  %6 = phi i32 [ 0, %2 ], [ %10, %8 ]
  br label %12

7:                                                ; preds = %8
  ret void

8:                                                ; preds = %12
  %9 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, 100000
  br i1 %11, label %7, label %5, !llvm.loop !5

12:                                               ; preds = %12, %5
  %13 = phi i64 [ 0, %5 ], [ %30, %12 ]
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !11
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %20 = or i64 %13, 1
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !11
  %26 = load <2 x float>, ptr %19, align 8, !tbaa !11
  %27 = insertelement <2 x float> poison, float %18, i64 0
  %28 = insertelement <2 x float> %27, float %25, i64 1
  %29 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %4, <2 x float> %26)
  store <2 x float> %29, ptr %19, align 8, !tbaa !11
  %30 = add nuw nsw i64 %13, 2
  %31 = icmp eq i64 %30, 32000
  br i1 %31, label %8, label %12, !llvm.loop !13
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = distinct !{!13, !6}
