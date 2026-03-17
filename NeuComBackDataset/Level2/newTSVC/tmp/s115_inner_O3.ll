; ModuleID = 'tmp/s115_inner.c'
source_filename = "tmp/s115_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s115_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i32 [ 0, %0 ], [ %9, %7 ]
  br label %11

3:                                                ; preds = %7
  ret void

4:                                                ; preds = %18, %11
  %5 = add nuw nsw i64 %13, 1
  %6 = icmp eq i64 %14, 256
  br i1 %6, label %7, label %11, !llvm.loop !5

7:                                                ; preds = %4
  %8 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 390000
  br i1 %10, label %3, label %1, !llvm.loop !7

11:                                               ; preds = %1, %4
  %12 = phi i64 [ 0, %1 ], [ %14, %4 ]
  %13 = phi i64 [ 1, %1 ], [ %5, %4 ]
  %14 = add nuw nsw i64 %12, 1
  %15 = icmp ult i64 %12, 255
  br i1 %15, label %16, label %4

16:                                               ; preds = %11
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ %13, %16 ], [ %27, %18 ]
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %12, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !8
  %22 = load float, ptr %17, align 4, !tbaa !8
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %24 = load float, ptr %23, align 4, !tbaa !8
  %25 = fneg float %21
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %22, float %24)
  store float %26, ptr %23, align 4, !tbaa !8
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, 256
  br i1 %28, label %4, label %18, !llvm.loop !12
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
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6}
