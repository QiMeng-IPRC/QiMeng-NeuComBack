; ModuleID = 'task_ir_O3/s2710_inner_ori.ll'
source_filename = "task_c/s2710_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s2710_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %.preheader, label %.preheader9

.preheader:                                       ; preds = %1, %29
  %3 = phi i32 [ %31, %29 ], [ 0, %1 ]
  br label %4

4:                                                ; preds = %26, %.preheader
  %5 = phi i64 [ %27, %26 ], [ 0, %.preheader ]
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = fcmp ogt float %7, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %5
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %13, float %7)
  store float %14, ptr %8, align 4, !tbaa !5
  %15 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %5
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %7)
  %18 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  store float %17, ptr %18, align 4, !tbaa !5
  br label %26

19:                                               ; preds = %4
  %20 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %5
  %21 = load float, ptr %20, align 4, !tbaa !5
  %22 = tail call float @llvm.fmuladd.f32(float %9, float %21, float %7)
  store float %22, ptr %6, align 4, !tbaa !5
  %23 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %24 = load float, ptr %23, align 4, !tbaa !5
  %25 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %24)
  store float %25, ptr %23, align 4, !tbaa !5
  br label %26

26:                                               ; preds = %19, %11
  %27 = add nuw nsw i64 %5, 1
  %28 = icmp eq i64 %27, 32000
  br i1 %28, label %29, label %4, !llvm.loop !9

29:                                               ; preds = %26
  %30 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %31 = add nuw nsw i32 %3, 1
  %32 = icmp eq i32 %31, 50000
  br i1 %32, label %.loopexit, label %.preheader, !llvm.loop !11

.preheader9:                                      ; preds = %1, %34
  %33 = phi i32 [ %36, %34 ], [ 0, %1 ]
  br label %38

.loopexit:                                        ; preds = %34, %29
  ret void

34:                                               ; preds = %58
  %35 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %36 = add nuw nsw i32 %33, 1
  %37 = icmp eq i32 %36, 50000
  br i1 %37, label %.loopexit, label %.preheader9, !llvm.loop !11

38:                                               ; preds = %58, %.preheader9
  %39 = phi i64 [ 0, %.preheader9 ], [ %60, %58 ]
  %40 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !5
  %42 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %39
  %43 = load float, ptr %42, align 4, !tbaa !5
  %44 = fcmp ogt float %41, %43
  %45 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %39
  br i1 %44, label %46, label %52

46:                                               ; preds = %38
  %47 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %39
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = tail call float @llvm.fmuladd.f32(float %43, float %48, float %41)
  store float %49, ptr %40, align 4, !tbaa !5
  %50 = load float, ptr %45, align 4, !tbaa !5
  %51 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %50)
  br label %58

52:                                               ; preds = %38
  %53 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %39
  %54 = load float, ptr %53, align 4, !tbaa !5
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %41)
  store float %55, ptr %42, align 4, !tbaa !5
  %56 = load float, ptr %45, align 4, !tbaa !5
  %57 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi float [ %51, %46 ], [ %57, %52 ]
  store float %59, ptr %45, align 4, !tbaa !5
  %60 = add nuw nsw i64 %39, 1
  %61 = icmp eq i64 %60, 32000
  br i1 %61, label %34, label %38, !llvm.loop !9
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
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
