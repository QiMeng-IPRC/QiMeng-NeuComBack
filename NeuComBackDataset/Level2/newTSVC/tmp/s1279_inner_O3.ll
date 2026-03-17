; ModuleID = 'tmp/s1279_inner.c'
source_filename = "tmp/s1279_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s1279_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %45, %0
  %2 = phi i32 [ 0, %0 ], [ %47, %45 ]
  br label %3

3:                                                ; preds = %41, %1
  %4 = phi i64 [ 0, %1 ], [ %42, %41 ]
  %5 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !5
  %7 = fcmp olt <4 x float> %6, zeroinitializer
  %8 = getelementptr [32000 x float], ptr @b, i64 0, i64 %4
  %9 = load <4 x float>, ptr %8, align 16, !tbaa !5
  %10 = fcmp ogt <4 x float> %9, %6
  %11 = getelementptr [32000 x float], ptr @d, i64 0, i64 %4
  %12 = load <4 x float>, ptr %11, align 16, !tbaa !5
  %13 = getelementptr [32000 x float], ptr @e, i64 0, i64 %4
  %14 = load <4 x float>, ptr %13, align 16, !tbaa !5
  %15 = getelementptr [32000 x float], ptr @c, i64 0, i64 %4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !5
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %14, <4 x float> %16)
  %18 = select <4 x i1> %7, <4 x i1> %10, <4 x i1> zeroinitializer
  %19 = extractelement <4 x i1> %18, i64 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %4
  %22 = extractelement <4 x float> %17, i64 0
  store float %22, ptr %21, align 16, !tbaa !5
  br label %23

23:                                               ; preds = %20, %3
  %24 = extractelement <4 x i1> %18, i64 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = or i64 %4, 1
  %27 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %26
  %28 = extractelement <4 x float> %17, i64 1
  store float %28, ptr %27, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %25, %23
  %30 = extractelement <4 x i1> %18, i64 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = or i64 %4, 2
  %33 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %32
  %34 = extractelement <4 x float> %17, i64 2
  store float %34, ptr %33, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %31, %29
  %36 = extractelement <4 x i1> %18, i64 3
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = or i64 %4, 3
  %39 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %38
  %40 = extractelement <4 x float> %17, i64 3
  store float %40, ptr %39, align 4, !tbaa !5
  br label %41

41:                                               ; preds = %37, %35
  %42 = add nuw i64 %4, 4
  %43 = icmp eq i64 %42, 32000
  br i1 %43, label %45, label %3, !llvm.loop !9

44:                                               ; preds = %45
  ret void

45:                                               ; preds = %41
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
