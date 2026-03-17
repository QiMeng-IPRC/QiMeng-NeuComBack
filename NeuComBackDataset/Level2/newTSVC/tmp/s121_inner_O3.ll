; ModuleID = 'tmp/s121_inner.c'
source_filename = "tmp/s121_inner.c"
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
define dso_local void @s121_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %21, %0
  %2 = phi i32 [ 0, %0 ], [ %44, %21 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %18, %3 ]
  %5 = or i64 %4, 1
  %6 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %7 = load <4 x float>, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %6, i64 4
  %9 = load <4 x float>, ptr %8, align 4, !tbaa !5
  %10 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %11 = load <4 x float>, ptr %10, align 32, !tbaa !5
  %12 = getelementptr inbounds float, ptr %10, i64 4
  %13 = load <4 x float>, ptr %12, align 16, !tbaa !5
  %14 = fadd <4 x float> %7, %11
  %15 = fadd <4 x float> %9, %13
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  store <4 x float> %14, ptr %16, align 32, !tbaa !5
  %17 = getelementptr inbounds float, ptr %16, i64 4
  store <4 x float> %15, ptr %17, align 16, !tbaa !5
  %18 = add nuw i64 %4, 8
  %19 = icmp eq i64 %18, 31992
  br i1 %19, label %21, label %3, !llvm.loop !9

20:                                               ; preds = %21
  ret void

21:                                               ; preds = %3
  %22 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31993), align 4, !tbaa !5
  %23 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31992), align 32, !tbaa !5
  %24 = fadd float %22, %23
  store float %24, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31992), align 32, !tbaa !5
  %25 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31994), align 8, !tbaa !5
  %26 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31993), align 4, !tbaa !5
  %27 = fadd float %25, %26
  store float %27, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31993), align 4, !tbaa !5
  %28 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31995), align 4, !tbaa !5
  %29 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31994), align 8, !tbaa !5
  %30 = fadd float %28, %29
  store float %30, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31994), align 8, !tbaa !5
  %31 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %32 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31995), align 4, !tbaa !5
  %33 = fadd float %31, %32
  store float %33, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31995), align 4, !tbaa !5
  %34 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %35 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31996), align 16, !tbaa !5
  %36 = fadd float %34, %35
  store float %36, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %37 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %38 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31997), align 4, !tbaa !5
  %39 = fadd float %37, %38
  store float %39, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %40 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999), align 4, !tbaa !5
  %41 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %42 = fadd float %40, %41
  store float %42, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %43 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %44 = add nuw nsw i32 %2, 1
  %45 = icmp eq i32 %44, 300000
  br i1 %45, label %20, label %1, !llvm.loop !13
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
