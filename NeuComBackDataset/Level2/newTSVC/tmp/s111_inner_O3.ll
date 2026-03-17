; ModuleID = 'tmp/s111_inner.c'
source_filename = "tmp/s111_inner.c"
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
define dso_local void @s111_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %26, %0
  %2 = phi i32 [ 0, %0 ], [ %40, %26 ]
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %23, %3 ]
  %5 = shl i64 %4, 1
  %6 = or i64 %5, 1
  %7 = or i64 %5, 3
  %8 = or i64 %5, 5
  %9 = or i64 %5, 7
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %5
  %11 = load <8 x float>, ptr %10, align 32, !tbaa !5
  %12 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %13 = load <8 x float>, ptr %12, align 4, !tbaa !5
  %14 = fadd <8 x float> %11, %13
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %19 = extractelement <8 x float> %14, i64 0
  store float %19, ptr %15, align 4, !tbaa !5
  %20 = extractelement <8 x float> %14, i64 2
  store float %20, ptr %16, align 4, !tbaa !5
  %21 = extractelement <8 x float> %14, i64 4
  store float %21, ptr %17, align 4, !tbaa !5
  %22 = extractelement <8 x float> %14, i64 6
  store float %22, ptr %18, align 4, !tbaa !5
  %23 = add nuw i64 %4, 4
  %24 = icmp eq i64 %23, 15996
  br i1 %24, label %26, label %3, !llvm.loop !9

25:                                               ; preds = %26
  ret void

26:                                               ; preds = %3
  %27 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31992), align 32, !tbaa !5
  %28 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31993), align 4, !tbaa !5
  %29 = fadd float %27, %28
  store float %29, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31993), align 4, !tbaa !5
  %30 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31994), align 8, !tbaa !5
  %31 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31995), align 4, !tbaa !5
  %32 = fadd float %30, %31
  store float %32, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31995), align 4, !tbaa !5
  %33 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %34 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31997), align 4, !tbaa !5
  %35 = fadd float %33, %34
  store float %35, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %36 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %37 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 31999), align 4, !tbaa !5
  %38 = fadd float %36, %37
  store float %38, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999), align 4, !tbaa !5
  %39 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %40 = add nuw nsw i32 %2, 1
  %41 = icmp eq i32 %40, 200000
  br i1 %41, label %25, label %1, !llvm.loop !13
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
