; ModuleID = 'task_ir_O3/s315_inner_ori.ll'
source_filename = "task_c/s315_inner.c"
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
define dso_local float @s315_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %3 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %0 ], [ %9, %1 ]
  %4 = mul <4 x i32> %3, <i32 7, i32 7, i32 7, i32 7>
  %5 = urem <4 x i32> %4, <i32 32000, i32 32000, i32 32000, i32 32000>
  %6 = sitofp <4 x i32> %5 to <4 x float>
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %2
  store <4 x float> %6, ptr %7, align 16, !tbaa !5
  %8 = add nuw nsw i64 %2, 4
  %9 = add <4 x i32> %3, <i32 4, i32 4, i32 4, i32 4>
  %10 = icmp eq i64 %8, 32000
  br i1 %10, label %.preheader, label %1, !llvm.loop !9

11:                                               ; preds = %15
  %12 = fadd float %17, 1.000000e+00
  ret float %12

.preheader:                                       ; preds = %1, %15
  %13 = phi i32 [ %19, %15 ], [ 0, %1 ]
  %14 = load float, ptr @a, align 64, !tbaa !5
  br label %21

15:                                               ; preds = %21
  %16 = sitofp i32 %37 to float
  %17 = fadd float %35, %16
  %18 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %17) #2
  %19 = add nuw nsw i32 %13, 1
  %20 = icmp eq i32 %19, 100000
  br i1 %20, label %11, label %.preheader, !llvm.loop !13

21:                                               ; preds = %21, %.preheader
  %22 = phi i64 [ 0, %.preheader ], [ %38, %21 ]
  %23 = phi i32 [ 0, %.preheader ], [ %37, %21 ]
  %24 = phi float [ %14, %.preheader ], [ %35, %21 ]
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %26 = load float, ptr %25, align 8, !tbaa !5
  %27 = fcmp ogt float %26, %24
  %28 = select i1 %27, float %26, float %24
  %29 = trunc i64 %22 to i32
  %30 = select i1 %27, i32 %29, i32 %23
  %31 = or i64 %22, 1
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !5
  %34 = fcmp ogt float %33, %28
  %35 = select i1 %34, float %33, float %28
  %36 = trunc i64 %31 to i32
  %37 = select i1 %34, i32 %36, i32 %30
  %38 = add nuw nsw i64 %22, 2
  %39 = icmp eq i64 %38, 32000
  br i1 %39, label %15, label %21, !llvm.loop !14
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
!14 = distinct !{!14, !10}
