; ModuleID = 'tmp/s125_inner.c'
source_filename = "tmp/s125_inner.c"
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

1:                                                ; preds = %0, %32
  %2 = phi i32 [ 0, %0 ], [ %34, %32 ]
  br label %4

3:                                                ; preds = %32
  ret void

4:                                                ; preds = %1, %36
  %5 = phi i64 [ 0, %1 ], [ %37, %36 ]
  %6 = phi i64 [ -1, %1 ], [ %9, %36 ]
  %7 = shl i64 %6, 32
  %8 = ashr exact i64 %7, 32
  %9 = add nsw i64 %8, 256
  br label %10

10:                                               ; preds = %10, %4
  %11 = phi i64 [ 0, %4 ], [ %30, %10 ]
  %12 = add i64 %8, %11
  %13 = add nsw i64 %12, 1
  %14 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %11
  %15 = load <4 x float>, ptr %14, align 32, !tbaa !5
  %16 = getelementptr inbounds float, ptr %14, i64 4
  %17 = load <4 x float>, ptr %16, align 16, !tbaa !5
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %11
  %19 = load <4 x float>, ptr %18, align 32, !tbaa !5
  %20 = getelementptr inbounds float, ptr %18, i64 4
  %21 = load <4 x float>, ptr %20, align 16, !tbaa !5
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %5, i64 %11
  %23 = load <4 x float>, ptr %22, align 32, !tbaa !5
  %24 = getelementptr inbounds float, ptr %22, i64 4
  %25 = load <4 x float>, ptr %24, align 16, !tbaa !5
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %23, <4 x float> %15)
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %25, <4 x float> %17)
  %28 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %13
  store <4 x float> %26, ptr %28, align 4, !tbaa !5
  %29 = getelementptr inbounds float, ptr %28, i64 4
  store <4 x float> %27, ptr %29, align 4, !tbaa !5
  %30 = add nuw i64 %11, 8
  %31 = icmp eq i64 %30, 256
  br i1 %31, label %36, label %10, !llvm.loop !9

32:                                               ; preds = %36
  %33 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %34 = add nuw nsw i32 %2, 1
  %35 = icmp eq i32 %34, 39000
  br i1 %35, label %3, label %1, !llvm.loop !13

36:                                               ; preds = %10
  %37 = add nuw nsw i64 %5, 1
  %38 = icmp eq i64 %37, 256
  br i1 %38, label %32, label %4, !llvm.loop !14
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
