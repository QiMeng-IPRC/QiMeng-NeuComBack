; ModuleID = 'tmp/s126_inner.c'
source_filename = "tmp/s126_inner.c"
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

1:                                                ; preds = %0, %11
  %2 = phi i32 [ 0, %0 ], [ %13, %11 ]
  br label %4

3:                                                ; preds = %11
  ret void

4:                                                ; preds = %1, %15
  %5 = phi i64 [ 0, %1 ], [ %18, %15 ]
  %6 = phi i32 [ 1, %1 ], [ %17, %15 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 0, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = add i32 %6, 254
  br label %20

11:                                               ; preds = %15
  %12 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %13 = add nuw nsw i32 %2, 1
  %14 = icmp eq i32 %13, 3900
  br i1 %14, label %3, label %1, !llvm.loop !9

15:                                               ; preds = %20
  %16 = trunc i64 %22 to i32
  %17 = add nsw i32 %16, 2
  %18 = add nuw nsw i64 %5, 1
  %19 = icmp eq i64 %18, 256
  br i1 %19, label %11, label %4, !llvm.loop !11

20:                                               ; preds = %33, %4
  %21 = phi float [ %9, %4 ], [ %39, %33 ]
  %22 = phi i64 [ %7, %4 ], [ %41, %33 ]
  %23 = phi i64 [ 1, %4 ], [ %42, %33 ]
  %24 = add nsw i64 %22, -1
  %25 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !5
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %23, i64 %5
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %28, float %21)
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %23, i64 %5
  store float %29, ptr %30, align 4, !tbaa !5
  %31 = trunc i64 %22 to i32
  %32 = icmp eq i32 %10, %31
  br i1 %32, label %15, label %33, !llvm.loop !12

33:                                               ; preds = %20
  %34 = add nuw nsw i64 %23, 1
  %35 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %22
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %34, i64 %5
  %38 = load float, ptr %37, align 4, !tbaa !5
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %38, float %29)
  %40 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %34, i64 %5
  store float %39, ptr %40, align 4, !tbaa !5
  %41 = add nsw i64 %22, 2
  %42 = add nuw nsw i64 %23, 2
  br label %20
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
