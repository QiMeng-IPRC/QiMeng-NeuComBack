; ModuleID = 'task_ir_O3/s291_inner_ori.ll'
source_filename = "task_c/s291_inner.c"
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
define dso_local void @s291_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  %.pre = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31999), align 4, !tbaa !5
  br label %8

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %8
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 200000
  br i1 %7, label %3, label %1, !llvm.loop !9

8:                                                ; preds = %8, %1
  %9 = phi float [ %.pre, %1 ], [ %28, %8 ]
  %10 = phi i64 [ 0, %1 ], [ %26, %8 ]
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %13 = load <2 x float>, ptr %11, align 16, !tbaa !5
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x float> %14, float %9, i64 0
  %16 = fadd <2 x float> %13, %15
  %17 = fmul <2 x float> %16, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %17, ptr %12, align 16, !tbaa !5
  %18 = or i64 %10, 2
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %21 = load <2 x float>, ptr %19, align 8, !tbaa !5
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %23 = shufflevector <2 x float> %22, <2 x float> %13, <2 x i32> <i32 3, i32 1>
  %24 = fadd <2 x float> %21, %23
  %25 = fmul <2 x float> %24, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %25, ptr %20, align 8, !tbaa !5
  %26 = add nuw nsw i64 %10, 4
  %27 = icmp eq i64 %26, 32000
  %28 = extractelement <2 x float> %21, i64 1
  br i1 %27, label %4, label %8, !llvm.loop !11
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
