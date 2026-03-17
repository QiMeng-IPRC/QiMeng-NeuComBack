; ModuleID = 'task_ir_O3/s316_inner_ori.ll'
source_filename = "task_c/s316_inner.c"
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
define dso_local float @s316_inner() local_unnamed_addr #0 {
  br label %2

1:                                                ; preds = %8
  ret float %24

2:                                                ; preds = %8, %0
  %3 = phi i32 [ 0, %0 ], [ %10, %8 ]
  %4 = load float, ptr @a, align 64, !tbaa !5
  %5 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 1), align 4, !tbaa !5
  %6 = fcmp olt float %5, %4
  %7 = select i1 %6, float %5, float %4
  br label %12

8:                                                ; preds = %12
  %9 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %24) #2
  %10 = add nuw nsw i32 %3, 1
  %11 = icmp eq i32 %10, 500000
  br i1 %11, label %1, label %2, !llvm.loop !9

12:                                               ; preds = %2, %12
  %13 = phi i64 [ 2, %2 ], [ %25, %12 ]
  %14 = phi float [ %7, %2 ], [ %24, %12 ]
  %15 = phi i64 [ 1, %2 ], [ %20, %12 ]
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = fcmp olt float %17, %14
  %19 = select i1 %18, float %17, float %14
  %20 = add nuw nsw i64 %15, 2
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !5
  %23 = fcmp olt float %22, %19
  %24 = select i1 %23, float %22, float %19
  %25 = add nuw nsw i64 %15, 3
  %26 = icmp eq i64 %25, 32000
  br i1 %26, label %8, label %12, !llvm.loop !11
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
