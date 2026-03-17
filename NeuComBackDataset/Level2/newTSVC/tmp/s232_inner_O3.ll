; ModuleID = 'tmp/s232_inner.c'
source_filename = "tmp/s232_inner.c"
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

1:                                                ; preds = %0, %13
  %2 = phi i32 [ 0, %0 ], [ %15, %13 ]
  br label %4

3:                                                ; preds = %13
  ret void

4:                                                ; preds = %1, %26
  %5 = phi i64 [ 0, %1 ], [ %29, %26 ]
  %6 = phi i64 [ 1, %1 ], [ %27, %26 ]
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 0
  %8 = load float, ptr %7, align 64, !tbaa !5
  %9 = and i64 %6, 1
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = and i64 %6, 9223372036854775806
  br label %30

13:                                               ; preds = %26
  %14 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #3
  %15 = add nuw nsw i32 %2, 1
  %16 = icmp eq i32 %15, 39000
  br i1 %16, label %3, label %1, !llvm.loop !9

17:                                               ; preds = %30, %4
  %18 = phi float [ %8, %4 ], [ %41, %30 ]
  %19 = phi i64 [ 1, %4 ], [ %43, %30 ]
  %20 = icmp eq i64 %9, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %6, i64 %19
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %23)
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %19
  store float %24, ptr %25, align 4, !tbaa !5
  br label %26

26:                                               ; preds = %17, %21
  %27 = add nuw nsw i64 %6, 1
  %28 = icmp eq i64 %27, 256
  %29 = add i64 %5, 1
  br i1 %28, label %13, label %4, !llvm.loop !11

30:                                               ; preds = %30, %11
  %31 = phi float [ %8, %11 ], [ %41, %30 ]
  %32 = phi i64 [ 1, %11 ], [ %43, %30 ]
  %33 = phi i64 [ 0, %11 ], [ %44, %30 ]
  %34 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %6, i64 %32
  %35 = load float, ptr %34, align 4, !tbaa !5
  %36 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %35)
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %32
  store float %36, ptr %37, align 4, !tbaa !5
  %38 = add nuw nsw i64 %32, 1
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %6, i64 %38
  %40 = load float, ptr %39, align 4, !tbaa !5
  %41 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %40)
  %42 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %38
  store float %41, ptr %42, align 4, !tbaa !5
  %43 = add nuw nsw i64 %32, 2
  %44 = add i64 %33, 2
  %45 = icmp eq i64 %44, %12
  br i1 %45, label %17, label %30, !llvm.loop !12
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
