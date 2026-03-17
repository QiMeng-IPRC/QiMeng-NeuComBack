; ModuleID = 'tmp/s000_inner.c'
source_filename = "tmp/s000_inner.c"
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
define dso_local void @s000_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %25, %0
  %2 = phi i32 [ 0, %0 ], [ %27, %25 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %22, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 64, !tbaa !5
  %7 = getelementptr inbounds float, ptr %5, i64 4
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !5
  %9 = fadd <4 x float> %6, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %10 = fadd <4 x float> %8, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  store <4 x float> %9, ptr %11, align 64, !tbaa !5
  %12 = getelementptr inbounds float, ptr %11, i64 4
  store <4 x float> %10, ptr %12, align 16, !tbaa !5
  %13 = or i64 %4, 8
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %13
  %15 = load <4 x float>, ptr %14, align 32, !tbaa !5
  %16 = getelementptr inbounds float, ptr %14, i64 4
  %17 = load <4 x float>, ptr %16, align 16, !tbaa !5
  %18 = fadd <4 x float> %15, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %19 = fadd <4 x float> %17, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  store <4 x float> %18, ptr %20, align 32, !tbaa !5
  %21 = getelementptr inbounds float, ptr %20, i64 4
  store <4 x float> %19, ptr %21, align 16, !tbaa !5
  %22 = add nuw nsw i64 %4, 16
  %23 = icmp eq i64 %22, 32000
  br i1 %23, label %25, label %3, !llvm.loop !9

24:                                               ; preds = %25
  ret void

25:                                               ; preds = %3
  %26 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %27 = add nuw nsw i32 %2, 1
  %28 = icmp eq i32 %27, 200000
  br i1 %28, label %24, label %1, !llvm.loop !13
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
