; ModuleID = 'tmp/s331_inner.c'
source_filename = "tmp/s331_inner.c"
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
define dso_local i32 @s331_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %5
  %2 = phi i32 [ 0, %0 ], [ %8, %5 ]
  br label %10

3:                                                ; preds = %5
  %4 = add nsw i32 %41, 1
  ret i32 %4

5:                                                ; preds = %10
  %6 = sitofp i32 %41 to float
  %7 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef %6) #2
  %8 = add nuw nsw i32 %2, 1
  %9 = icmp eq i32 %8, 100000
  br i1 %9, label %3, label %1, !llvm.loop !5

10:                                               ; preds = %10, %1
  %11 = phi i64 [ 0, %1 ], [ %42, %10 ]
  %12 = phi i32 [ -1, %1 ], [ %41, %10 ]
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %14 = load float, ptr %13, align 4, !tbaa !7
  %15 = fcmp olt float %14, 0.000000e+00
  %16 = trunc i64 %11 to i32
  %17 = select i1 %15, i32 %16, i32 %12
  %18 = add nuw nsw i64 %11, 1
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !7
  %21 = fcmp olt float %20, 0.000000e+00
  %22 = trunc i64 %18 to i32
  %23 = select i1 %21, i32 %22, i32 %17
  %24 = add nuw nsw i64 %11, 2
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !7
  %27 = fcmp olt float %26, 0.000000e+00
  %28 = trunc i64 %24 to i32
  %29 = select i1 %27, i32 %28, i32 %23
  %30 = add nuw nsw i64 %11, 3
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !7
  %33 = fcmp olt float %32, 0.000000e+00
  %34 = trunc i64 %30 to i32
  %35 = select i1 %33, i32 %34, i32 %29
  %36 = add nuw nsw i64 %11, 4
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !7
  %39 = fcmp olt float %38, 0.000000e+00
  %40 = trunc i64 %36 to i32
  %41 = select i1 %39, i32 %40, i32 %35
  %42 = add nuw nsw i64 %11, 5
  %43 = icmp eq i64 %42, 32000
  br i1 %43, label %5, label %10, !llvm.loop !11
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
