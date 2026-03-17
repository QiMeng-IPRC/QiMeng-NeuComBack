; ModuleID = 'tmp/s431_inner.c'
source_filename = "tmp/s431_inner.c"
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
define dso_local void @s431_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = mul nsw i64 %2, -4
  %4 = icmp ult i64 %3, 32
  br label %5

5:                                                ; preds = %25, %1
  %6 = phi i32 [ 0, %1 ], [ %27, %25 ]
  br i1 %4, label %29, label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %22, %7 ], [ 0, %5 ]
  %9 = add nsw i64 %8, %2
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = load <4 x float>, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds float, ptr %10, i64 4
  %13 = load <4 x float>, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  %15 = load <4 x float>, ptr %14, align 32, !tbaa !5
  %16 = getelementptr inbounds float, ptr %14, i64 4
  %17 = load <4 x float>, ptr %16, align 16, !tbaa !5
  %18 = fadd <4 x float> %11, %15
  %19 = fadd <4 x float> %13, %17
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  store <4 x float> %18, ptr %20, align 32, !tbaa !5
  %21 = getelementptr inbounds float, ptr %20, i64 4
  store <4 x float> %19, ptr %21, align 16, !tbaa !5
  %22 = add nuw i64 %8, 8
  %23 = icmp eq i64 %22, 32000
  br i1 %23, label %25, label %7, !llvm.loop !9

24:                                               ; preds = %25
  ret void

25:                                               ; preds = %7, %29
  %26 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %27 = add nuw nsw i32 %6, 1
  %28 = icmp eq i32 %27, 1000000
  br i1 %28, label %24, label %5, !llvm.loop !13

29:                                               ; preds = %5, %29
  %30 = phi i64 [ %46, %29 ], [ 0, %5 ]
  %31 = add nsw i64 %30, %2
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !5
  %34 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %35 = load float, ptr %34, align 8, !tbaa !5
  %36 = fadd float %33, %35
  %37 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  store float %36, ptr %37, align 8, !tbaa !5
  %38 = or i64 %30, 1
  %39 = add nsw i64 %38, %2
  %40 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !5
  %42 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %38
  %43 = load float, ptr %42, align 4, !tbaa !5
  %44 = fadd float %41, %43
  %45 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  store float %44, ptr %45, align 4, !tbaa !5
  %46 = add nuw nsw i64 %30, 2
  %47 = icmp eq i64 %46, 32000
  br i1 %47, label %25, label %29, !llvm.loop !14
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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !11}
