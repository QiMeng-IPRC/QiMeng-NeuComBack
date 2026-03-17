; ModuleID = 'tmp/s257_inner.c'
source_filename = "tmp/s257_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s257_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %53
  %2 = phi i32 [ 0, %0 ], [ %55, %53 ]
  br label %4

3:                                                ; preds = %53
  ret void

4:                                                ; preds = %1, %49
  %5 = phi i64 [ 1, %1 ], [ %51, %49 ]
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = add nsw i64 %5, -1
  %8 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = insertelement <4 x float> poison, float %9, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %4
  %13 = phi i64 [ 0, %4 ], [ %47, %12 ]
  %14 = or i64 %13, 1
  %15 = or i64 %13, 2
  %16 = or i64 %13, 3
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %13, i64 %5
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %14, i64 %5
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %15, i64 %5
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %16, i64 %5
  %21 = load float, ptr %17, align 4, !tbaa !5
  %22 = load float, ptr %18, align 4, !tbaa !5
  %23 = load float, ptr %19, align 4, !tbaa !5
  %24 = load float, ptr %20, align 4, !tbaa !5
  %25 = insertelement <4 x float> poison, float %21, i64 0
  %26 = insertelement <4 x float> %25, float %22, i64 1
  %27 = insertelement <4 x float> %26, float %23, i64 2
  %28 = insertelement <4 x float> %27, float %24, i64 3
  %29 = fsub <4 x float> %28, %11
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %13, i64 %5
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %14, i64 %5
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %15, i64 %5
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %16, i64 %5
  %34 = load float, ptr %30, align 4, !tbaa !5
  %35 = load float, ptr %31, align 4, !tbaa !5
  %36 = load float, ptr %32, align 4, !tbaa !5
  %37 = load float, ptr %33, align 4, !tbaa !5
  %38 = insertelement <4 x float> poison, float %34, i64 0
  %39 = insertelement <4 x float> %38, float %35, i64 1
  %40 = insertelement <4 x float> %39, float %36, i64 2
  %41 = insertelement <4 x float> %40, float %37, i64 3
  %42 = fadd <4 x float> %29, %41
  %43 = extractelement <4 x float> %42, i64 0
  store float %43, ptr %17, align 4, !tbaa !5
  %44 = extractelement <4 x float> %42, i64 1
  store float %44, ptr %18, align 4, !tbaa !5
  %45 = extractelement <4 x float> %42, i64 2
  store float %45, ptr %19, align 4, !tbaa !5
  %46 = extractelement <4 x float> %42, i64 3
  store float %46, ptr %20, align 4, !tbaa !5
  %47 = add nuw i64 %13, 4
  %48 = icmp eq i64 %47, 256
  br i1 %48, label %49, label %12, !llvm.loop !9

49:                                               ; preds = %12
  %50 = extractelement <4 x float> %29, i64 3
  store float %50, ptr %6, align 4, !tbaa !5
  %51 = add nuw nsw i64 %5, 1
  %52 = icmp eq i64 %51, 256
  br i1 %52, label %53, label %4, !llvm.loop !13

53:                                               ; preds = %49
  %54 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %55 = add nuw nsw i32 %2, 1
  %56 = icmp eq i32 %55, 3900
  br i1 %56, label %3, label %1, !llvm.loop !14
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
