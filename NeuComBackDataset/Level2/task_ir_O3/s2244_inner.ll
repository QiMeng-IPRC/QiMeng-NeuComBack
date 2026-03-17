; ModuleID = 'task_ir_O3/s2244_inner_ori.ll'
source_filename = "task_c/s2244_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s2244_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %19, %0
  %2 = phi i32 [ 0, %0 ], [ %40, %19 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %16, %3 ]
  %5 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %4
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !5
  %7 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %4
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !5
  %9 = fadd <4 x float> %6, %8
  %10 = or i64 %4, 1
  %11 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  store <4 x float> %9, ptr %11, align 4, !tbaa !5
  %12 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %4
  %13 = load <4 x float>, ptr %12, align 16, !tbaa !5
  %14 = fadd <4 x float> %6, %13
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  store <4 x float> %14, ptr %15, align 16, !tbaa !5
  %16 = add nuw nsw i64 %4, 4
  %17 = icmp eq i64 %16, 31996
  br i1 %17, label %19, label %3, !llvm.loop !9

18:                                               ; preds = %19
  ret void

19:                                               ; preds = %3
  %20 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31996), align 16
  %21 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31996), align 16, !tbaa !5
  %22 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 31996), align 16
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %24 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x float> %23, float %21, i64 1
  %26 = fadd <2 x float> %24, %25
  store <2 x float> %26, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %27 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31997), align 4, !tbaa !5
  %28 = extractelement <4 x float> %22, i64 1
  %29 = shufflevector <4 x float> %20, <4 x float> undef, <2 x i32> <i32 1, i32 1>
  %30 = insertelement <2 x float> poison, float %28, i64 0
  %31 = insertelement <2 x float> %30, float %27, i64 1
  %32 = fadd <2 x float> %29, %31
  store <2 x float> %32, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %33 = load float, ptr getelementptr inbounds ([32000 x float], ptr @e, i64 0, i64 31998), align 8, !tbaa !5
  %34 = extractelement <4 x float> %22, i64 2
  %35 = shufflevector <4 x float> %20, <4 x float> undef, <2 x i32> <i32 2, i32 2>
  %36 = insertelement <2 x float> poison, float %34, i64 0
  %37 = insertelement <2 x float> %36, float %33, i64 1
  %38 = fadd <2 x float> %35, %37
  store <2 x float> %38, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %39 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %40 = add nuw nsw i32 %2, 1
  %41 = icmp eq i32 %40, 100000
  br i1 %41, label %18, label %1, !llvm.loop !13
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
