; ModuleID = 'tmp/s4117_inner.c'
source_filename = "tmp/s4117_inner.c"
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

1:                                                ; preds = %33, %0
  %2 = phi i32 [ 0, %0 ], [ %35, %33 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %30, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %6 = load <2 x float>, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds float, ptr %5, i64 2
  %8 = load <2 x float>, ptr %7, align 8, !tbaa !5
  %9 = lshr exact i64 %4, 1
  %10 = lshr exact i64 %4, 1
  %11 = and i64 %9, 2147483646
  %12 = and i64 %10, 2147483646
  %13 = or i64 %12, 1
  %14 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %15 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %13
  %16 = load float, ptr %14, align 8, !tbaa !5
  %17 = insertelement <2 x float> poison, float %16, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = load float, ptr %15, align 4, !tbaa !5
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %4
  %23 = load <2 x float>, ptr %22, align 16, !tbaa !5
  %24 = getelementptr inbounds float, ptr %22, i64 2
  %25 = load <2 x float>, ptr %24, align 8, !tbaa !5
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %23, <2 x float> %6)
  %27 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %25, <2 x float> %8)
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  store <2 x float> %26, ptr %28, align 16, !tbaa !5
  %29 = getelementptr inbounds float, ptr %28, i64 2
  store <2 x float> %27, ptr %29, align 8, !tbaa !5
  %30 = add nuw i64 %4, 4
  %31 = icmp eq i64 %30, 32000
  br i1 %31, label %33, label %3, !llvm.loop !9

32:                                               ; preds = %33
  ret void

33:                                               ; preds = %3
  %34 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %35 = add nuw nsw i32 %2, 1
  %36 = icmp eq i32 %35, 100000
  br i1 %36, label %32, label %1, !llvm.loop !13
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

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
