; ModuleID = 'tmp/vtv_inner.c'
source_filename = "tmp/vtv_inner.c"
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
define dso_local void @vtv_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %29, %0
  %2 = phi i32 [ 0, %0 ], [ %31, %29 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %26, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 64, !tbaa !5
  %7 = getelementptr inbounds float, ptr %5, i64 4
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !5
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  %10 = load <4 x float>, ptr %9, align 64, !tbaa !5
  %11 = getelementptr inbounds float, ptr %9, i64 4
  %12 = load <4 x float>, ptr %11, align 16, !tbaa !5
  %13 = fmul <4 x float> %6, %10
  %14 = fmul <4 x float> %8, %12
  store <4 x float> %13, ptr %9, align 64, !tbaa !5
  store <4 x float> %14, ptr %11, align 16, !tbaa !5
  %15 = or i64 %4, 8
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %17 = load <4 x float>, ptr %16, align 32, !tbaa !5
  %18 = getelementptr inbounds float, ptr %16, i64 4
  %19 = load <4 x float>, ptr %18, align 16, !tbaa !5
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  %21 = load <4 x float>, ptr %20, align 32, !tbaa !5
  %22 = getelementptr inbounds float, ptr %20, i64 4
  %23 = load <4 x float>, ptr %22, align 16, !tbaa !5
  %24 = fmul <4 x float> %17, %21
  %25 = fmul <4 x float> %19, %23
  store <4 x float> %24, ptr %20, align 32, !tbaa !5
  store <4 x float> %25, ptr %22, align 16, !tbaa !5
  %26 = add nuw nsw i64 %4, 16
  %27 = icmp eq i64 %26, 32000
  br i1 %27, label %29, label %3, !llvm.loop !9

28:                                               ; preds = %29
  ret void

29:                                               ; preds = %3
  %30 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %31 = add nuw nsw i32 %2, 1
  %32 = icmp eq i32 %31, 1000000
  br i1 %32, label %28, label %1, !llvm.loop !13
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
