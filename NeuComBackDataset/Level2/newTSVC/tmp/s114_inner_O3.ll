; ModuleID = 'tmp/s114_inner.c'
source_filename = "tmp/s114_inner.c"
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
define dso_local void @s114_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i32 [ 0, %0 ], [ %14, %12 ]
  br label %4

3:                                                ; preds = %12
  ret void

4:                                                ; preds = %1, %26
  %5 = phi i64 [ 0, %1 ], [ %27, %26 ]
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 1
  %9 = icmp eq i64 %5, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = and i64 %5, 9223372036854775806
  br label %29

12:                                               ; preds = %26
  %13 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %14 = add nuw nsw i32 %2, 1
  %15 = icmp eq i32 %14, 78000
  br i1 %15, label %3, label %1, !llvm.loop !5

16:                                               ; preds = %29, %7
  %17 = phi i64 [ 0, %7 ], [ %45, %29 ]
  %18 = icmp eq i64 %8, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %17, i64 %5
  %21 = load float, ptr %20, align 4, !tbaa !7
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %17
  %23 = load float, ptr %22, align 4, !tbaa !7
  %24 = fadd float %21, %23
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %17
  store float %24, ptr %25, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %19, %16, %4
  %27 = add nuw nsw i64 %5, 1
  %28 = icmp eq i64 %27, 256
  br i1 %28, label %12, label %4, !llvm.loop !11

29:                                               ; preds = %29, %10
  %30 = phi i64 [ 0, %10 ], [ %45, %29 ]
  %31 = phi i64 [ 0, %10 ], [ %46, %29 ]
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %30, i64 %5
  %33 = load float, ptr %32, align 4, !tbaa !7
  %34 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %30
  %35 = load float, ptr %34, align 8, !tbaa !7
  %36 = fadd float %33, %35
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %30
  store float %36, ptr %37, align 8, !tbaa !7
  %38 = or i64 %30, 1
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %38, i64 %5
  %40 = load float, ptr %39, align 4, !tbaa !7
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %38
  %42 = load float, ptr %41, align 4, !tbaa !7
  %43 = fadd float %40, %42
  %44 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %38
  store float %43, ptr %44, align 4, !tbaa !7
  %45 = add nuw nsw i64 %30, 2
  %46 = add i64 %31, 2
  %47 = icmp eq i64 %46, %11
  br i1 %47, label %16, label %29, !llvm.loop !12
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
