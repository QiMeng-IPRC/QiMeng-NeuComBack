; ModuleID = 'task_ir_O3/s4117_inner_ori.ll'
source_filename = "task_c/s4117_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s4117_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %30, %0
  %2 = phi i32 [ 0, %0 ], [ %32, %30 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %27, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %6 = load <2 x float>, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds float, ptr %5, i64 2
  %8 = load <2 x float>, ptr %7, align 8, !tbaa !5
  %9 = lshr exact i64 %4, 1
  %10 = or i64 %9, 1
  %11 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %10
  %13 = load float, ptr %11, align 8, !tbaa !5
  %14 = insertelement <2 x float> poison, float %13, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = load float, ptr %12, align 4, !tbaa !5
  %17 = insertelement <2 x float> poison, float %16, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %4
  %20 = load <2 x float>, ptr %19, align 16, !tbaa !5
  %21 = getelementptr inbounds float, ptr %19, i64 2
  %22 = load <2 x float>, ptr %21, align 8, !tbaa !5
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %20, <2 x float> %6)
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %22, <2 x float> %8)
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  store <2 x float> %23, ptr %25, align 16, !tbaa !5
  %26 = getelementptr inbounds float, ptr %25, i64 2
  store <2 x float> %24, ptr %26, align 8, !tbaa !5
  %27 = add nuw nsw i64 %4, 4
  %28 = icmp eq i64 %27, 32000
  br i1 %28, label %30, label %3, !llvm.loop !9

29:                                               ; preds = %30
  ret void

30:                                               ; preds = %3
  %31 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %32 = add nuw nsw i32 %2, 1
  %33 = icmp eq i32 %32, 100000
  br i1 %33, label %29, label %1, !llvm.loop !13
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

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
