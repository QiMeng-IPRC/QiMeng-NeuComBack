; ModuleID = 'tmp/s3251_inner.c'
source_filename = "tmp/s3251_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s3251_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %24
  %2 = phi i32 [ 0, %0 ], [ %45, %24 ]
  %3 = load float, ptr @a, align 64, !tbaa !5
  %4 = insertelement <4 x float> poison, float %3, i64 3
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i64 [ 0, %1 ], [ %21, %5 ]
  %7 = phi <4 x float> [ %4, %1 ], [ %12, %5 ]
  %8 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %9 = load <4 x float>, ptr %8, align 16, !tbaa !5
  %10 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %6
  %11 = load <4 x float>, ptr %10, align 16, !tbaa !5
  %12 = fadd <4 x float> %9, %11
  %13 = shufflevector <4 x float> %7, <4 x float> %12, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %14 = or i64 %6, 1
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  store <4 x float> %12, ptr %15, align 4, !tbaa !5
  %16 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %6
  %17 = load <4 x float>, ptr %16, align 16, !tbaa !5
  %18 = fmul <4 x float> %11, %17
  store <4 x float> %18, ptr %8, align 16, !tbaa !5
  %19 = fmul <4 x float> %17, %13
  %20 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %6
  store <4 x float> %19, ptr %20, align 16, !tbaa !5
  %21 = add nuw i64 %6, 4
  %22 = icmp eq i64 %21, 31996
  br i1 %22, label %24, label %5, !llvm.loop !9

23:                                               ; preds = %24
  ret void

24:                                               ; preds = %5
  %25 = extractelement <4 x float> %12, i64 3
  %26 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31996), align 16, !tbaa !5
  %27 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31996), align 16, !tbaa !5
  %28 = fadd float %26, %27
  store float %28, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %29 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31996), align 16, !tbaa !5
  %30 = fmul float %27, %29
  store float %30, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31996), align 16, !tbaa !5
  %31 = fmul float %29, %25
  store float %31, ptr getelementptr inbounds ([32000 x float], ptr @d, i64 0, i64 31996), align 16, !tbaa !5
  %32 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31997), align 4, !tbaa !5
  %33 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31997), align 4, !tbaa !5
  %34 = fadd float %32, %33
  store float %34, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %35 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31997), align 4, !tbaa !5
  %36 = fmul float %33, %35
  store float %36, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31997), align 4, !tbaa !5
  %37 = fmul float %35, %28
  store float %37, ptr getelementptr inbounds ([32000 x float], ptr @d, i64 0, i64 31997), align 4, !tbaa !5
  %38 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %39 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31998), align 8, !tbaa !5
  %40 = fadd float %38, %39
  store float %40, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999), align 4, !tbaa !5
  %41 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31998), align 8, !tbaa !5
  %42 = fmul float %39, %41
  store float %42, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %43 = fmul float %41, %34
  store float %43, ptr getelementptr inbounds ([32000 x float], ptr @d, i64 0, i64 31998), align 8, !tbaa !5
  %44 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %45 = add nuw nsw i32 %2, 1
  %46 = icmp eq i32 %45, 100000
  br i1 %46, label %23, label %1, !llvm.loop !13
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
