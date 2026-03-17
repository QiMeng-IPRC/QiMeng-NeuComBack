; ModuleID = 'task_ir_O3/vsumr_inner_ori.ll'
source_filename = "task_c/vsumr_inner.c"
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
define dso_local float @vsumr_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  br label %8

3:                                                ; preds = %4
  ret float %29

4:                                                ; preds = %8
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %29) #2
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 1000000
  br i1 %7, label %3, label %1, !llvm.loop !5

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %30, %8 ]
  %10 = phi float [ 0.000000e+00, %1 ], [ %29, %8 ]
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %12 = load float, ptr %11, align 4, !tbaa !7
  %13 = fadd float %10, %12
  %14 = add nuw nsw i64 %9, 1
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !7
  %17 = fadd float %13, %16
  %18 = add nuw nsw i64 %9, 2
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !7
  %21 = fadd float %17, %20
  %22 = add nuw nsw i64 %9, 3
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !7
  %25 = fadd float %21, %24
  %26 = add nuw nsw i64 %9, 4
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !7
  %29 = fadd float %25, %28
  %30 = add nuw nsw i64 %9, 5
  %31 = icmp eq i64 %30, 32000
  br i1 %31, label %4, label %8, !llvm.loop !11
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
