; ModuleID = 'tmp/s231_inner.c'
source_filename = "tmp/s231_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s231_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %8
  %2 = phi i32 [ 0, %0 ], [ %10, %8 ]
  br label %4

3:                                                ; preds = %8
  ret void

4:                                                ; preds = %1, %12
  %5 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %6 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !5
  br label %15

8:                                                ; preds = %12
  %9 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %10 = add nuw nsw i32 %2, 1
  %11 = icmp eq i32 %10, 39000
  br i1 %11, label %3, label %1, !llvm.loop !9

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %5, 1
  %14 = icmp eq i64 %13, 256
  br i1 %14, label %8, label %4, !llvm.loop !11

15:                                               ; preds = %15, %4
  %16 = phi float [ %7, %4 ], [ %30, %15 ]
  %17 = phi i64 [ 1, %4 ], [ %32, %15 ]
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %17, i64 %5
  %19 = load float, ptr %18, align 4, !tbaa !5
  %20 = fadd float %16, %19
  %21 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %17, i64 %5
  store float %20, ptr %21, align 4, !tbaa !5
  %22 = add nuw nsw i64 %17, 1
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %22, i64 %5
  %24 = load float, ptr %23, align 4, !tbaa !5
  %25 = fadd float %20, %24
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %22, i64 %5
  store float %25, ptr %26, align 4, !tbaa !5
  %27 = add nuw nsw i64 %17, 2
  %28 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %27, i64 %5
  %29 = load float, ptr %28, align 4, !tbaa !5
  %30 = fadd float %25, %29
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %27, i64 %5
  store float %30, ptr %31, align 4, !tbaa !5
  %32 = add nuw nsw i64 %17, 3
  %33 = icmp eq i64 %32, 256
  br i1 %33, label %12, label %15, !llvm.loop !12
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
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
