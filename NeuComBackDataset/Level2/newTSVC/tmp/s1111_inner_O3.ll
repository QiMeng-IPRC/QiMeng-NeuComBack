; ModuleID = 'tmp/s1111_inner.c'
source_filename = "tmp/s1111_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s1111_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %34, %0
  %2 = phi i32 [ 0, %0 ], [ %36, %34 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %31, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !5
  %9 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %4
  %10 = load <4 x float>, ptr %9, align 16, !tbaa !5
  %11 = fmul <4 x float> %8, %10
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %8, <4 x float> %11)
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %6, <4 x float> %12)
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %8, <4 x float> %13)
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %6, <4 x float> %14)
  %16 = shl nuw nsw i64 %4, 1
  %17 = shl i64 %4, 1
  %18 = or i64 %17, 2
  %19 = shl i64 %4, 1
  %20 = or i64 %19, 4
  %21 = shl i64 %4, 1
  %22 = or i64 %21, 6
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %20
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %27 = extractelement <4 x float> %15, i64 0
  store float %27, ptr %23, align 32, !tbaa !5
  %28 = extractelement <4 x float> %15, i64 1
  store float %28, ptr %24, align 8, !tbaa !5
  %29 = extractelement <4 x float> %15, i64 2
  store float %29, ptr %25, align 16, !tbaa !5
  %30 = extractelement <4 x float> %15, i64 3
  store float %30, ptr %26, align 8, !tbaa !5
  %31 = add nuw i64 %4, 4
  %32 = icmp eq i64 %31, 16000
  br i1 %32, label %34, label %3, !llvm.loop !9

33:                                               ; preds = %34
  ret void

34:                                               ; preds = %3
  %35 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %36 = add nuw nsw i32 %2, 1
  %37 = icmp eq i32 %36, 200000
  br i1 %37, label %33, label %1, !llvm.loop !13
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
