; ModuleID = 'task_ir_O3/s2111_inner_ori.ll'
source_filename = "task_c/s2111_inner.c"
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

1:                                                ; preds = %16, %0
  %2 = phi i32 [ 0, %0 ], [ %18, %16 ]
  br label %4

3:                                                ; preds = %16
  ret void

4:                                                ; preds = %20, %1
  %5 = phi i64 [ 1, %1 ], [ %21, %20 ]
  %6 = add nsw i64 %5, -1
  %7 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 0
  %8 = load float, ptr %7, align 64, !tbaa !5
  %9 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fadd float %8, %10
  %12 = fpext float %11 to double
  %13 = fdiv double %12, 1.900000e+00
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 1
  store float %14, ptr %15, align 4, !tbaa !5
  br label %23

16:                                               ; preds = %20
  %17 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %18 = add nuw nsw i32 %2, 1
  %19 = icmp eq i32 %18, 39000
  br i1 %19, label %3, label %1, !llvm.loop !9

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 256
  br i1 %22, label %16, label %4, !llvm.loop !11

23:                                               ; preds = %4, %23
  %24 = phi i64 [ 2, %4 ], [ %42, %23 ]
  %25 = phi float [ %14, %4 ], [ %40, %23 ]
  %26 = phi i64 [ 1, %4 ], [ %34, %23 ]
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %24
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = fadd float %25, %28
  %30 = fpext float %29 to double
  %31 = fdiv double %30, 1.900000e+00
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %24
  store float %32, ptr %33, align 4, !tbaa !5
  %34 = add nuw nsw i64 %26, 2
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = fadd float %36, %32
  %38 = fpext float %37 to double
  %39 = fdiv double %38, 1.900000e+00
  %40 = fptrunc double %39 to float
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %34
  store float %40, ptr %41, align 4, !tbaa !5
  %42 = add nuw nsw i64 %26, 3
  %43 = icmp eq i64 %42, 256
  br i1 %43, label %20, label %23, !llvm.loop !12
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
