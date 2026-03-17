; ModuleID = 'task_ir_O3/s114_inner_ori.ll'
source_filename = "task_c/s114_inner.c"
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

1:                                                ; preds = %12, %0
  %2 = phi i32 [ 0, %0 ], [ %14, %12 ]
  br label %4

3:                                                ; preds = %12
  ret void

4:                                                ; preds = %25, %1
  %5 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 1
  %9 = icmp eq i64 %5, 1
  br i1 %9, label %.thread, label %10

10:                                               ; preds = %7
  %11 = and i64 %5, 9223372036854775806
  br label %28

12:                                               ; preds = %25
  %13 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %14 = add nuw nsw i32 %2, 1
  %15 = icmp eq i32 %14, 78000
  br i1 %15, label %3, label %1, !llvm.loop !5

16:                                               ; preds = %28
  %17 = icmp eq i64 %8, 0
  br i1 %17, label %25, label %.thread

.thread:                                          ; preds = %7, %16
  %18 = phi i64 [ %11, %16 ], [ 0, %7 ]
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %18, i64 %5
  %20 = load float, ptr %19, align 4, !tbaa !7
  %21 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %18
  %22 = load float, ptr %21, align 8, !tbaa !7
  %23 = fadd float %20, %22
  %24 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %18
  store float %23, ptr %24, align 8, !tbaa !7
  br label %25

25:                                               ; preds = %.thread, %16, %4
  %26 = add nuw nsw i64 %5, 1
  %27 = icmp eq i64 %26, 256
  br i1 %27, label %12, label %4, !llvm.loop !11

28:                                               ; preds = %28, %10
  %29 = phi i64 [ 0, %10 ], [ %43, %28 ]
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %29, i64 %5
  %31 = load float, ptr %30, align 4, !tbaa !7
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %29
  %33 = load float, ptr %32, align 8, !tbaa !7
  %34 = fadd float %31, %33
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %29
  store float %34, ptr %35, align 8, !tbaa !7
  %36 = or i64 %29, 1
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %36, i64 %5
  %38 = load float, ptr %37, align 4, !tbaa !7
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %36
  %40 = load float, ptr %39, align 4, !tbaa !7
  %41 = fadd float %38, %40
  %42 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %36
  store float %41, ptr %42, align 4, !tbaa !7
  %43 = add nuw i64 %29, 2
  %44 = icmp eq i64 %43, %11
  br i1 %44, label %16, label %28, !llvm.loop !12
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
