; ModuleID = 'task_ir_O3/s173_inner_ori.ll'
source_filename = "task_c/s173_inner.c"
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
define dso_local void @s173_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %21, %0
  %2 = phi i32 [ 0, %0 ], [ %23, %21 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %18, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 32, !tbaa !5
  %7 = getelementptr inbounds float, ptr %5, i64 4
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !5
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %10 = load <4 x float>, ptr %9, align 32, !tbaa !5
  %11 = getelementptr inbounds float, ptr %9, i64 4
  %12 = load <4 x float>, ptr %11, align 16, !tbaa !5
  %13 = fadd <4 x float> %6, %10
  %14 = fadd <4 x float> %8, %12
  %15 = add nuw nsw i64 %4, 16000
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store <4 x float> %13, ptr %16, align 32, !tbaa !5
  %17 = getelementptr inbounds float, ptr %16, i64 4
  store <4 x float> %14, ptr %17, align 16, !tbaa !5
  %18 = add nuw nsw i64 %4, 8
  %19 = icmp eq i64 %18, 16000
  br i1 %19, label %21, label %3, !llvm.loop !9

20:                                               ; preds = %21
  ret void

21:                                               ; preds = %3
  %22 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %23 = add nuw nsw i32 %2, 1
  %24 = icmp eq i32 %23, 1000000
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
