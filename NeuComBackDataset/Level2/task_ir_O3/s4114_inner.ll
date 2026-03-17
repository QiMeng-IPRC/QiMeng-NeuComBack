; ModuleID = 'task_ir_O3/s4114_inner_ori.ll'
source_filename = "task_c/s4114_inner.c"
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
define dso_local void @s4114_inner(ptr noalias nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 32001
  br i1 %3, label %4, label %.preheader

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = sext i32 %5 to i64
  br label %7

7:                                                ; preds = %25, %4
  %8 = phi i32 [ %27, %25 ], [ 0, %4 ]
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ %6, %7 ], [ %23, %9 ]
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %14 = load float, ptr %13, align 4, !tbaa !9
  %15 = sub i32 31999, %12
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !9
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %10
  %20 = load float, ptr %19, align 4, !tbaa !9
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %14)
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  store float %21, ptr %22, align 4, !tbaa !9
  %23 = add nsw i64 %10, 1
  %24 = icmp slt i64 %10, 31999
  br i1 %24, label %9, label %25, !llvm.loop !11

25:                                               ; preds = %9
  %26 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %27 = add nuw nsw i32 %8, 1
  %28 = icmp eq i32 %27, 100000
  br i1 %28, label %.loopexit, label %7, !llvm.loop !13

.loopexit:                                        ; preds = %.preheader, %25
  ret void

.preheader:                                       ; preds = %2, %.preheader
  %29 = phi i32 [ %31, %.preheader ], [ 0, %2 ]
  %30 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %31 = add nuw nsw i32 %29, 1
  %32 = icmp eq i32 %31, 100000
  br i1 %32, label %.loopexit, label %.preheader, !llvm.loop !13
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
