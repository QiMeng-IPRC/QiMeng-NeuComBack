; ModuleID = 'tmp/vbor_inner.c'
source_filename = "tmp/vbor_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@x = external local_unnamed_addr global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @vbor_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %54, %0
  %2 = phi i32 [ 0, %0 ], [ %56, %54 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %51, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !5
  %9 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %4
  %10 = load <4 x float>, ptr %9, align 16, !tbaa !5
  %11 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %4
  %12 = load <4 x float>, ptr %11, align 16, !tbaa !5
  %13 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %4
  %14 = load <4 x float>, ptr %13, align 16, !tbaa !5
  %15 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !5
  %17 = fmul <4 x float> %6, %8
  %18 = fmul <4 x float> %17, %12
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %10, <4 x float> %18)
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %14, <4 x float> %19)
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %16, <4 x float> %20)
  %22 = fmul <4 x float> %6, %10
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %12, <4 x float> %21)
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %14, <4 x float> %23)
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %16, <4 x float> %24)
  %26 = fmul <4 x float> %6, %12
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %14, <4 x float> %25)
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %16, <4 x float> %27)
  %29 = fmul <4 x float> %6, %14
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> %16, <4 x float> %28)
  %31 = fmul <4 x float> %8, %10
  %32 = fmul <4 x float> %31, %14
  %33 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> %12, <4 x float> %32)
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> %16, <4 x float> %33)
  %35 = fmul <4 x float> %8, %12
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %14, <4 x float> %34)
  %37 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %16, <4 x float> %36)
  %38 = fmul <4 x float> %8, %14
  %39 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %16, <4 x float> %37)
  %40 = fmul <4 x float> %10, %12
  %41 = fmul <4 x float> %40, %16
  %42 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> %14, <4 x float> %41)
  %43 = fmul <4 x float> %10, %14
  %44 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> %16, <4 x float> %42)
  %45 = fmul <4 x float> %12, %14
  %46 = fmul <4 x float> %45, %16
  %47 = fmul <4 x float> %39, %30
  %48 = fmul <4 x float> %44, %47
  %49 = fmul <4 x float> %46, %48
  %50 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %4
  store <4 x float> %49, ptr %50, align 16, !tbaa !5
  %51 = add nuw i64 %4, 4
  %52 = icmp eq i64 %51, 256
  br i1 %52, label %54, label %3, !llvm.loop !9

53:                                               ; preds = %54
  ret void

54:                                               ; preds = %3
  %55 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %56 = add nuw nsw i32 %2, 1
  %57 = icmp eq i32 %56, 1000000
  br i1 %57, label %53, label %1, !llvm.loop !13
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
