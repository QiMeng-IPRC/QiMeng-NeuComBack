; ModuleID = 'task_ir_O3/s4116_inner_ori.ll'
source_filename = "task_c/s4116_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local float @s4116_inner(ptr noalias nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, -1
  %5 = sext i32 %4 to i64
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load i32, ptr %0, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %9
  br label %11

11:                                               ; preds = %17, %3
  %12 = phi i32 [ 0, %3 ], [ %19, %17 ]
  %13 = load float, ptr %7, align 4, !tbaa !9
  %14 = load float, ptr %10, align 4, !tbaa !9
  %15 = tail call float @llvm.fmuladd.f32(float %13, float %14, float 0.000000e+00)
  br label %21

16:                                               ; preds = %17
  ret float %43

17:                                               ; preds = %21
  %18 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %19 = add nuw nsw i32 %12, 1
  %20 = icmp eq i32 %19, 10000000
  br i1 %20, label %16, label %11, !llvm.loop !11

21:                                               ; preds = %11, %21
  %22 = phi i64 [ 1, %11 ], [ %44, %21 ]
  %23 = phi float [ %15, %11 ], [ %43, %21 ]
  %24 = phi i64 [ 0, %11 ], [ %34, %21 ]
  %25 = add nsw i64 %22, %6
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !9
  %28 = getelementptr inbounds i32, ptr %0, i64 %22
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !9
  %33 = tail call float @llvm.fmuladd.f32(float %27, float %32, float %23)
  %34 = add nuw nsw i64 %24, 2
  %35 = add nsw i64 %34, %6
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !9
  %38 = getelementptr inbounds i32, ptr %0, i64 %34
  %39 = load i32, ptr %38, align 4, !tbaa !5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !9
  %43 = tail call float @llvm.fmuladd.f32(float %37, float %42, float %33)
  %44 = or i64 %34, 1
  %45 = icmp eq i64 %44, 255
  br i1 %45, label %17, label %21, !llvm.loop !13
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
