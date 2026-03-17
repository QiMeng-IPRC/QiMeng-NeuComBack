; ModuleID = 'task_ir_O3/s491_inner_ori.ll'
source_filename = "task_c/s491_inner.c"
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
define dso_local void @s491_inner(ptr noalias nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i32 [ 0, %1 ], [ %7, %5 ]
  br label %9

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %9
  %6 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %7 = add nuw nsw i32 %3, 1
  %8 = icmp eq i32 %7, 100000
  br i1 %8, label %4, label %2, !llvm.loop !5

9:                                                ; preds = %9, %2
  %10 = phi i64 [ 0, %2 ], [ %34, %9 ]
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load float, ptr %11, align 8, !tbaa !7
  %13 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %10
  %14 = load float, ptr %13, align 8, !tbaa !7
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %10
  %16 = load float, ptr %15, align 8, !tbaa !7
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %12)
  %18 = getelementptr inbounds i32, ptr %0, i64 %10
  %19 = load i32, ptr %18, align 4, !tbaa !11
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  store float %17, ptr %21, align 4, !tbaa !7
  %22 = or i64 %10, 1
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !7
  %25 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %22
  %26 = load float, ptr %25, align 4, !tbaa !7
  %27 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %22
  %28 = load float, ptr %27, align 4, !tbaa !7
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %28, float %24)
  %30 = getelementptr inbounds i32, ptr %0, i64 %22
  %31 = load i32, ptr %30, align 4, !tbaa !11
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  store float %29, ptr %33, align 4, !tbaa !7
  %34 = add nuw nsw i64 %10, 2
  %35 = icmp eq i64 %34, 32000
  br i1 %35, label %5, label %9, !llvm.loop !13
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
