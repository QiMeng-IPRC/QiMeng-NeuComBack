; ModuleID = 'task_ir_O3/s314_inner_ori.ll'
source_filename = "task_c/s314_inner.c"
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
define dso_local float @s314_inner() local_unnamed_addr #0 {
  br label %2

1:                                                ; preds = %5
  ret float %20

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %7, %5 ]
  %4 = load float, ptr @a, align 64, !tbaa !5
  br label %9

5:                                                ; preds = %9
  %6 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %20) #2
  %7 = add nuw nsw i32 %3, 1
  %8 = icmp eq i32 %7, 500000
  br i1 %8, label %1, label %2, !llvm.loop !9

9:                                                ; preds = %9, %2
  %10 = phi i64 [ 0, %2 ], [ %21, %9 ]
  %11 = phi float [ %4, %2 ], [ %20, %9 ]
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %13 = load float, ptr %12, align 8, !tbaa !5
  %14 = fcmp ogt float %13, %11
  %15 = select i1 %14, float %13, float %11
  %16 = or i64 %10, 1
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = fcmp ogt float %18, %15
  %20 = select i1 %19, float %18, float %15
  %21 = add nuw nsw i64 %10, 2
  %22 = icmp eq i64 %21, 32000
  br i1 %22, label %5, label %9, !llvm.loop !11
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
