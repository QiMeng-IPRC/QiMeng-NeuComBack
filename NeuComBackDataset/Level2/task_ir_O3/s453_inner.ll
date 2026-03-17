; ModuleID = 'task_ir_O3/s453_inner_ori.ll'
source_filename = "task_c/s453_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s453_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  br label %8

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %8
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 200000
  br i1 %7, label %3, label %1, !llvm.loop !5

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %28, %8 ]
  %10 = phi float [ 0.000000e+00, %1 ], [ %23, %8 ]
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %13 = fadd float %10, 2.000000e+00
  %14 = fadd float %13, 2.000000e+00
  %15 = load <2 x float>, ptr %11, align 16, !tbaa !7
  %16 = insertelement <2 x float> poison, float %13, i64 0
  %17 = insertelement <2 x float> %16, float %14, i64 1
  %18 = fmul <2 x float> %17, %15
  store <2 x float> %18, ptr %12, align 16, !tbaa !7
  %19 = or i64 %9, 2
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %22 = fadd float %14, 2.000000e+00
  %23 = fadd float %22, 2.000000e+00
  %24 = load <2 x float>, ptr %20, align 8, !tbaa !7
  %25 = insertelement <2 x float> poison, float %22, i64 0
  %26 = insertelement <2 x float> %25, float %23, i64 1
  %27 = fmul <2 x float> %26, %24
  store <2 x float> %27, ptr %21, align 8, !tbaa !7
  %28 = add nuw nsw i64 %9, 4
  %29 = icmp eq i64 %28, 32000
  br i1 %29, label %4, label %8, !llvm.loop !11
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
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
