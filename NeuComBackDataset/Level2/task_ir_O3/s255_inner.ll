; ModuleID = 'task_ir_O3/s255_inner_ori.ll'
source_filename = "task_c/s255_inner.c"
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
define dso_local void @s255_inner() local_unnamed_addr #0 {
  br label %2

1:                                                ; preds = %30
  ret void

2:                                                ; preds = %30, %0
  %3 = phi i32 [ 0, %0 ], [ %32, %30 ]
  %4 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31999), align 4, !tbaa !5
  %5 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %6 = insertelement <4 x float> poison, float %4, i64 3
  %7 = insertelement <4 x float> poison, float %5, i64 3
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %28, %8 ]
  %10 = phi <4 x float> [ %6, %2 ], [ %15, %8 ]
  %11 = phi <4 x float> [ %7, %2 ], [ %17, %8 ]
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %13 = load <4 x float>, ptr %12, align 32, !tbaa !5
  %14 = getelementptr inbounds float, ptr %12, i64 4
  %15 = load <4 x float>, ptr %14, align 16, !tbaa !5
  %16 = shufflevector <4 x float> %10, <4 x float> %13, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %17 = shufflevector <4 x float> %13, <4 x float> %15, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %18 = shufflevector <4 x float> %11, <4 x float> %16, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %19 = shufflevector <4 x float> %16, <4 x float> %17, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %20 = fadd <4 x float> %13, %16
  %21 = fadd <4 x float> %15, %17
  %22 = fadd <4 x float> %18, %20
  %23 = fadd <4 x float> %19, %21
  %24 = fmul <4 x float> %22, <float 0x3FD54FDF40000000, float 0x3FD54FDF40000000, float 0x3FD54FDF40000000, float 0x3FD54FDF40000000>
  %25 = fmul <4 x float> %23, <float 0x3FD54FDF40000000, float 0x3FD54FDF40000000, float 0x3FD54FDF40000000, float 0x3FD54FDF40000000>
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  store <4 x float> %24, ptr %26, align 32, !tbaa !5
  %27 = getelementptr inbounds float, ptr %26, i64 4
  store <4 x float> %25, ptr %27, align 16, !tbaa !5
  %28 = add nuw nsw i64 %9, 8
  %29 = icmp eq i64 %28, 32000
  br i1 %29, label %30, label %8, !llvm.loop !9

30:                                               ; preds = %8
  %31 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %32 = add nuw nsw i32 %3, 1
  %33 = icmp eq i32 %32, 100000
  br i1 %33, label %1, label %2, !llvm.loop !13
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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
