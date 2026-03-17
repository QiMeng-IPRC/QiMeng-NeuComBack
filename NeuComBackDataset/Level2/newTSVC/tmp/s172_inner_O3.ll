; ModuleID = 'tmp/s172_inner.c'
source_filename = "tmp/s172_inner.c"
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
define dso_local void @s172_inner(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 32001
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = add i32 %0, -1
  %6 = sext i32 %5 to i64
  %7 = sext i32 %1 to i64
  br label %8

8:                                                ; preds = %4, %19
  %9 = phi i32 [ %21, %19 ], [ 0, %4 ]
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %6, %8 ], [ %17, %10 ]
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %15 = load float, ptr %14, align 4, !tbaa !5
  %16 = fadd float %13, %15
  store float %16, ptr %14, align 4, !tbaa !5
  %17 = add i64 %11, %7
  %18 = icmp slt i64 %17, 32000
  br i1 %18, label %10, label %19, !llvm.loop !9

19:                                               ; preds = %10
  %20 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp eq i32 %21, 100000
  br i1 %22, label %23, label %8, !llvm.loop !11

23:                                               ; preds = %24, %19
  ret void

24:                                               ; preds = %2, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %2 ]
  %26 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %27 = add nuw nsw i32 %25, 1
  %28 = icmp eq i32 %27, 100000
  br i1 %28, label %23, label %24, !llvm.loop !11
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
