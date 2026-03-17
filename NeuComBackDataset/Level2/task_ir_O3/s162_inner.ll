; ModuleID = 'task_ir_O3/s162_inner_ori.ll'
source_filename = "task_c/s162_inner.c"
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
define dso_local void @s162_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %.preheader

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = add nuw nsw i64 %4, 31992
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = add nuw nsw i64 %4, 31996
  %8 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  %9 = add nuw nsw i64 %4, 31998
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  br label %11

11:                                               ; preds = %34, %3
  %12 = phi i32 [ %48, %34 ], [ 0, %3 ]
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ %32, %13 ], [ 0, %11 ]
  %15 = add nuw nsw i64 %14, %4
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  %17 = load <4 x float>, ptr %16, align 4, !tbaa !5
  %18 = getelementptr inbounds float, ptr %16, i64 4
  %19 = load <4 x float>, ptr %18, align 4, !tbaa !5
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %14
  %21 = load <4 x float>, ptr %20, align 32, !tbaa !5
  %22 = getelementptr inbounds float, ptr %20, i64 4
  %23 = load <4 x float>, ptr %22, align 16, !tbaa !5
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %14
  %25 = load <4 x float>, ptr %24, align 32, !tbaa !5
  %26 = getelementptr inbounds float, ptr %24, i64 4
  %27 = load <4 x float>, ptr %26, align 16, !tbaa !5
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %25, <4 x float> %17)
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> %27, <4 x float> %19)
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  store <4 x float> %28, ptr %30, align 32, !tbaa !5
  %31 = getelementptr inbounds float, ptr %30, i64 4
  store <4 x float> %29, ptr %31, align 16, !tbaa !5
  %32 = add nuw nsw i64 %14, 8
  %33 = icmp eq i64 %32, 31992
  br i1 %33, label %34, label %13, !llvm.loop !9

34:                                               ; preds = %13
  %35 = load <4 x float>, ptr %6, align 4, !tbaa !5
  %36 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31992), align 32, !tbaa !5
  %37 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31992), align 32, !tbaa !5
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %36, <4 x float> %37, <4 x float> %35)
  store <4 x float> %38, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31992), align 32, !tbaa !5
  %39 = load <2 x float>, ptr %8, align 4, !tbaa !5
  %40 = load <2 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31996), align 16, !tbaa !5
  %41 = load <2 x float>, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31996), align 16, !tbaa !5
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %41, <2 x float> %39)
  store <2 x float> %42, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %43 = load float, ptr %10, align 4, !tbaa !5
  %44 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %45 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31998), align 8, !tbaa !5
  %46 = tail call float @llvm.fmuladd.f32(float %44, float %45, float %43)
  store float %46, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %47 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #4
  %48 = add nuw nsw i32 %12, 1
  %49 = icmp eq i32 %48, 100000
  br i1 %49, label %.loopexit, label %11, !llvm.loop !13

.loopexit:                                        ; preds = %.preheader, %34
  ret void

.preheader:                                       ; preds = %1, %.preheader
  %50 = phi i32 [ %52, %.preheader ], [ 0, %1 ]
  %51 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #4
  %52 = add nuw nsw i32 %50, 1
  %53 = icmp eq i32 %52, 100000
  br i1 %53, label %.loopexit, label %.preheader, !llvm.loop !13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
