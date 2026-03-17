; ModuleID = 'task_ir_O3/s4115_inner_ori.ll'
source_filename = "task_c/s4115_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local float @s4115_inner(ptr noalias nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i32 [ 0, %1 ], [ %7, %5 ]
  br label %9

4:                                                ; preds = %5
  ret float %28

5:                                                ; preds = %9
  %6 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %7 = add nuw nsw i32 %3, 1
  %8 = icmp eq i32 %7, 100000
  br i1 %8, label %4, label %2, !llvm.loop !5

9:                                                ; preds = %9, %2
  %10 = phi i64 [ 0, %2 ], [ %29, %9 ]
  %11 = phi float [ 0.000000e+00, %2 ], [ %28, %9 ]
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %13 = load float, ptr %12, align 8, !tbaa !7
  %14 = getelementptr inbounds i32, ptr %0, i64 %10
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !7
  %19 = tail call float @llvm.fmuladd.f32(float %13, float %18, float %11)
  %20 = or i64 %10, 1
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !7
  %23 = getelementptr inbounds i32, ptr %0, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !11
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !7
  %28 = tail call float @llvm.fmuladd.f32(float %22, float %27, float %19)
  %29 = add nuw nsw i64 %10, 2
  %30 = icmp eq i64 %29, 32000
  br i1 %30, label %5, label %9, !llvm.loop !13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !6}
