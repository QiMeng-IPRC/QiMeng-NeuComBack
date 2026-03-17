; ModuleID = 'task_ir_O3/s3113_inner_ori.ll'
source_filename = "task_c/s3113_inner.c"
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
define dso_local float @s3113_inner() local_unnamed_addr #0 {
  br label %2

1:                                                ; preds = %6
  ret float %23

2:                                                ; preds = %6, %0
  %3 = phi i32 [ 0, %0 ], [ %8, %6 ]
  %4 = load float, ptr @a, align 64, !tbaa !5
  %5 = tail call float @llvm.fabs.f32(float %4)
  br label %10

6:                                                ; preds = %10
  %7 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %23) #3
  %8 = add nuw nsw i32 %3, 1
  %9 = icmp eq i32 %8, 400000
  br i1 %9, label %1, label %2, !llvm.loop !9

10:                                               ; preds = %10, %2
  %11 = phi i64 [ 0, %2 ], [ %24, %10 ]
  %12 = phi float [ %5, %2 ], [ %23, %10 ]
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %14 = load float, ptr %13, align 8, !tbaa !5
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp ogt float %15, %12
  %17 = select i1 %16, float %15, float %12
  %18 = or i64 %11, 1
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fcmp ogt float %21, %17
  %23 = select i1 %22, float %21, float %17
  %24 = add nuw nsw i64 %11, 2
  %25 = icmp eq i64 %24, 32000
  br i1 %25, label %6, label %10, !llvm.loop !11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

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
