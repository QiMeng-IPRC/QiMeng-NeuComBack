; ModuleID = 'tmp/s1119_inner.c'
source_filename = "tmp/s1119_inner.c"
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
define dso_local void @s1119_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %36
  %2 = phi i32 [ 0, %0 ], [ %38, %36 ]
  br label %4

3:                                                ; preds = %36
  ret void

4:                                                ; preds = %1, %40
  %5 = phi i64 [ 1, %1 ], [ %41, %40 ]
  %6 = add nsw i64 %5, -1
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %34, %7 ]
  %9 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %8
  %10 = load <4 x float>, ptr %9, align 64, !tbaa !5
  %11 = getelementptr inbounds float, ptr %9, i64 4
  %12 = load <4 x float>, ptr %11, align 16, !tbaa !5
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %8
  %14 = load <4 x float>, ptr %13, align 64, !tbaa !5
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !5
  %17 = fadd <4 x float> %10, %14
  %18 = fadd <4 x float> %12, %16
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %8
  store <4 x float> %17, ptr %19, align 64, !tbaa !5
  %20 = getelementptr inbounds float, ptr %19, i64 4
  store <4 x float> %18, ptr %20, align 16, !tbaa !5
  %21 = or i64 %8, 8
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %21
  %23 = load <4 x float>, ptr %22, align 32, !tbaa !5
  %24 = getelementptr inbounds float, ptr %22, i64 4
  %25 = load <4 x float>, ptr %24, align 16, !tbaa !5
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %21
  %27 = load <4 x float>, ptr %26, align 32, !tbaa !5
  %28 = getelementptr inbounds float, ptr %26, i64 4
  %29 = load <4 x float>, ptr %28, align 16, !tbaa !5
  %30 = fadd <4 x float> %23, %27
  %31 = fadd <4 x float> %25, %29
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %21
  store <4 x float> %30, ptr %32, align 32, !tbaa !5
  %33 = getelementptr inbounds float, ptr %32, i64 4
  store <4 x float> %31, ptr %33, align 16, !tbaa !5
  %34 = add nuw nsw i64 %8, 16
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %40, label %7, !llvm.loop !9

36:                                               ; preds = %40
  %37 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %38 = add nuw nsw i32 %2, 1
  %39 = icmp eq i32 %38, 78000
  br i1 %39, label %3, label %1, !llvm.loop !13

40:                                               ; preds = %7
  %41 = add nuw nsw i64 %5, 1
  %42 = icmp eq i64 %41, 256
  br i1 %42, label %36, label %4, !llvm.loop !14
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
!14 = distinct !{!14, !10}
