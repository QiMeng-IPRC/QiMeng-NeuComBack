; ModuleID = 'task_ir_O3/s232_inner_ori.ll'
source_filename = "task_c/s232_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s232_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %13 ]
  br label %4

3:                                                ; preds = %13
  ret void

4:                                                ; preds = %25, %1
  %5 = phi i64 [ 0, %1 ], [ %28, %25 ]
  %6 = phi i64 [ 1, %1 ], [ %26, %25 ]
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 0
  %8 = load float, ptr %7, align 64, !tbaa !5
  %9 = and i64 %6, 1
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %.loopexit, label %11

11:                                               ; preds = %4
  %12 = and i64 %6, 9223372036854775806
  br label %29

13:                                               ; preds = %25
  %14 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #3
  %15 = add nuw nsw i32 %2, 1
  %16 = icmp eq i32 %15, 39000
  br i1 %16, label %3, label %1, !llvm.loop !9

.loopexit:                                        ; preds = %29, %4
  %17 = phi float [ %8, %4 ], [ %40, %29 ]
  %18 = phi i64 [ 1, %4 ], [ %42, %29 ]
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %.loopexit
  %21 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %6, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !5
  %23 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %22)
  %24 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %18
  store float %23, ptr %24, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %20, %.loopexit
  %26 = add nuw nsw i64 %6, 1
  %27 = icmp eq i64 %26, 256
  %28 = add nuw nsw i64 %5, 1
  br i1 %27, label %13, label %4, !llvm.loop !11

29:                                               ; preds = %29, %11
  %30 = phi float [ %8, %11 ], [ %40, %29 ]
  %31 = phi i64 [ 1, %11 ], [ %42, %29 ]
  %32 = phi i64 [ 0, %11 ], [ %43, %29 ]
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %6, i64 %31
  %34 = load float, ptr %33, align 4, !tbaa !5
  %35 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %34)
  %36 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %31
  store float %35, ptr %36, align 4, !tbaa !5
  %37 = add nuw nsw i64 %31, 1
  %38 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %6, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !5
  %40 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %39)
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %37
  store float %40, ptr %41, align 4, !tbaa !5
  %42 = add nuw nsw i64 %31, 2
  %43 = add nuw i64 %32, 2
  %44 = icmp eq i64 %43, %12
  br i1 %44, label %.loopexit, label %29, !llvm.loop !12
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
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
