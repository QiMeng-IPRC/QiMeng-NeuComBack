; ModuleID = 'task_ir_O3/s317_inner_ori.ll'
source_filename = "task_c/s317_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local float @s317_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  br label %8

3:                                                ; preds = %4
  ret float %30

4:                                                ; preds = %8
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %30) #2
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 500000
  br i1 %7, label %3, label %1, !llvm.loop !5

8:                                                ; preds = %8, %1
  %9 = phi i32 [ 0, %1 ], [ %31, %8 ]
  %10 = phi float [ 1.000000e+00, %1 ], [ %30, %8 ]
  %11 = fmul float %10, 0x3FEFAE1480000000
  %12 = fmul float %11, 0x3FEFAE1480000000
  %13 = fmul float %12, 0x3FEFAE1480000000
  %14 = fmul float %13, 0x3FEFAE1480000000
  %15 = fmul float %14, 0x3FEFAE1480000000
  %16 = fmul float %15, 0x3FEFAE1480000000
  %17 = fmul float %16, 0x3FEFAE1480000000
  %18 = fmul float %17, 0x3FEFAE1480000000
  %19 = fmul float %18, 0x3FEFAE1480000000
  %20 = fmul float %19, 0x3FEFAE1480000000
  %21 = fmul float %20, 0x3FEFAE1480000000
  %22 = fmul float %21, 0x3FEFAE1480000000
  %23 = fmul float %22, 0x3FEFAE1480000000
  %24 = fmul float %23, 0x3FEFAE1480000000
  %25 = fmul float %24, 0x3FEFAE1480000000
  %26 = fmul float %25, 0x3FEFAE1480000000
  %27 = fmul float %26, 0x3FEFAE1480000000
  %28 = fmul float %27, 0x3FEFAE1480000000
  %29 = fmul float %28, 0x3FEFAE1480000000
  %30 = fmul float %29, 0x3FEFAE1480000000
  %31 = add nuw nsw i32 %9, 20
  %32 = icmp eq i32 %31, 16000
  br i1 %32, label %4, label %8, !llvm.loop !7
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
