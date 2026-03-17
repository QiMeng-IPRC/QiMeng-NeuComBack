; ModuleID = 'task_ir_O3/s3110_inner_ori.ll'
source_filename = "task_c/s3110_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local float @s3110_inner() local_unnamed_addr #0 {
  br label %5

1:                                                ; preds = %14
  %2 = fadd float %16, 1.000000e+00
  %3 = fadd float %2, %17
  %4 = fadd float %3, 1.000000e+00
  ret float %4

5:                                                ; preds = %14, %0
  %6 = phi i32 [ 0, %0 ], [ %20, %14 ]
  %7 = load float, ptr @aa, align 64, !tbaa !5
  br label %8

8:                                                ; preds = %22, %5
  %9 = phi i64 [ 0, %5 ], [ %23, %22 ]
  %10 = phi i32 [ 0, %5 ], [ %44, %22 ]
  %11 = phi float [ %7, %5 ], [ %42, %22 ]
  %12 = phi i32 [ 0, %5 ], [ %41, %22 ]
  %13 = trunc i64 %9 to i32
  br label %25

14:                                               ; preds = %22
  %15 = sitofp i32 %44 to float
  %16 = fadd float %42, %15
  %17 = sitofp i32 %41 to float
  %18 = fadd float %16, %17
  %19 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %18) #2
  %20 = add nuw nsw i32 %6, 1
  %21 = icmp eq i32 %20, 39000
  br i1 %21, label %1, label %5, !llvm.loop !9

22:                                               ; preds = %25
  %23 = add nuw nsw i64 %9, 1
  %24 = icmp eq i64 %23, 256
  br i1 %24, label %14, label %8, !llvm.loop !11

25:                                               ; preds = %25, %8
  %26 = phi i64 [ 0, %8 ], [ %45, %25 ]
  %27 = phi i32 [ %10, %8 ], [ %44, %25 ]
  %28 = phi float [ %11, %8 ], [ %42, %25 ]
  %29 = phi i32 [ %12, %8 ], [ %41, %25 ]
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %9, i64 %26
  %31 = load float, ptr %30, align 8, !tbaa !5
  %32 = fcmp ogt float %31, %28
  %33 = trunc i64 %26 to i32
  %34 = select i1 %32, i32 %33, i32 %29
  %35 = select i1 %32, float %31, float %28
  %36 = or i64 %26, 1
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %9, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !5
  %39 = fcmp ogt float %38, %35
  %40 = trunc i64 %36 to i32
  %41 = select i1 %39, i32 %40, i32 %34
  %42 = select i1 %39, float %38, float %35
  %43 = or i1 %32, %39
  %44 = select i1 %43, i32 %13, i32 %27
  %45 = add nuw nsw i64 %26, 2
  %46 = icmp eq i64 %45, 256
  br i1 %46, label %22, label %25, !llvm.loop !12
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
