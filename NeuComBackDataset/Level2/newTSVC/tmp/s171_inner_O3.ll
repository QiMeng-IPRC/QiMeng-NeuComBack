; ModuleID = 'tmp/s171_inner.c'
source_filename = "tmp/s171_inner.c"
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
define dso_local void @s171_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = icmp eq i32 %0, 1
  br label %4

4:                                                ; preds = %34, %1
  %5 = phi i32 [ 0, %1 ], [ %36, %34 ]
  br i1 %3, label %6, label %38

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %31, %6 ], [ 0, %4 ]
  %8 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %7
  %9 = load <4 x float>, ptr %8, align 64, !tbaa !5
  %10 = getelementptr inbounds float, ptr %8, i64 4
  %11 = load <4 x float>, ptr %10, align 16, !tbaa !5
  %12 = mul nsw i64 %7, %2
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load <4 x float>, ptr %13, align 64, !tbaa !5
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !5
  %17 = fadd <4 x float> %9, %14
  %18 = fadd <4 x float> %11, %16
  store <4 x float> %17, ptr %13, align 64, !tbaa !5
  store <4 x float> %18, ptr %15, align 16, !tbaa !5
  %19 = or i64 %7, 8
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load <4 x float>, ptr %20, align 32, !tbaa !5
  %22 = getelementptr inbounds float, ptr %20, i64 4
  %23 = load <4 x float>, ptr %22, align 16, !tbaa !5
  %24 = mul nsw i64 %19, %2
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  %26 = load <4 x float>, ptr %25, align 32, !tbaa !5
  %27 = getelementptr inbounds float, ptr %25, i64 4
  %28 = load <4 x float>, ptr %27, align 16, !tbaa !5
  %29 = fadd <4 x float> %21, %26
  %30 = fadd <4 x float> %23, %28
  store <4 x float> %29, ptr %25, align 32, !tbaa !5
  store <4 x float> %30, ptr %27, align 16, !tbaa !5
  %31 = add nuw nsw i64 %7, 16
  %32 = icmp eq i64 %31, 32000
  br i1 %32, label %34, label %6, !llvm.loop !9

33:                                               ; preds = %34
  ret void

34:                                               ; preds = %38, %6
  %35 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %36 = add nuw nsw i32 %5, 1
  %37 = icmp eq i32 %36, 100000
  br i1 %37, label %33, label %4, !llvm.loop !13

38:                                               ; preds = %4, %38
  %39 = phi i64 [ %53, %38 ], [ 0, %4 ]
  %40 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %39
  %41 = load float, ptr %40, align 8, !tbaa !5
  %42 = mul nsw i64 %39, %2
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %44 = load float, ptr %43, align 8, !tbaa !5
  %45 = fadd float %41, %44
  store float %45, ptr %43, align 8, !tbaa !5
  %46 = or i64 %39, 1
  %47 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = mul nsw i64 %46, %2
  %50 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !5
  %52 = fadd float %48, %51
  store float %52, ptr %50, align 4, !tbaa !5
  %53 = add nuw nsw i64 %39, 2
  %54 = icmp eq i64 %53, 32000
  br i1 %54, label %34, label %38, !llvm.loop !14
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
