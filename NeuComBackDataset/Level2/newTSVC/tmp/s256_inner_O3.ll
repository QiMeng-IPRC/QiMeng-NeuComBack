; ModuleID = 'tmp/s256_inner.c'
source_filename = "tmp/s256_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@d = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s256_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i32 [ 0, %0 ], [ %9, %7 ]
  %3 = load float, ptr @a, align 64, !tbaa !5
  br label %5

4:                                                ; preds = %7
  ret void

5:                                                ; preds = %1, %11
  %6 = phi i64 [ 0, %1 ], [ %12, %11 ]
  br label %14

7:                                                ; preds = %11
  %8 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 3900
  br i1 %10, label %4, label %1, !llvm.loop !9

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %6, 1
  %13 = icmp eq i64 %12, 256
  br i1 %13, label %7, label %5, !llvm.loop !11

14:                                               ; preds = %5, %14
  %15 = phi float [ %3, %5 ], [ %17, %14 ]
  %16 = phi i64 [ 1, %5 ], [ %25, %14 ]
  %17 = fsub float 1.000000e+00, %15
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %17, ptr %18, align 4, !tbaa !5
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %16, i64 %6
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %16
  %22 = load float, ptr %21, align 4, !tbaa !5
  %23 = tail call float @llvm.fmuladd.f32(float %20, float %22, float %17)
  %24 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %16, i64 %6
  store float %23, ptr %24, align 4, !tbaa !5
  %25 = add nuw nsw i64 %16, 1
  %26 = icmp eq i64 %25, 256
  br i1 %26, label %11, label %14, !llvm.loop !12
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
