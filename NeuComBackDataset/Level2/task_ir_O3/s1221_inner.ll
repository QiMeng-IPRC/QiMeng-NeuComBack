; ModuleID = 'task_ir_O3/s1221_inner_ori.ll'
source_filename = "task_c/s1221_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s1221_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %21, %0
  %2 = phi i32 [ 0, %0 ], [ %23, %21 ]
  %3 = load <4 x float>, ptr @b, align 64
  %4 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 4), align 16, !tbaa !5
  %5 = fadd <4 x float> %3, %4
  store <4 x float> %5, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 4), align 16, !tbaa !5
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi <4 x float> [ %5, %1 ], [ %17, %6 ]
  %8 = phi i64 [ 0, %1 ], [ %9, %6 ]
  %9 = add nuw nsw i64 %8, 8
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load <4 x float>, ptr %10, align 32, !tbaa !5
  %12 = fadd <4 x float> %7, %11
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  store <4 x float> %12, ptr %13, align 32, !tbaa !5
  %14 = or i64 %9, 4
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !5
  %17 = fadd <4 x float> %12, %16
  %18 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %14
  store <4 x float> %17, ptr %18, align 16, !tbaa !5
  %19 = icmp eq i64 %9, 31992
  br i1 %19, label %21, label %6, !llvm.loop !9

20:                                               ; preds = %21
  ret void

21:                                               ; preds = %6
  %22 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %23 = add nuw nsw i32 %2, 1
  %24 = icmp eq i32 %23, 100000
  br i1 %24, label %20, label %1, !llvm.loop !13
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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
