; ModuleID = 'tmp/s343_inner.c'
source_filename = "tmp/s343_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bb = external global [256 x [256 x float]], align 64
@aa = external global [256 x [256 x float]], align 64
@flat_2d_array = external local_unnamed_addr global [65536 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s343_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i32 [ 0, %0 ], [ %9, %7 ]
  br label %4

3:                                                ; preds = %7
  ret void

4:                                                ; preds = %1, %11
  %5 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %6 = phi i32 [ -1, %1 ], [ %39, %11 ]
  br label %14

7:                                                ; preds = %11
  %8 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 3900
  br i1 %10, label %3, label %1, !llvm.loop !5

11:                                               ; preds = %38
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 256
  br i1 %13, label %7, label %4, !llvm.loop !7

14:                                               ; preds = %38, %4
  %15 = phi i64 [ 0, %4 ], [ %40, %38 ]
  %16 = phi i32 [ %6, %4 ], [ %39, %38 ]
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %15, i64 %5
  %18 = load float, ptr %17, align 4, !tbaa !8
  %19 = fcmp ogt float %18, 0.000000e+00
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = add nsw i32 %16, 1
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %15, i64 %5
  %23 = load float, ptr %22, align 4, !tbaa !8
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %24
  store float %23, ptr %25, align 4, !tbaa !8
  br label %26

26:                                               ; preds = %14, %20
  %27 = phi i32 [ %21, %20 ], [ %16, %14 ]
  %28 = or i64 %15, 1
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %28, i64 %5
  %30 = load float, ptr %29, align 4, !tbaa !8
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = add nsw i32 %27, 1
  %34 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %28, i64 %5
  %35 = load float, ptr %34, align 4, !tbaa !8
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %36
  store float %35, ptr %37, align 4, !tbaa !8
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i32 [ %33, %32 ], [ %27, %26 ]
  %40 = add nuw nsw i64 %15, 2
  %41 = icmp eq i64 %40, 256
  br i1 %41, label %11, label %14, !llvm.loop !12
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
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6}
