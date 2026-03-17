; ModuleID = 'task_ir_O3/s126_inner_ori.ll'
source_filename = "task_c/s126_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bb = external global [256 x [256 x float]], align 64
@flat_2d_array = external local_unnamed_addr global [65536 x float], align 64
@cc = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s126_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i32 [ 0, %0 ], [ %18, %16 ]
  br label %4

3:                                                ; preds = %16
  ret void

4:                                                ; preds = %20, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ 1, %1 ]
  %5 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %6 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = add nuw nsw i64 %indvars.iv, 254
  %9 = add nsw i64 %indvars.iv, -1
  %10 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 1, i64 %5
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = tail call float @llvm.fmuladd.f32(float %11, float %13, float %7)
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 1, i64 %5
  store float %14, ptr %15, align 4, !tbaa !5
  br label %23

16:                                               ; preds = %20
  %17 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %18 = add nuw nsw i32 %2, 1
  %19 = icmp eq i32 %18, 3900
  br i1 %19, label %3, label %1, !llvm.loop !9

20:                                               ; preds = %23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 256
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 256
  br i1 %22, label %16, label %4, !llvm.loop !11

23:                                               ; preds = %4, %23
  %24 = phi float [ %14, %4 ], [ %41, %23 ]
  %25 = phi i64 [ 1, %4 ], [ %35, %23 ]
  %26 = phi i64 [ %indvars.iv, %4 ], [ %34, %23 ]
  %27 = add nuw nsw i64 %25, 1
  %28 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %26
  %29 = load float, ptr %28, align 4, !tbaa !5
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %27, i64 %5
  %31 = load float, ptr %30, align 4, !tbaa !5
  %32 = tail call float @llvm.fmuladd.f32(float %29, float %31, float %24)
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %27, i64 %5
  store float %32, ptr %33, align 4, !tbaa !5
  %34 = add nuw nsw i64 %26, 2
  %35 = add nuw nsw i64 %25, 2
  %36 = add nuw nsw i64 %26, 1
  %37 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !5
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %35, i64 %5
  %40 = load float, ptr %39, align 4, !tbaa !5
  %41 = tail call float @llvm.fmuladd.f32(float %38, float %40, float %32)
  %42 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %35, i64 %5
  store float %41, ptr %42, align 4, !tbaa !5
  %43 = and i64 %34, 4294967295
  %44 = icmp eq i64 %8, %43
  br i1 %44, label %20, label %23, !llvm.loop !12
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
