; ModuleID = 'tmp/s2275_inner.c'
source_filename = "tmp/s2275_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@e = external global [32000 x float], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s2275_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %6
  %2 = phi i32 [ 0, %0 ], [ %8, %6 ]
  br label %4

3:                                                ; preds = %6
  ret void

4:                                                ; preds = %1, %10
  %5 = phi i64 [ 0, %1 ], [ %19, %10 ]
  br label %21

6:                                                ; preds = %10
  %7 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %8 = add nuw nsw i32 %2, 1
  %9 = icmp eq i32 %8, 39000
  br i1 %9, label %3, label %1, !llvm.loop !5

10:                                               ; preds = %21
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %12 = load float, ptr %11, align 4, !tbaa !7
  %13 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %14 = load float, ptr %13, align 4, !tbaa !7
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %5
  %16 = load float, ptr %15, align 4, !tbaa !7
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %12)
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  store float %17, ptr %18, align 4, !tbaa !7
  %19 = add nuw nsw i64 %5, 1
  %20 = icmp eq i64 %19, 256
  br i1 %20, label %6, label %4, !llvm.loop !11

21:                                               ; preds = %21, %4
  %22 = phi i64 [ 0, %4 ], [ %38, %21 ]
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %22, i64 %5
  %24 = load float, ptr %23, align 4, !tbaa !7
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %22, i64 %5
  %26 = load float, ptr %25, align 4, !tbaa !7
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %22, i64 %5
  %28 = load float, ptr %27, align 4, !tbaa !7
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %28, float %24)
  store float %29, ptr %23, align 4, !tbaa !7
  %30 = or i64 %22, 1
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %30, i64 %5
  %32 = load float, ptr %31, align 4, !tbaa !7
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %30, i64 %5
  %34 = load float, ptr %33, align 4, !tbaa !7
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %30, i64 %5
  %36 = load float, ptr %35, align 4, !tbaa !7
  %37 = tail call float @llvm.fmuladd.f32(float %34, float %36, float %32)
  store float %37, ptr %31, align 4, !tbaa !7
  %38 = add nuw nsw i64 %22, 2
  %39 = icmp eq i64 %38, 256
  br i1 %39, label %10, label %21, !llvm.loop !12
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
