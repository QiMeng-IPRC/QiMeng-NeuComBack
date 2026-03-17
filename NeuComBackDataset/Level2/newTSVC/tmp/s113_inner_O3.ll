; ModuleID = 'tmp/s113_inner.c'
source_filename = "tmp/s113_inner.c"
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
define dso_local void @s113_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %32
  %2 = phi i32 [ 0, %0 ], [ %48, %32 ]
  %3 = load float, ptr @a, align 64, !tbaa !5
  %4 = insertelement <4 x float> poison, float %3, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = insertelement <4 x float> poison, float %3, i64 0
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  br label %8

8:                                                ; preds = %20, %1
  %9 = phi i64 [ 0, %1 ], [ %30, %20 ]
  %10 = or i64 %9, 1
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %10
  %12 = load <4 x float>, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %11, i64 4
  %14 = load <4 x float>, ptr %13, align 4, !tbaa !5
  %15 = fadd <4 x float> %5, %12
  %16 = fadd <4 x float> %7, %14
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  store <4 x float> %15, ptr %17, align 4, !tbaa !5
  %18 = getelementptr inbounds float, ptr %17, i64 4
  store <4 x float> %16, ptr %18, align 4, !tbaa !5
  %19 = icmp eq i64 %9, 31984
  br i1 %19, label %32, label %20, !llvm.loop !9

20:                                               ; preds = %8
  %21 = or i64 %9, 9
  %22 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %21
  %23 = load <4 x float>, ptr %22, align 4, !tbaa !5
  %24 = getelementptr inbounds float, ptr %22, i64 4
  %25 = load <4 x float>, ptr %24, align 4, !tbaa !5
  %26 = fadd <4 x float> %5, %23
  %27 = fadd <4 x float> %7, %25
  %28 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  store <4 x float> %26, ptr %28, align 4, !tbaa !5
  %29 = getelementptr inbounds float, ptr %28, i64 4
  store <4 x float> %27, ptr %29, align 4, !tbaa !5
  %30 = add nuw nsw i64 %9, 16
  br label %8

31:                                               ; preds = %32
  ret void

32:                                               ; preds = %8
  %33 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31993), align 4, !tbaa !5
  %34 = fadd float %3, %33
  store float %34, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31993), align 4, !tbaa !5
  %35 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31994), align 8, !tbaa !5
  %36 = fadd float %3, %35
  store float %36, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31994), align 8, !tbaa !5
  %37 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31995), align 4, !tbaa !5
  %38 = fadd float %3, %37
  store float %38, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31995), align 4, !tbaa !5
  %39 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31996), align 16, !tbaa !5
  %40 = fadd float %3, %39
  store float %40, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %41 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31997), align 4, !tbaa !5
  %42 = fadd float %3, %41
  store float %42, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %43 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31998), align 8, !tbaa !5
  %44 = fadd float %3, %43
  store float %44, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %45 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31999), align 4, !tbaa !5
  %46 = fadd float %3, %45
  store float %46, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999), align 4, !tbaa !5
  %47 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %48 = add nuw nsw i32 %2, 1
  %49 = icmp eq i32 %48, 400000
  br i1 %49, label %31, label %1, !llvm.loop !13
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
