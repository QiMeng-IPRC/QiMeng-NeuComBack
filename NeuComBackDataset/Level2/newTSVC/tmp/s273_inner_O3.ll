; ModuleID = 'tmp/s273_inner.c'
source_filename = "tmp/s273_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s273_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %45, %0
  %2 = phi i32 [ 0, %0 ], [ %47, %45 ]
  br label %3

3:                                                ; preds = %38, %1
  %4 = phi i64 [ 0, %1 ], [ %42, %38 ]
  %5 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %4
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !5
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  %10 = load <4 x float>, ptr %9, align 16, !tbaa !5
  %11 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %8, <4 x float> %10)
  store <4 x float> %11, ptr %9, align 16, !tbaa !5
  %12 = fcmp olt <4 x float> %11, zeroinitializer
  %13 = getelementptr [32000 x float], ptr @b, i64 0, i64 %4
  %14 = load <4 x float>, ptr %13, align 16, !tbaa !5
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %8, <4 x float> %14)
  %16 = extractelement <4 x i1> %12, i64 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %19 = extractelement <4 x float> %15, i64 0
  store float %19, ptr %18, align 16, !tbaa !5
  br label %20

20:                                               ; preds = %17, %3
  %21 = extractelement <4 x i1> %12, i64 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = or i64 %4, 1
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %23
  %25 = extractelement <4 x float> %15, i64 1
  store float %25, ptr %24, align 4, !tbaa !5
  br label %26

26:                                               ; preds = %22, %20
  %27 = extractelement <4 x i1> %12, i64 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = or i64 %4, 2
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = extractelement <4 x float> %15, i64 2
  store float %31, ptr %30, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %28, %26
  %33 = extractelement <4 x i1> %12, i64 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = or i64 %4, 3
  %36 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %35
  %37 = extractelement <4 x float> %15, i64 3
  store float %37, ptr %36, align 4, !tbaa !5
  br label %38

38:                                               ; preds = %34, %32
  %39 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %4
  %40 = load <4 x float>, ptr %39, align 16, !tbaa !5
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %6, <4 x float> %40)
  store <4 x float> %41, ptr %39, align 16, !tbaa !5
  %42 = add nuw i64 %4, 4
  %43 = icmp eq i64 %42, 32000
  br i1 %43, label %45, label %3, !llvm.loop !9

44:                                               ; preds = %45
  ret void

45:                                               ; preds = %38
  %46 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %47 = add nuw nsw i32 %2, 1
  %48 = icmp eq i32 %47, 100000
  br i1 %48, label %44, label %1, !llvm.loop !13
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
