; ModuleID = 'tmp/s279_inner.c'
source_filename = "tmp/s279_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s279_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %4
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  br label %8

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %41
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 50000
  br i1 %7, label %3, label %1, !llvm.loop !5

8:                                                ; preds = %1, %41
  %9 = phi i64 [ 0, %1 ], [ %46, %41 ]
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !7
  %12 = fcmp ogt float %11, 0.000000e+00
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %15 = load float, ptr %14, align 4, !tbaa !7
  %16 = fneg float %15
  %17 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %9
  %18 = load float, ptr %17, align 4, !tbaa !7
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %16)
  store float %19, ptr %14, align 4, !tbaa !7
  %20 = fcmp ugt float %19, %11
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %23 = load float, ptr %22, align 4, !tbaa !7
  br label %41

24:                                               ; preds = %13
  %25 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %9
  %26 = load float, ptr %25, align 4, !tbaa !7
  %27 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %28 = load float, ptr %27, align 4, !tbaa !7
  %29 = tail call float @llvm.fmuladd.f32(float %18, float %26, float %28)
  store float %29, ptr %27, align 4, !tbaa !7
  br label %41

30:                                               ; preds = %8
  %31 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %32 = load float, ptr %31, align 4, !tbaa !7
  %33 = fneg float %32
  %34 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %9
  %35 = load float, ptr %34, align 4, !tbaa !7
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %33)
  store float %36, ptr %31, align 4, !tbaa !7
  %37 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %38 = load float, ptr %37, align 4, !tbaa !7
  %39 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %9
  %40 = load float, ptr %39, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %21, %30, %24
  %42 = phi float [ %18, %21 ], [ %40, %30 ], [ %18, %24 ]
  %43 = phi float [ %23, %21 ], [ %36, %30 ], [ %29, %24 ]
  %44 = phi float [ %19, %21 ], [ %38, %30 ], [ %19, %24 ]
  %45 = tail call float @llvm.fmuladd.f32(float %43, float %42, float %44)
  store float %45, ptr %10, align 4, !tbaa !7
  %46 = add nuw nsw i64 %9, 1
  %47 = icmp eq i64 %46, 32000
  br i1 %47, label %4, label %8, !llvm.loop !11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
