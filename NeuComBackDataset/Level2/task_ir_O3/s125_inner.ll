; ModuleID = 'task_ir_O3/s125_inner_ori.ll'
source_filename = "task_c/s125_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64
@flat_2d_array = external local_unnamed_addr global [65536 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s125_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %31, %0
  %2 = phi i32 [ 0, %0 ], [ %33, %31 ]
  br label %4

3:                                                ; preds = %31
  ret void

4:                                                ; preds = %35, %1
  %5 = phi i64 [ 0, %1 ], [ %37, %35 ]
  %6 = phi i64 [ -1, %1 ], [ %36, %35 ]
  %7 = shl i64 %6, 32
  %8 = ashr exact i64 %7, 32
  %9 = add nsw i64 %8, 1
  br label %10

10:                                               ; preds = %10, %4
  %11 = phi i64 [ 0, %4 ], [ %29, %10 ]
  %12 = add nsw i64 %9, %11
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %11
  %14 = load <4 x float>, ptr %13, align 32, !tbaa !5
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !5
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %11
  %18 = load <4 x float>, ptr %17, align 32, !tbaa !5
  %19 = getelementptr inbounds float, ptr %17, i64 4
  %20 = load <4 x float>, ptr %19, align 16, !tbaa !5
  %21 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %5, i64 %11
  %22 = load <4 x float>, ptr %21, align 32, !tbaa !5
  %23 = getelementptr inbounds float, ptr %21, i64 4
  %24 = load <4 x float>, ptr %23, align 16, !tbaa !5
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %22, <4 x float> %14)
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> %24, <4 x float> %16)
  %27 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %12
  store <4 x float> %25, ptr %27, align 4, !tbaa !5
  %28 = getelementptr inbounds float, ptr %27, i64 4
  store <4 x float> %26, ptr %28, align 4, !tbaa !5
  %29 = add nuw nsw i64 %11, 8
  %30 = icmp eq i64 %29, 256
  br i1 %30, label %35, label %10, !llvm.loop !9

31:                                               ; preds = %35
  %32 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %33 = add nuw nsw i32 %2, 1
  %34 = icmp eq i32 %33, 39000
  br i1 %34, label %3, label %1, !llvm.loop !13

35:                                               ; preds = %10
  %36 = add nsw i64 %8, 256
  %37 = add nuw nsw i64 %5, 1
  %38 = icmp eq i64 %37, 256
  br i1 %38, label %31, label %4, !llvm.loop !14
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
