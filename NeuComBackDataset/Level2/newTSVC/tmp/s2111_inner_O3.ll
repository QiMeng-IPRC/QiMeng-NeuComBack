; ModuleID = 'tmp/s2111_inner.c'
source_filename = "tmp/s2111_inner.c"
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
define dso_local void @s2111_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %9
  %2 = phi i32 [ 0, %0 ], [ %11, %9 ]
  br label %4

3:                                                ; preds = %9
  ret void

4:                                                ; preds = %1, %13
  %5 = phi i64 [ 1, %1 ], [ %14, %13 ]
  %6 = add nsw i64 %5, -1
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 0
  %8 = load float, ptr %7, align 64, !tbaa !5
  br label %16

9:                                                ; preds = %13
  %10 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %11 = add nuw nsw i32 %2, 1
  %12 = icmp eq i32 %11, 39000
  br i1 %12, label %3, label %1, !llvm.loop !9

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %9, label %4, !llvm.loop !11

16:                                               ; preds = %28, %4
  %17 = phi float [ %8, %4 ], [ %34, %28 ]
  %18 = phi i64 [ 1, %4 ], [ %36, %28 ]
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = fadd float %17, %20
  %22 = fpext float %21 to double
  %23 = fdiv double %22, 1.900000e+00
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %18
  store float %24, ptr %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, 256
  br i1 %27, label %13, label %28, !llvm.loop !12

28:                                               ; preds = %16
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %26
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = fadd float %30, %24
  %32 = fpext float %31 to double
  %33 = fdiv double %32, 1.900000e+00
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %26
  store float %34, ptr %35, align 4, !tbaa !5
  %36 = add nuw nsw i64 %18, 2
  br label %16
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
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
