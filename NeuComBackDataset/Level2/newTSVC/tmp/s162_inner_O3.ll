; ModuleID = 'tmp/s162_inner.c'
source_filename = "tmp/s162_inner.c"
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
  br i1 %2, label %3, label %70

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = mul nsw i64 %4, -4
  %6 = icmp ult i64 %5, 32
  br label %7

7:                                                ; preds = %65, %3
  %8 = phi i32 [ %67, %65 ], [ 0, %3 ]
  br i1 %6, label %30, label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ %28, %9 ], [ 0, %7 ]
  %11 = add nuw nsw i64 %10, %4
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load <4 x float>, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds float, ptr %12, i64 4
  %15 = load <4 x float>, ptr %14, align 4, !tbaa !5
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %17 = load <4 x float>, ptr %16, align 32, !tbaa !5
  %18 = getelementptr inbounds float, ptr %16, i64 4
  %19 = load <4 x float>, ptr %18, align 16, !tbaa !5
  %20 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %10
  %21 = load <4 x float>, ptr %20, align 32, !tbaa !5
  %22 = getelementptr inbounds float, ptr %20, i64 4
  %23 = load <4 x float>, ptr %22, align 16, !tbaa !5
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %21, <4 x float> %13)
  %25 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %23, <4 x float> %15)
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  store <4 x float> %24, ptr %26, align 32, !tbaa !5
  %27 = getelementptr inbounds float, ptr %26, i64 4
  store <4 x float> %25, ptr %27, align 16, !tbaa !5
  %28 = add nuw i64 %10, 8
  %29 = icmp eq i64 %28, 31992
  br i1 %29, label %30, label %9, !llvm.loop !9

30:                                               ; preds = %9, %7
  %31 = phi i64 [ 0, %7 ], [ 31992, %9 ]
  %32 = add nuw nsw i64 %31, %4
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !5
  %35 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %31
  %36 = load float, ptr %35, align 32, !tbaa !5
  %37 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %31
  %38 = load float, ptr %37, align 32, !tbaa !5
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %38, float %34)
  %40 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  store float %39, ptr %40, align 32, !tbaa !5
  %41 = or i64 %31, 1
  br label %42

42:                                               ; preds = %42, %30
  %43 = phi i64 [ %41, %30 ], [ %63, %42 ]
  %44 = add nuw nsw i64 %43, %4
  %45 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %44
  %46 = load float, ptr %45, align 4, !tbaa !5
  %47 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %43
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %43
  %50 = load float, ptr %49, align 4, !tbaa !5
  %51 = tail call float @llvm.fmuladd.f32(float %48, float %50, float %46)
  %52 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  store float %51, ptr %52, align 4, !tbaa !5
  %53 = add nuw nsw i64 %43, 1
  %54 = add nuw nsw i64 %53, %4
  %55 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !5
  %57 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %53
  %58 = load float, ptr %57, align 4, !tbaa !5
  %59 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %53
  %60 = load float, ptr %59, align 4, !tbaa !5
  %61 = tail call float @llvm.fmuladd.f32(float %58, float %60, float %56)
  %62 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %53
  store float %61, ptr %62, align 4, !tbaa !5
  %63 = add nuw nsw i64 %43, 2
  %64 = icmp eq i64 %63, 31999
  br i1 %64, label %65, label %42, !llvm.loop !13

65:                                               ; preds = %42
  %66 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #4
  %67 = add nuw nsw i32 %8, 1
  %68 = icmp eq i32 %67, 100000
  br i1 %68, label %69, label %7, !llvm.loop !14

69:                                               ; preds = %70, %65
  ret void

70:                                               ; preds = %1, %70
  %71 = phi i32 [ %73, %70 ], [ 0, %1 ]
  %72 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #4
  %73 = add nuw nsw i32 %71, 1
  %74 = icmp eq i32 %73, 100000
  br i1 %74, label %69, label %70, !llvm.loop !14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10}
