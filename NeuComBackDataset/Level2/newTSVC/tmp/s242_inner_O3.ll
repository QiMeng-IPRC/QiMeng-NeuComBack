; ModuleID = 'tmp/s242_inner.c'
source_filename = "tmp/s242_inner.c"
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
define dso_local void @s242_inner(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sitofp i32 %0 to float
  %4 = sitofp i32 %1 to float
  br label %5

5:                                                ; preds = %2, %9
  %6 = phi i32 [ 0, %2 ], [ %11, %9 ]
  %7 = load float, ptr @a, align 64, !tbaa !5
  br label %13

8:                                                ; preds = %9
  ret void

9:                                                ; preds = %13
  %10 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %11, 20000
  br i1 %12, label %8, label %5, !llvm.loop !9

13:                                               ; preds = %5, %13
  %14 = phi float [ %7, %5 ], [ %26, %13 ]
  %15 = phi i64 [ 1, %5 ], [ %28, %13 ]
  %16 = fadd float %14, %3
  %17 = fadd float %16, %4
  %18 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %19 = load float, ptr %18, align 4, !tbaa !5
  %20 = fadd float %19, %17
  %21 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %15
  %22 = load float, ptr %21, align 4, !tbaa !5
  %23 = fadd float %22, %20
  %24 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %15
  %25 = load float, ptr %24, align 4, !tbaa !5
  %26 = fadd float %25, %23
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %26, ptr %27, align 4, !tbaa !5
  %28 = add nuw nsw i64 %15, 1
  %29 = icmp eq i64 %28, 32000
  br i1 %29, label %9, label %13, !llvm.loop !11
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
