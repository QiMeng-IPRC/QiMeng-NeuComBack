; ModuleID = 'tmp/s292_inner.c'
source_filename = "tmp/s292_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s292_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %5
  %2 = phi i32 [ 0, %0 ], [ %7, %5 ]
  %3 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  br label %9

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %9
  %6 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %7 = add nuw nsw i32 %2, 1
  %8 = icmp eq i32 %7, 100000
  br i1 %8, label %4, label %1, !llvm.loop !9

9:                                                ; preds = %9, %1
  %10 = phi float [ %3, %1 ], [ %25, %9 ]
  %11 = phi i64 [ 0, %1 ], [ %30, %9 ]
  %12 = phi i64 [ 31999, %1 ], [ %21, %9 ]
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %14 = load float, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fadd float %14, %16
  %18 = fadd float %17, %10
  %19 = fmul float %18, 0x3FD54FDF40000000
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  store float %19, ptr %20, align 8, !tbaa !5
  %21 = or i64 %11, 1
  %22 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %25 = load float, ptr %24, align 8, !tbaa !5
  %26 = fadd float %23, %25
  %27 = fadd float %26, %16
  %28 = fmul float %27, 0x3FD54FDF40000000
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  store float %28, ptr %29, align 4, !tbaa !5
  %30 = add nuw nsw i64 %11, 2
  %31 = icmp eq i64 %30, 32000
  br i1 %31, label %5, label %9, !llvm.loop !11
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
