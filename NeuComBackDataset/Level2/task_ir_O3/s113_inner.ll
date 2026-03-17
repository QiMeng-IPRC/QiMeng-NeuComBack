; ModuleID = 'task_ir_O3/s113_inner_ori.ll'
source_filename = "task_c/s113_inner.c"
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

1:                                                ; preds = %33, %0
  %2 = phi i32 [ 0, %0 ], [ %45, %33 ]
  %3 = load float, ptr @a, align 64, !tbaa !5
  %4 = insertelement <4 x float> poison, float %3, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 1), align 4, !tbaa !5
  %7 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 5), align 4, !tbaa !5
  %8 = fadd <4 x float> %5, %6
  %9 = fadd <4 x float> %5, %7
  store <4 x float> %8, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 1), align 4, !tbaa !5
  store <4 x float> %9, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 5), align 4, !tbaa !5
  br label %10

10:                                               ; preds = %1, %10
  %11 = phi i64 [ 0, %1 ], [ %21, %10 ]
  %12 = or i64 %11, 9
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load <4 x float>, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 4, !tbaa !5
  %17 = fadd <4 x float> %5, %14
  %18 = fadd <4 x float> %5, %16
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  store <4 x float> %17, ptr %19, align 4, !tbaa !5
  %20 = getelementptr inbounds float, ptr %19, i64 4
  store <4 x float> %18, ptr %20, align 4, !tbaa !5
  %21 = add nuw nsw i64 %11, 16
  %22 = or i64 %21, 1
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load <4 x float>, ptr %23, align 4, !tbaa !5
  %25 = getelementptr inbounds float, ptr %23, i64 4
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !5
  %27 = fadd <4 x float> %5, %24
  %28 = fadd <4 x float> %5, %26
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  store <4 x float> %27, ptr %29, align 4, !tbaa !5
  %30 = getelementptr inbounds float, ptr %29, i64 4
  store <4 x float> %28, ptr %30, align 4, !tbaa !5
  %31 = icmp eq i64 %21, 31984
  br i1 %31, label %33, label %10, !llvm.loop !9

32:                                               ; preds = %33
  ret void

33:                                               ; preds = %10
  %34 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31993), align 4, !tbaa !5
  %35 = insertelement <4 x float> poison, float %3, i64 0
  %36 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> zeroinitializer
  %37 = fadd <4 x float> %36, %34
  store <4 x float> %37, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31993), align 4, !tbaa !5
  %38 = load <2 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31997), align 4, !tbaa !5
  %39 = insertelement <2 x float> poison, float %3, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = fadd <2 x float> %40, %38
  store <2 x float> %41, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %42 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31999), align 4, !tbaa !5
  %43 = fadd float %3, %42
  store float %43, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999), align 4, !tbaa !5
  %44 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %45 = add nuw nsw i32 %2, 1
  %46 = icmp eq i32 %45, 400000
  br i1 %46, label %32, label %1, !llvm.loop !13
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
