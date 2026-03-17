; ModuleID = 'tmp/s442_inner.c'
source_filename = "tmp/s442_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@indx = external local_unnamed_addr global [32000 x i32], align 64
@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s442_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %4
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  br label %8

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %36
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 50000
  br i1 %7, label %3, label %1, !llvm.loop !5

8:                                                ; preds = %1, %36
  %9 = phi i64 [ 0, %1 ], [ %37, %36 ]
  %10 = getelementptr inbounds [32000 x i32], ptr @indx, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  switch i32 %11, label %12 [
    i32 4, label %30
    i32 2, label %18
    i32 3, label %24
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %14 = load float, ptr %13, align 4, !tbaa !11
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %16 = load float, ptr %15, align 4, !tbaa !11
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %16)
  store float %17, ptr %15, align 4, !tbaa !11
  br label %36

18:                                               ; preds = %8
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %20 = load float, ptr %19, align 4, !tbaa !11
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %22 = load float, ptr %21, align 4, !tbaa !11
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %22)
  store float %23, ptr %21, align 4, !tbaa !11
  br label %36

24:                                               ; preds = %8
  %25 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %9
  %26 = load float, ptr %25, align 4, !tbaa !11
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %28 = load float, ptr %27, align 4, !tbaa !11
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %28)
  store float %29, ptr %27, align 4, !tbaa !11
  br label %36

30:                                               ; preds = %8
  %31 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %9
  %32 = load float, ptr %31, align 4, !tbaa !11
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %34 = load float, ptr %33, align 4, !tbaa !11
  %35 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %34)
  store float %35, ptr %33, align 4, !tbaa !11
  br label %36

36:                                               ; preds = %12, %18, %24, %30
  %37 = add nuw nsw i64 %9, 1
  %38 = icmp eq i64 %37, 32000
  br i1 %38, label %4, label %8, !llvm.loop !13
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
