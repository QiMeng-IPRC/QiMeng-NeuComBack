; ModuleID = 'tmp/s332_inner.c'
source_filename = "tmp/s332_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local float @s332_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sitofp i32 %0 to float
  br label %3

3:                                                ; preds = %1, %37
  %4 = phi i32 [ 0, %1 ], [ %43, %37 ]
  br label %5

5:                                                ; preds = %30, %3
  %6 = phi i64 [ 0, %3 ], [ %31, %30 ]
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = fcmp ogt float %8, %2
  br i1 %9, label %33, label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i64 %6, 1
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = fcmp ogt float %13, %2
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %6, 2
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = fcmp ogt float %18, %2
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = add nuw nsw i64 %6, 3
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = fcmp ogt float %23, %2
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = add nuw nsw i64 %6, 4
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = fcmp ogt float %28, %2
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nuw nsw i64 %6, 5
  %32 = icmp eq i64 %31, 32000
  br i1 %32, label %37, label %5, !llvm.loop !9

33:                                               ; preds = %25, %20, %15, %10, %5
  %34 = phi i64 [ %6, %5 ], [ %11, %10 ], [ %16, %15 ], [ %21, %20 ], [ %26, %25 ]
  %35 = phi float [ %8, %5 ], [ %13, %10 ], [ %18, %15 ], [ %23, %20 ], [ %28, %25 ]
  %36 = trunc i64 %34 to i32
  br label %37

37:                                               ; preds = %30, %33
  %38 = phi float [ %35, %33 ], [ -1.000000e+00, %30 ]
  %39 = phi i32 [ %36, %33 ], [ -2, %30 ]
  %40 = sitofp i32 %39 to float
  %41 = fadd float %38, %40
  %42 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %41) #2
  %43 = add nuw nsw i32 %4, 1
  %44 = icmp eq i32 %43, 100000
  br i1 %44, label %45, label %3, !llvm.loop !11

45:                                               ; preds = %37
  ret float %38
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
