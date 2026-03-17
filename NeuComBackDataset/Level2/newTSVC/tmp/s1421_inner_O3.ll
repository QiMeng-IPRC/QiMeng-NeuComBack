; ModuleID = 'tmp/s1421_inner.c'
source_filename = "tmp/s1421_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@xx = external local_unnamed_addr global ptr, align 8
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s1421_inner() local_unnamed_addr #0 {
  store ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 16000), ptr @xx, align 8, !tbaa !5
  br label %1

1:                                                ; preds = %0, %38
  %2 = phi i32 [ 0, %0 ], [ %40, %38 ]
  %3 = load ptr, ptr @xx, align 8, !tbaa !5
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 ptrtoint (ptr @b to i64), %4
  %6 = icmp ult i64 %5, 32
  %7 = or i1 %6, icmp ult (i64 sub (i64 ptrtoint (ptr @b to i64), i64 ptrtoint (ptr @a to i64)), i64 32)
  br i1 %7, label %42, label %8

8:                                                ; preds = %1, %8
  %9 = phi i64 [ %35, %8 ], [ 0, %1 ]
  %10 = getelementptr inbounds float, ptr %3, i64 %9
  %11 = load <4 x float>, ptr %10, align 4, !tbaa !9
  %12 = getelementptr inbounds float, ptr %10, i64 4
  %13 = load <4 x float>, ptr %12, align 4, !tbaa !9
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %15 = load <4 x float>, ptr %14, align 64, !tbaa !9
  %16 = getelementptr inbounds float, ptr %14, i64 4
  %17 = load <4 x float>, ptr %16, align 16, !tbaa !9
  %18 = fadd <4 x float> %11, %15
  %19 = fadd <4 x float> %13, %17
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %9
  store <4 x float> %18, ptr %20, align 64, !tbaa !9
  %21 = getelementptr inbounds float, ptr %20, i64 4
  store <4 x float> %19, ptr %21, align 16, !tbaa !9
  %22 = or i64 %9, 8
  %23 = getelementptr inbounds float, ptr %3, i64 %22
  %24 = load <4 x float>, ptr %23, align 4, !tbaa !9
  %25 = getelementptr inbounds float, ptr %23, i64 4
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !9
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %28 = load <4 x float>, ptr %27, align 32, !tbaa !9
  %29 = getelementptr inbounds float, ptr %27, i64 4
  %30 = load <4 x float>, ptr %29, align 16, !tbaa !9
  %31 = fadd <4 x float> %24, %28
  %32 = fadd <4 x float> %26, %30
  %33 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  store <4 x float> %31, ptr %33, align 32, !tbaa !9
  %34 = getelementptr inbounds float, ptr %33, i64 4
  store <4 x float> %32, ptr %34, align 16, !tbaa !9
  %35 = add nuw nsw i64 %9, 16
  %36 = icmp eq i64 %35, 16000
  br i1 %36, label %38, label %8, !llvm.loop !11

37:                                               ; preds = %38
  ret void

38:                                               ; preds = %8, %42
  %39 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %40 = add nuw nsw i32 %2, 1
  %41 = icmp eq i32 %40, 800000
  br i1 %41, label %37, label %1, !llvm.loop !15

42:                                               ; preds = %1, %42
  %43 = phi i64 [ %57, %42 ], [ 0, %1 ]
  %44 = getelementptr inbounds float, ptr %3, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !9
  %46 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  %47 = load float, ptr %46, align 8, !tbaa !9
  %48 = fadd float %45, %47
  %49 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %43
  store float %48, ptr %49, align 8, !tbaa !9
  %50 = or i64 %43, 1
  %51 = getelementptr inbounds float, ptr %3, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !9
  %53 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %50
  %54 = load float, ptr %53, align 4, !tbaa !9
  %55 = fadd float %52, %54
  %56 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %50
  store float %55, ptr %56, align 4, !tbaa !9
  %57 = add nuw nsw i64 %43, 2
  %58 = icmp eq i64 %57, 16000
  br i1 %58, label %38, label %42, !llvm.loop !16
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
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12, !13}
