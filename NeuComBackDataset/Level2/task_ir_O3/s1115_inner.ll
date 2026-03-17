; ModuleID = 'task_ir_O3/s1115_inner_ori.ll'
source_filename = "task_c/s1115_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s1115_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %51, %0
  %2 = phi i32 [ 0, %0 ], [ %53, %51 ]
  br label %4

3:                                                ; preds = %51
  ret void

4:                                                ; preds = %55, %1
  %5 = phi i64 [ 0, %1 ], [ %56, %55 ]
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %49, %6 ]
  %8 = or i64 %7, 1
  %9 = or i64 %7, 2
  %10 = or i64 %7, 3
  %11 = or i64 %7, 4
  %12 = or i64 %7, 5
  %13 = or i64 %7, 6
  %14 = or i64 %7, 7
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %7
  %16 = load <4 x float>, ptr %15, align 32, !tbaa !5
  %17 = getelementptr inbounds float, ptr %15, i64 4
  %18 = load <4 x float>, ptr %17, align 16, !tbaa !5
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %7, i64 %5
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %8, i64 %5
  %21 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %9, i64 %5
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %10, i64 %5
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %11, i64 %5
  %24 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %12, i64 %5
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %13, i64 %5
  %26 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %14, i64 %5
  %27 = load float, ptr %19, align 4, !tbaa !5
  %28 = load float, ptr %20, align 4, !tbaa !5
  %29 = load float, ptr %21, align 4, !tbaa !5
  %30 = load float, ptr %22, align 4, !tbaa !5
  %31 = insertelement <4 x float> poison, float %27, i64 0
  %32 = insertelement <4 x float> %31, float %28, i64 1
  %33 = insertelement <4 x float> %32, float %29, i64 2
  %34 = insertelement <4 x float> %33, float %30, i64 3
  %35 = load float, ptr %23, align 4, !tbaa !5
  %36 = load float, ptr %24, align 4, !tbaa !5
  %37 = load float, ptr %25, align 4, !tbaa !5
  %38 = load float, ptr %26, align 4, !tbaa !5
  %39 = insertelement <4 x float> poison, float %35, i64 0
  %40 = insertelement <4 x float> %39, float %36, i64 1
  %41 = insertelement <4 x float> %40, float %37, i64 2
  %42 = insertelement <4 x float> %41, float %38, i64 3
  %43 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %7
  %44 = load <4 x float>, ptr %43, align 32, !tbaa !5
  %45 = getelementptr inbounds float, ptr %43, i64 4
  %46 = load <4 x float>, ptr %45, align 16, !tbaa !5
  %47 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %34, <4 x float> %44)
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %42, <4 x float> %46)
  store <4 x float> %47, ptr %15, align 32, !tbaa !5
  store <4 x float> %48, ptr %17, align 16, !tbaa !5
  %49 = add nuw nsw i64 %7, 8
  %50 = icmp eq i64 %49, 256
  br i1 %50, label %55, label %6, !llvm.loop !9

51:                                               ; preds = %55
  %52 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %53 = add nuw nsw i32 %2, 1
  %54 = icmp eq i32 %53, 39000
  br i1 %54, label %3, label %1, !llvm.loop !13

55:                                               ; preds = %6
  %56 = add nuw nsw i64 %5, 1
  %57 = icmp eq i64 %56, 256
  br i1 %57, label %51, label %4, !llvm.loop !14
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!14 = distinct !{!14, !10}
