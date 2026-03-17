; ModuleID = 'tmp/s318_inner.c'
source_filename = "tmp/s318_inner.c"
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
  br label %5

3:                                                ; preds = %9
  %4 = fadd float %11, 1.000000e+00
  ret float %4

5:                                                ; preds = %1, %9
  %6 = phi i32 [ 0, %1 ], [ %13, %9 ]
  %7 = load float, ptr @a, align 64, !tbaa !5
  %8 = tail call float @llvm.fabs.f32(float %7)
  br label %15

9:                                                ; preds = %15
  %10 = sitofp i32 %24 to float
  %11 = fadd float %25, %10
  %12 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %11) #3
  %13 = add nuw nsw i32 %6, 1
  %14 = icmp eq i32 %13, 50000
  br i1 %14, label %3, label %5, !llvm.loop !9

15:                                               ; preds = %28, %5
  %16 = phi i64 [ %2, %5 ], [ %36, %28 ]
  %17 = phi i32 [ 1, %5 ], [ %37, %28 ]
  %18 = phi float [ %8, %5 ], [ %35, %28 ]
  %19 = phi i32 [ 0, %5 ], [ %34, %28 ]
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %21 = load float, ptr %20, align 4, !tbaa !5
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, %18
  %24 = select i1 %23, i32 %17, i32 %19
  %25 = select i1 %23, float %22, float %18
  %26 = add nuw nsw i32 %17, 1
  %27 = icmp eq i32 %26, 32000
  br i1 %27, label %9, label %28, !llvm.loop !11

28:                                               ; preds = %15
  %29 = add i64 %16, %2
  %30 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !5
  %32 = tail call float @llvm.fabs.f32(float %31)
  %33 = fcmp ugt float %32, %25
  %34 = select i1 %33, i32 %26, i32 %24
  %35 = select i1 %33, float %32, float %25
  %36 = add i64 %29, %2
  %37 = add nuw nsw i32 %17, 2
  br label %15
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
