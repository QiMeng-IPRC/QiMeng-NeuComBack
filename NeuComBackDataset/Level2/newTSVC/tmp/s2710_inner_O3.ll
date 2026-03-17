; ModuleID = 'tmp/s2710_inner.c'
source_filename = "tmp/s2710_inner.c"
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
  br i1 %2, label %3, label %34

3:                                                ; preds = %1, %30
  %4 = phi i32 [ %32, %30 ], [ 0, %1 ]
  br label %5

5:                                                ; preds = %27, %3
  %6 = phi i64 [ %28, %27 ], [ 0, %3 ]
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fcmp ogt float %8, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %6
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %8)
  store float %15, ptr %9, align 4, !tbaa !5
  %16 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %6
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %8)
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %6
  store float %18, ptr %19, align 4, !tbaa !5
  br label %27

20:                                               ; preds = %5
  %21 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %6
  %22 = load float, ptr %21, align 4, !tbaa !5
  %23 = tail call float @llvm.fmuladd.f32(float %10, float %22, float %8)
  store float %23, ptr %7, align 4, !tbaa !5
  %24 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %6
  %25 = load float, ptr %24, align 4, !tbaa !5
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %25)
  store float %26, ptr %24, align 4, !tbaa !5
  br label %27

27:                                               ; preds = %20, %12
  %28 = add nuw nsw i64 %6, 1
  %29 = icmp eq i64 %28, 32000
  br i1 %29, label %30, label %5, !llvm.loop !9

30:                                               ; preds = %27
  %31 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %32 = add nuw nsw i32 %4, 1
  %33 = icmp eq i32 %32, 50000
  br i1 %33, label %36, label %3, !llvm.loop !11

34:                                               ; preds = %1, %37
  %35 = phi i32 [ %39, %37 ], [ 0, %1 ]
  br label %41

36:                                               ; preds = %37, %30
  ret void

37:                                               ; preds = %61
  %38 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %39 = add nuw nsw i32 %35, 1
  %40 = icmp eq i32 %39, 50000
  br i1 %40, label %36, label %34, !llvm.loop !11

41:                                               ; preds = %34, %61
  %42 = phi i64 [ 0, %34 ], [ %63, %61 ]
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !5
  %45 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %42
  %46 = load float, ptr %45, align 4, !tbaa !5
  %47 = fcmp ogt float %44, %46
  %48 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %42
  br i1 %47, label %49, label %55

49:                                               ; preds = %41
  %50 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %42
  %51 = load float, ptr %50, align 4, !tbaa !5
  %52 = tail call float @llvm.fmuladd.f32(float %46, float %51, float %44)
  store float %52, ptr %43, align 4, !tbaa !5
  %53 = load float, ptr %48, align 4, !tbaa !5
  %54 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %53)
  br label %61

55:                                               ; preds = %41
  %56 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %42
  %57 = load float, ptr %56, align 4, !tbaa !5
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %44)
  store float %58, ptr %45, align 4, !tbaa !5
  %59 = load float, ptr %48, align 4, !tbaa !5
  %60 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %59)
  br label %61

61:                                               ; preds = %49, %55
  %62 = phi float [ %54, %49 ], [ %60, %55 ]
  store float %62, ptr %48, align 4, !tbaa !5
  %63 = add nuw nsw i64 %42, 1
  %64 = icmp eq i64 %63, 32000
  br i1 %64, label %37, label %41, !llvm.loop !9
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
