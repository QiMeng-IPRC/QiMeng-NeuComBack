; ModuleID = 'task_ir_O3/s112_inner_ori.ll'
source_filename = "task_c/s112_inner.c"
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
define dso_local void @s112_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %7, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %7 ]
  %3 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %4 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %5 = fadd float %3, %4
  store float %5, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999), align 4, !tbaa !5
  br label %11

6:                                                ; preds = %7
  ret void

7:                                                ; preds = %11
  %8 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 300000
  br i1 %10, label %6, label %1, !llvm.loop !9

11:                                               ; preds = %1, %11
  %12 = phi ptr [ getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), %1 ], [ %21, %11 ]
  %13 = phi i64 [ 31998, %1 ], [ %20, %11 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %14
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = fadd float %16, %18
  store float %19, ptr %12, align 8, !tbaa !5
  %20 = add nsw i64 %13, -2
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %22 = load float, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %20
  %24 = load float, ptr %23, align 8, !tbaa !5
  %25 = fadd float %22, %24
  %26 = or i64 %20, 1
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  store float %25, ptr %27, align 4, !tbaa !5
  %28 = icmp eq i64 %20, 0
  br i1 %28, label %7, label %11, !llvm.loop !11
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
