; ModuleID = 'task_ir_O3/s127_inner_ori.ll'
source_filename = "task_c/s127_inner.c"
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
define dso_local void @s127_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %22, %0
  %2 = phi i32 [ 0, %0 ], [ %24, %22 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %19, %3 ]
  %5 = shl nuw i64 %4, 1
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %7 = load <4 x float>, ptr %6, align 16, !tbaa !5
  %8 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %4
  %9 = load <4 x float>, ptr %8, align 16, !tbaa !5
  %10 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %4
  %11 = load <4 x float>, ptr %10, align 16, !tbaa !5
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %11, <4 x float> %7)
  %13 = or i64 %5, 1
  %14 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %4
  %15 = load <4 x float>, ptr %14, align 16, !tbaa !5
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %15, <4 x float> %7)
  %17 = getelementptr [32000 x float], ptr getelementptr ([32000 x float], ptr @a, i64 -1, i64 31999), i64 0, i64 %13
  %18 = shufflevector <4 x float> %12, <4 x float> %16, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %18, ptr %17, align 32, !tbaa !5
  %19 = add nuw nsw i64 %4, 4
  %20 = icmp eq i64 %19, 16000
  br i1 %20, label %22, label %3, !llvm.loop !9

21:                                               ; preds = %22
  ret void

22:                                               ; preds = %3
  %23 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %24 = add nuw nsw i32 %2, 1
  %25 = icmp eq i32 %24, 200000
  br i1 %25, label %21, label %1, !llvm.loop !13
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
