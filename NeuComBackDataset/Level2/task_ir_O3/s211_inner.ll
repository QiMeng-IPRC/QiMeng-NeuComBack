; ModuleID = 'task_ir_O3/s211_inner_ori.ll'
source_filename = "task_c/s211_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s211_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ 0, %0 ], [ %7, %5 ]
  %3 = load float, ptr @b, align 64, !tbaa !5
  br label %9

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %9
  %6 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %7 = add nuw nsw i32 %2, 1
  %8 = icmp eq i32 %7, 100000
  br i1 %8, label %4, label %1, !llvm.loop !9

9:                                                ; preds = %9, %1
  %10 = phi float [ %3, %1 ], [ %24, %9 ]
  %11 = phi i64 [ 1, %1 ], [ %18, %9 ]
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %11
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %10)
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  store float %16, ptr %17, align 4, !tbaa !5
  %18 = add nuw nsw i64 %11, 1
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %11
  %22 = load float, ptr %21, align 4, !tbaa !5
  %23 = fneg float %22
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %15, float %20)
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  store float %24, ptr %25, align 4, !tbaa !5
  %26 = icmp eq i64 %18, 31999
  br i1 %26, label %5, label %9, !llvm.loop !11
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
