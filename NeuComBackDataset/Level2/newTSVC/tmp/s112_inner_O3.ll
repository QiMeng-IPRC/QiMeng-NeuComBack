; ModuleID = 'tmp/s112_inner.c'
source_filename = "tmp/s112_inner.c"
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
define dso_local void @s112_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %4
  %2 = phi i32 [ 0, %0 ], [ %6, %4 ]
  br label %8

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %8
  %5 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 300000
  br i1 %7, label %3, label %1, !llvm.loop !5

8:                                                ; preds = %18, %1
  %9 = phi i64 [ 31998, %1 ], [ %26, %18 ]
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load float, ptr %10, align 8, !tbaa !7
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  %13 = load float, ptr %12, align 8, !tbaa !7
  %14 = fadd float %11, %13
  %15 = or i64 %9, 1
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %14, ptr %16, align 4, !tbaa !7
  %17 = icmp eq i64 %9, 0
  br i1 %17, label %4, label %18, !llvm.loop !11

18:                                               ; preds = %8
  %19 = add nsw i64 %9, -1
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !7
  %22 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %23 = load float, ptr %22, align 4, !tbaa !7
  %24 = fadd float %21, %23
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  store float %24, ptr %25, align 8, !tbaa !7
  %26 = add nsw i64 %9, -2
  br label %8
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
