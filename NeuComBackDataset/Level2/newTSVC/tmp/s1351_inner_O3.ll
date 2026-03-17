; ModuleID = 'tmp/s1351_inner.c'
source_filename = "tmp/s1351_inner.c"
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
define dso_local void @s1351_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %23, %0
  %2 = phi i32 [ 0, %0 ], [ %25, %23 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %20, %3 ]
  %5 = shl i64 %4, 2
  %6 = getelementptr i8, ptr @c, i64 %5
  %7 = shl i64 %4, 2
  %8 = getelementptr i8, ptr @b, i64 %7
  %9 = shl i64 %4, 2
  %10 = getelementptr i8, ptr @a, i64 %9
  %11 = load <4 x float>, ptr %8, align 32, !tbaa !5
  %12 = getelementptr float, ptr %8, i64 4
  %13 = load <4 x float>, ptr %12, align 16, !tbaa !5
  %14 = load <4 x float>, ptr %6, align 32, !tbaa !5
  %15 = getelementptr float, ptr %6, i64 4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !5
  %17 = fadd <4 x float> %11, %14
  %18 = fadd <4 x float> %13, %16
  store <4 x float> %17, ptr %10, align 32, !tbaa !5
  %19 = getelementptr float, ptr %10, i64 4
  store <4 x float> %18, ptr %19, align 16, !tbaa !5
  %20 = add nuw i64 %4, 8
  %21 = icmp eq i64 %20, 32000
  br i1 %21, label %23, label %3, !llvm.loop !9

22:                                               ; preds = %23
  ret void

23:                                               ; preds = %3
  %24 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %25 = add nuw nsw i32 %2, 1
  %26 = icmp eq i32 %25, 800000
  br i1 %26, label %22, label %1, !llvm.loop !13
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
