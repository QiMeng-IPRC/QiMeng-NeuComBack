; ModuleID = 'task_ir_O3/s257_inner_ori.ll'
source_filename = "task_c/s257_inner.c"
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

1:                                                ; preds = %51, %0
  %2 = phi i32 [ 0, %0 ], [ %53, %51 ]
  %.pre = load float, ptr @a, align 64, !tbaa !5
  br label %4

3:                                                ; preds = %51
  ret void

4:                                                ; preds = %46, %1
  %5 = phi float [ %.pre, %1 ], [ %48, %46 ]
  %6 = phi i64 [ 1, %1 ], [ %49, %46 ]
  %7 = insertelement <4 x float> poison, float %5, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi i64 [ 0, %4 ], [ %44, %9 ]
  %11 = or i64 %10, 1
  %12 = or i64 %10, 2
  %13 = or i64 %10, 3
  %14 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %10, i64 %6
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %11, i64 %6
  %16 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %12, i64 %6
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %13, i64 %6
  %18 = load float, ptr %14, align 4, !tbaa !5
  %19 = load float, ptr %15, align 4, !tbaa !5
  %20 = load float, ptr %16, align 4, !tbaa !5
  %21 = load float, ptr %17, align 4, !tbaa !5
  %22 = insertelement <4 x float> poison, float %18, i64 0
  %23 = insertelement <4 x float> %22, float %19, i64 1
  %24 = insertelement <4 x float> %23, float %20, i64 2
  %25 = insertelement <4 x float> %24, float %21, i64 3
  %26 = fsub <4 x float> %25, %8
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %10, i64 %6
  %28 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %11, i64 %6
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %12, i64 %6
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %13, i64 %6
  %31 = load float, ptr %27, align 4, !tbaa !5
  %32 = load float, ptr %28, align 4, !tbaa !5
  %33 = load float, ptr %29, align 4, !tbaa !5
  %34 = load float, ptr %30, align 4, !tbaa !5
  %35 = insertelement <4 x float> poison, float %31, i64 0
  %36 = insertelement <4 x float> %35, float %32, i64 1
  %37 = insertelement <4 x float> %36, float %33, i64 2
  %38 = insertelement <4 x float> %37, float %34, i64 3
  %39 = fadd <4 x float> %26, %38
  %40 = extractelement <4 x float> %39, i64 0
  store float %40, ptr %14, align 4, !tbaa !5
  %41 = extractelement <4 x float> %39, i64 1
  store float %41, ptr %15, align 4, !tbaa !5
  %42 = extractelement <4 x float> %39, i64 2
  store float %42, ptr %16, align 4, !tbaa !5
  %43 = extractelement <4 x float> %39, i64 3
  store float %43, ptr %17, align 4, !tbaa !5
  %44 = add nuw nsw i64 %10, 4
  %45 = icmp eq i64 %44, 256
  br i1 %45, label %46, label %9, !llvm.loop !9

46:                                               ; preds = %9
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %48 = extractelement <4 x float> %26, i64 3
  store float %48, ptr %47, align 4, !tbaa !5
  %49 = add nuw nsw i64 %6, 1
  %50 = icmp eq i64 %49, 256
  br i1 %50, label %51, label %4, !llvm.loop !13

51:                                               ; preds = %46
  %52 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %53 = add nuw nsw i32 %2, 1
  %54 = icmp eq i32 %53, 3900
  br i1 %54, label %3, label %1, !llvm.loop !14
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
