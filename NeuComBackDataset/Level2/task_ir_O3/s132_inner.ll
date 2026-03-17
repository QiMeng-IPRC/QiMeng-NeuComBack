; ModuleID = 'task_ir_O3/s132_inner_ori.ll'
source_filename = "task_c/s132_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s132_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %24, %0
  %2 = phi i32 [ 0, %0 ], [ %39, %24 ]
  %3 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 1), align 4, !tbaa !5
  %4 = insertelement <4 x float> poison, float %3, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi i64 [ 0, %1 ], [ %21, %6 ]
  %8 = or i64 %7, 1
  %9 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 %7
  %10 = load <4 x float>, ptr %9, align 32, !tbaa !5
  %11 = getelementptr inbounds float, ptr %9, i64 4
  %12 = load <4 x float>, ptr %11, align 16, !tbaa !5
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %14 = load <4 x float>, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 4, !tbaa !5
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %5, <4 x float> %10)
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %5, <4 x float> %12)
  %19 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %8
  store <4 x float> %17, ptr %19, align 4, !tbaa !5
  %20 = getelementptr inbounds float, ptr %19, i64 4
  store <4 x float> %18, ptr %20, align 4, !tbaa !5
  %21 = add nuw nsw i64 %7, 8
  %22 = icmp eq i64 %21, 248
  br i1 %22, label %24, label %6, !llvm.loop !9

23:                                               ; preds = %24
  ret void

24:                                               ; preds = %6
  %25 = load <4 x float>, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 248), align 32, !tbaa !5
  %26 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 249), align 4, !tbaa !5
  %27 = insertelement <4 x float> poison, float %3, i64 0
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> zeroinitializer
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %28, <4 x float> %25)
  store <4 x float> %29, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 249), align 4, !tbaa !5
  %30 = load <2 x float>, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 252), align 16, !tbaa !5
  %31 = load <2 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 253), align 4, !tbaa !5
  %32 = insertelement <2 x float> poison, float %3, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %33, <2 x float> %30)
  store <2 x float> %34, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 253), align 4, !tbaa !5
  %35 = load float, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 254), align 8, !tbaa !5
  %36 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 255), align 4, !tbaa !5
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %3, float %35)
  store float %37, ptr getelementptr inbounds ([256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 255), align 4, !tbaa !5
  %38 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #4
  %39 = add nuw nsw i32 %2, 1
  %40 = icmp eq i32 %39, 40000000
  br i1 %40, label %23, label %1, !llvm.loop !13
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
