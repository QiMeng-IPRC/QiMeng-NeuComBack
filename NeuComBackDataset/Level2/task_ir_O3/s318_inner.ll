; ModuleID = 'task_ir_O3/s318_inner_ori.ll'
source_filename = "task_c/s318_inner.c"
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
define dso_local float @s318_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %2
  br label %6

4:                                                ; preds = %15
  %5 = fadd float %17, 1.000000e+00
  ret float %5

6:                                                ; preds = %15, %1
  %7 = phi i32 [ 0, %1 ], [ %19, %15 ]
  %8 = load float, ptr @a, align 64, !tbaa !5
  %9 = tail call float @llvm.fabs.f32(float %8)
  %10 = load float, ptr %3, align 4, !tbaa !5
  %11 = tail call float @llvm.fabs.f32(float %10)
  %12 = fcmp ugt float %11, %9
  %13 = zext i1 %12 to i32
  %14 = select i1 %12, float %11, float %9
  br label %21

15:                                               ; preds = %21
  %16 = sitofp i32 %40 to float
  %17 = fadd float %41, %16
  %18 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %17) #3
  %19 = add nuw nsw i32 %7, 1
  %20 = icmp eq i32 %19, 50000
  br i1 %20, label %4, label %6, !llvm.loop !9

21:                                               ; preds = %6, %21
  %22 = phi i32 [ 2, %6 ], [ %42, %21 ]
  %23 = phi float [ %14, %6 ], [ %41, %21 ]
  %24 = phi i32 [ %13, %6 ], [ %40, %21 ]
  %25 = phi i32 [ 1, %6 ], [ %35, %21 ]
  %26 = phi i64 [ %2, %6 ], [ %34, %21 ]
  %27 = add i64 %26, %2
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !5
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp ugt float %30, %23
  %32 = select i1 %31, i32 %22, i32 %24
  %33 = select i1 %31, float %30, float %23
  %34 = add i64 %27, %2
  %35 = add nuw nsw i32 %25, 2
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  %37 = load float, ptr %36, align 4, !tbaa !5
  %38 = tail call float @llvm.fabs.f32(float %37)
  %39 = fcmp ugt float %38, %33
  %40 = select i1 %39, i32 %35, i32 %32
  %41 = select i1 %39, float %38, float %33
  %42 = add nuw nsw i32 %25, 3
  %43 = icmp eq i32 %42, 32000
  br i1 %43, label %15, label %21, !llvm.loop !11
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
