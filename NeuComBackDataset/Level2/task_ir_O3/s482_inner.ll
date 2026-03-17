; ModuleID = 'task_ir_O3/s482_inner_ori.ll'
source_filename = "task_c/s482_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s482_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %17, %0
  %2 = phi i32 [ 0, %0 ], [ %19, %17 ]
  br label %4

3:                                                ; preds = %17
  ret void

4:                                                ; preds = %4, %1
  %5 = phi i64 [ %14, %4 ], [ 0, %1 ]
  %6 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %5
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = tail call float @llvm.fmuladd.f32(float %7, float %9, float %11)
  store float %12, ptr %10, align 4, !tbaa !5
  %13 = fcmp ule float %9, %7
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp ult i64 %5, 31999
  %16 = and i1 %15, %13
  br i1 %16, label %4, label %17, !llvm.loop !9

17:                                               ; preds = %4
  %18 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %19 = add nuw nsw i32 %2, 1
  %20 = icmp eq i32 %19, 100000
  br i1 %20, label %3, label %1, !llvm.loop !11
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
