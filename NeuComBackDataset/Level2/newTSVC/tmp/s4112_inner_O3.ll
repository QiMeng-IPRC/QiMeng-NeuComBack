; ModuleID = 'tmp/s4112_inner.c'
source_filename = "tmp/s4112_inner.c"
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
  br label %3

3:                                                ; preds = %2, %6
  %4 = phi i32 [ 0, %2 ], [ %8, %6 ]
  br label %10

5:                                                ; preds = %6
  ret void

6:                                                ; preds = %10
  %7 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %8 = add nuw nsw i32 %4, 1
  %9 = icmp eq i32 %8, 100000
  br i1 %9, label %5, label %3, !llvm.loop !5

10:                                               ; preds = %10, %3
  %11 = phi i64 [ 0, %3 ], [ %29, %10 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !11
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %18 = load float, ptr %17, align 8, !tbaa !11
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %1, float %18)
  store float %19, ptr %17, align 8, !tbaa !11
  %20 = or i64 %11, 1
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !11
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %27 = load float, ptr %26, align 4, !tbaa !11
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %1, float %27)
  store float %28, ptr %26, align 4, !tbaa !11
  %29 = add nuw nsw i64 %11, 2
  %30 = icmp eq i64 %29, 32000
  br i1 %30, label %6, label %10, !llvm.loop !13
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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = distinct !{!13, !6}
