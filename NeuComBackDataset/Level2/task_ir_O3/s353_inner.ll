; ModuleID = 'task_ir_O3/s353_inner_ori.ll'
source_filename = "task_c/s353_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s353_inner(ptr noalias nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load float, ptr @c, align 64, !tbaa !5
  %3 = insertelement <4 x float> poison, float %2, i64 0
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  br label %5

5:                                                ; preds = %8, %1
  %6 = phi i32 [ 0, %1 ], [ %10, %8 ]
  br label %12

7:                                                ; preds = %8
  ret void

8:                                                ; preds = %12
  %9 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp eq i32 %10, 100000
  br i1 %11, label %7, label %5, !llvm.loop !9

12:                                               ; preds = %12, %5
  %13 = phi i64 [ 0, %5 ], [ %53, %12 ]
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %20 = add nuw nsw i64 %13, 1
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !11
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !5
  %26 = add nuw nsw i64 %13, 2
  %27 = getelementptr inbounds i32, ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !5
  %32 = add nuw nsw i64 %13, 3
  %33 = getelementptr inbounds i32, ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !11
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !5
  %38 = load <4 x float>, ptr %19, align 4, !tbaa !5
  %39 = insertelement <4 x float> poison, float %18, i64 0
  %40 = insertelement <4 x float> %39, float %25, i64 1
  %41 = insertelement <4 x float> %40, float %31, i64 2
  %42 = insertelement <4 x float> %41, float %37, i64 3
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %42, <4 x float> %38)
  store <4 x float> %43, ptr %19, align 4, !tbaa !5
  %44 = add nuw nsw i64 %13, 4
  %45 = getelementptr inbounds i32, ptr %0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !11
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !5
  %50 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %44
  %51 = load float, ptr %50, align 4, !tbaa !5
  %52 = tail call float @llvm.fmuladd.f32(float %2, float %49, float %51)
  store float %52, ptr %50, align 4, !tbaa !5
  %53 = add nuw nsw i64 %13, 5
  %54 = icmp ult i64 %13, 31995
  br i1 %54, label %12, label %8, !llvm.loop !13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !10}
