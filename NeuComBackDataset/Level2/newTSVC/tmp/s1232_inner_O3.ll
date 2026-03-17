; ModuleID = 'tmp/s1232_inner.c'
source_filename = "tmp/s1232_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64
@aa = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s1232_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %6
  %2 = phi i32 [ 0, %0 ], [ %8, %6 ]
  br label %4

3:                                                ; preds = %6
  ret void

4:                                                ; preds = %22, %1
  %5 = phi i64 [ 0, %1 ], [ %23, %22 ]
  br label %25

6:                                                ; preds = %22
  %7 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %8 = add nuw nsw i32 %2, 1
  %9 = icmp eq i32 %8, 39000
  br i1 %9, label %3, label %1, !llvm.loop !5

10:                                               ; preds = %25
  %11 = or i64 %5, 1
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ %11, %10 ], [ %20, %12 ]
  %14 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %13, i64 %11
  %15 = load float, ptr %14, align 4, !tbaa !7
  %16 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %13, i64 %11
  %17 = load float, ptr %16, align 4, !tbaa !7
  %18 = fadd float %15, %17
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %13, i64 %11
  store float %18, ptr %19, align 4, !tbaa !7
  %20 = add nuw nsw i64 %13, 1
  %21 = icmp eq i64 %20, 256
  br i1 %21, label %22, label %12, !llvm.loop !11

22:                                               ; preds = %12
  %23 = add nuw nsw i64 %5, 2
  %24 = icmp eq i64 %23, 256
  br i1 %24, label %6, label %4, !llvm.loop !12

25:                                               ; preds = %4, %25
  %26 = phi i64 [ %5, %4 ], [ %33, %25 ]
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %26, i64 %5
  %28 = load float, ptr %27, align 8, !tbaa !7
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %26, i64 %5
  %30 = load float, ptr %29, align 8, !tbaa !7
  %31 = fadd float %28, %30
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %26, i64 %5
  store float %31, ptr %32, align 8, !tbaa !7
  %33 = add nuw nsw i64 %26, 1
  %34 = icmp eq i64 %33, 256
  br i1 %34, label %10, label %25, !llvm.loop !11
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
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
