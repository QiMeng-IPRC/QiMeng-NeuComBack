; ModuleID = 'tmp/s277_inner.c'
source_filename = "tmp/s277_inner.c"
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
define dso_local void @s277_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %4
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  br label %8

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %31
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 100000
  br i1 %7, label %3, label %1, !llvm.loop !5

8:                                                ; preds = %1, %31
  %9 = phi i64 [ 0, %1 ], [ %32, %31 ]
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !7
  %12 = fcmp ult float %11, 0.000000e+00
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %9, 1
  br label %31

15:                                               ; preds = %8
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %17 = load float, ptr %16, align 4, !tbaa !7
  %18 = fcmp ult float %17, 0.000000e+00
  %19 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %9
  %20 = load float, ptr %19, align 4, !tbaa !7
  %21 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %9
  %22 = load float, ptr %21, align 4, !tbaa !7
  br i1 %18, label %23, label %25

23:                                               ; preds = %15
  %24 = tail call float @llvm.fmuladd.f32(float %20, float %22, float %11)
  store float %24, ptr %10, align 4, !tbaa !7
  br label %25

25:                                               ; preds = %15, %23
  %26 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %9
  %27 = load float, ptr %26, align 4, !tbaa !7
  %28 = tail call float @llvm.fmuladd.f32(float %22, float %27, float %20)
  %29 = add nuw nsw i64 %9, 1
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  store float %28, ptr %30, align 4, !tbaa !7
  br label %31

31:                                               ; preds = %13, %25
  %32 = phi i64 [ %14, %13 ], [ %29, %25 ]
  %33 = icmp eq i64 %32, 31999
  br i1 %33, label %4, label %8, !llvm.loop !11
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
