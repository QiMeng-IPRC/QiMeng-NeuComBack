; ModuleID = 'task_ir_O3/s275_inner_ori.ll'
source_filename = "task_c/s275_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s275_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  br label %8

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %.loopexit
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 3900
  br i1 %7, label %3, label %1, !llvm.loop !5

8:                                                ; preds = %.loopexit, %1
  %9 = phi i64 [ 0, %1 ], [ %38, %.loopexit ]
  %10 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !7
  %12 = fcmp ogt float %11, 0.000000e+00
  br i1 %12, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %8
  %13 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 1, i64 %9
  %14 = load float, ptr %13, align 4, !tbaa !7
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 1, i64 %9
  %16 = load float, ptr %15, align 4, !tbaa !7
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %11)
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 1, i64 %9
  store float %17, ptr %18, align 4, !tbaa !7
  br label %19

19:                                               ; preds = %.preheader, %19
  %20 = phi i64 [ 2, %.preheader ], [ %36, %19 ]
  %21 = phi float [ %17, %.preheader ], [ %34, %19 ]
  %22 = phi i64 [ 1, %.preheader ], [ %29, %19 ]
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %20, i64 %9
  %24 = load float, ptr %23, align 4, !tbaa !7
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %20, i64 %9
  %26 = load float, ptr %25, align 4, !tbaa !7
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %21)
  %28 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %20, i64 %9
  store float %27, ptr %28, align 4, !tbaa !7
  %29 = add nuw nsw i64 %22, 2
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %29, i64 %9
  %31 = load float, ptr %30, align 4, !tbaa !7
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %29, i64 %9
  %33 = load float, ptr %32, align 4, !tbaa !7
  %34 = tail call float @llvm.fmuladd.f32(float %31, float %33, float %27)
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %29, i64 %9
  store float %34, ptr %35, align 4, !tbaa !7
  %36 = add nuw nsw i64 %22, 3
  %37 = icmp eq i64 %36, 256
  br i1 %37, label %.loopexit, label %19, !llvm.loop !11

.loopexit:                                        ; preds = %19, %8
  %38 = add nuw nsw i64 %9, 1
  %39 = icmp eq i64 %38, 256
  br i1 %39, label %4, label %8, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
