; ModuleID = 'task_ir_O3/s272_inner_ori.ll'
source_filename = "task_c/s272_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s272_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sitofp i32 %0 to float
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi i32 [ 0, %1 ], [ %8, %6 ]
  br label %10

5:                                                ; preds = %6
  ret void

6:                                                ; preds = %26
  %7 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %8 = add nuw nsw i32 %4, 1
  %9 = icmp eq i32 %8, 100000
  br i1 %9, label %5, label %3, !llvm.loop !5

10:                                               ; preds = %26, %3
  %11 = phi i64 [ 0, %3 ], [ %27, %26 ]
  %12 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !7
  %14 = fcmp ult float %13, %2
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %17 = load float, ptr %16, align 4, !tbaa !7
  %18 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %11
  %19 = load float, ptr %18, align 4, !tbaa !7
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %21 = load float, ptr %20, align 4, !tbaa !7
  %22 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %21)
  store float %22, ptr %20, align 4, !tbaa !7
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %24 = load float, ptr %23, align 4, !tbaa !7
  %25 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %24)
  store float %25, ptr %23, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %15, %10
  %27 = add nuw nsw i64 %11, 1
  %28 = icmp eq i64 %27, 32000
  br i1 %28, label %6, label %10, !llvm.loop !11
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
