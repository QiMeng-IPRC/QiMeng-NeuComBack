; ModuleID = 'task_ir_O3/s271_inner_ori.ll'
source_filename = "task_c/s271_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s271_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %38, %0
  %2 = phi i32 [ 0, %0 ], [ %40, %38 ]
  br label %3

3:                                                ; preds = %34, %1
  %4 = phi i64 [ 0, %1 ], [ %35, %34 ]
  %5 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !5
  %7 = fcmp ogt <4 x float> %6, zeroinitializer
  %8 = getelementptr [32000 x float], ptr @c, i64 0, i64 %4
  %9 = load <4 x float>, ptr %8, align 16, !tbaa !5
  %10 = getelementptr [32000 x float], ptr @a, i64 0, i64 %4
  %11 = load <4 x float>, ptr %10, align 16, !tbaa !5
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %9, <4 x float> %11)
  %13 = extractelement <4 x i1> %7, i64 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = extractelement <4 x float> %12, i64 0
  store float %15, ptr %10, align 16, !tbaa !5
  br label %16

16:                                               ; preds = %14, %3
  %17 = extractelement <4 x i1> %7, i64 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = or i64 %4, 1
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = extractelement <4 x float> %12, i64 1
  store float %21, ptr %20, align 4, !tbaa !5
  br label %22

22:                                               ; preds = %18, %16
  %23 = extractelement <4 x i1> %7, i64 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = or i64 %4, 2
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = extractelement <4 x float> %12, i64 2
  store float %27, ptr %26, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %24, %22
  %29 = extractelement <4 x i1> %7, i64 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = or i64 %4, 3
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = extractelement <4 x float> %12, i64 3
  store float %33, ptr %32, align 4, !tbaa !5
  br label %34

34:                                               ; preds = %30, %28
  %35 = add nuw nsw i64 %4, 4
  %36 = icmp eq i64 %35, 32000
  br i1 %36, label %38, label %3, !llvm.loop !9

37:                                               ; preds = %38
  ret void

38:                                               ; preds = %34
  %39 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %40 = add nuw nsw i32 %2, 1
  %41 = icmp eq i32 %40, 400000
  br i1 %41, label %37, label %1, !llvm.loop !13
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
