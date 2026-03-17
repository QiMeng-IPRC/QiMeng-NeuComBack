; ModuleID = 'tmp/s452_inner.c'
source_filename = "tmp/s452_inner.c"
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
define dso_local void @s452_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %28, %0
  %2 = phi i32 [ 0, %0 ], [ %30, %28 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %24, %3 ]
  %5 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1 ], [ %25, %3 ]
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %7 = load <4 x float>, ptr %6, align 32, !tbaa !5
  %8 = getelementptr inbounds float, ptr %6, i64 4
  %9 = load <4 x float>, ptr %8, align 16, !tbaa !5
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %4
  %11 = load <4 x float>, ptr %10, align 32, !tbaa !5
  %12 = getelementptr inbounds float, ptr %10, i64 4
  %13 = load <4 x float>, ptr %12, align 16, !tbaa !5
  %14 = trunc <4 x i64> %5 to <4 x i32>
  %15 = add <4 x i32> %14, <i32 1, i32 1, i32 1, i32 1>
  %16 = trunc <4 x i64> %5 to <4 x i32>
  %17 = add <4 x i32> %16, <i32 5, i32 5, i32 5, i32 5>
  %18 = sitofp <4 x i32> %15 to <4 x float>
  %19 = sitofp <4 x i32> %17 to <4 x float>
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %18, <4 x float> %7)
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %19, <4 x float> %9)
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  store <4 x float> %20, ptr %22, align 32, !tbaa !5
  %23 = getelementptr inbounds float, ptr %22, i64 4
  store <4 x float> %21, ptr %23, align 16, !tbaa !5
  %24 = add nuw i64 %4, 8
  %25 = add <4 x i64> %5, <i64 8, i64 8, i64 8, i64 8>
  %26 = icmp eq i64 %24, 32000
  br i1 %26, label %28, label %3, !llvm.loop !9

27:                                               ; preds = %28
  ret void

28:                                               ; preds = %3
  %29 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %30 = add nuw nsw i32 %2, 1
  %31 = icmp eq i32 %30, 400000
  br i1 %31, label %27, label %1, !llvm.loop !13
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
