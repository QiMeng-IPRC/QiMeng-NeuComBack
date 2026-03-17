; ModuleID = 'tmp/s141_inner.c'
source_filename = "tmp/s141_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bb = external global [256 x [256 x float]], align 64
@flat_2d_array = external local_unnamed_addr global [65536 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s141_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %6
  %2 = phi i32 [ 0, %0 ], [ %8, %6 ]
  br label %10

3:                                                ; preds = %6
  ret void

4:                                                ; preds = %18
  %5 = icmp eq i64 %12, 256
  br i1 %5, label %6, label %10, !llvm.loop !5

6:                                                ; preds = %4
  %7 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %8 = add nuw nsw i32 %2, 1
  %9 = icmp eq i32 %8, 78000
  br i1 %9, label %3, label %1, !llvm.loop !7

10:                                               ; preds = %1, %4
  %11 = phi i64 [ 0, %1 ], [ %12, %4 ]
  %12 = add nuw nsw i64 %11, 1
  %13 = mul i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = lshr i32 %14, 1
  %16 = trunc i64 %11 to i32
  %17 = add nuw nsw i32 %15, %16
  br label %18

18:                                               ; preds = %10, %18
  %19 = phi i64 [ %11, %10 ], [ %27, %18 ]
  %20 = phi i32 [ %17, %10 ], [ %29, %18 ]
  %21 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %19, i64 %11
  %22 = load float, ptr %21, align 4, !tbaa !8
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !8
  %26 = fadd float %22, %25
  store float %26, ptr %24, align 4, !tbaa !8
  %27 = add nuw nsw i64 %19, 1
  %28 = trunc i64 %27 to i32
  %29 = add nuw nsw i32 %20, %28
  %30 = icmp eq i64 %27, 256
  br i1 %30, label %4, label %18, !llvm.loop !12
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6}
