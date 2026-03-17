; ModuleID = 'task_ir_O3/s4113_inner_ori.ll'
source_filename = "task_c/s4113_inner.c"
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
define dso_local void @s4113_inner(ptr noalias nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i32 [ 0, %1 ], [ %7, %5 ]
  br label %9

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %9
  %6 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %7 = add nuw nsw i32 %3, 1
  %8 = icmp eq i32 %7, 100000
  br i1 %8, label %4, label %2, !llvm.loop !5

9:                                                ; preds = %9, %2
  %10 = phi i64 [ 0, %2 ], [ %30, %9 ]
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !11
  %16 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %10
  %17 = load float, ptr %16, align 8, !tbaa !11
  %18 = fadd float %15, %17
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store float %18, ptr %19, align 4, !tbaa !11
  %20 = or i64 %10, 1
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !11
  %26 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %20
  %27 = load float, ptr %26, align 4, !tbaa !11
  %28 = fadd float %25, %27
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  store float %28, ptr %29, align 4, !tbaa !11
  %30 = add nuw nsw i64 %10, 2
  %31 = icmp eq i64 %30, 32000
  br i1 %31, label %5, label %9, !llvm.loop !13
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
