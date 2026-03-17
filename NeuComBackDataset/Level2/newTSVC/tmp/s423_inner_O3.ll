; ModuleID = 'tmp/s423_inner.c'
source_filename = "tmp/s423_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@flat_2d_array = external local_unnamed_addr global [65536 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s423_inner(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i64
  %3 = sub i64 add (i64 ptrtoint (ptr @flat_2d_array to i64), i64 4), %2
  %4 = icmp ult i64 %3, 32
  %5 = or i1 %4, icmp ult (i64 sub (i64 add (i64 ptrtoint (ptr @flat_2d_array to i64), i64 4), i64 ptrtoint (ptr @a to i64)), i64 32)
  br label %6

6:                                                ; preds = %50, %1
  %7 = phi i32 [ 0, %1 ], [ %52, %50 ]
  br i1 %5, label %8, label %17

8:                                                ; preds = %17, %6
  %9 = phi i64 [ 0, %6 ], [ 31992, %17 ]
  %10 = getelementptr inbounds float, ptr %0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %13 = load float, ptr %12, align 32, !tbaa !5
  %14 = fadd float %11, %13
  %15 = or i64 %9, 1
  %16 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %15
  store float %14, ptr %16, align 4, !tbaa !5
  br label %54

17:                                               ; preds = %6, %34
  %18 = phi i64 [ %48, %34 ], [ 0, %6 ]
  %19 = getelementptr inbounds float, ptr %0, i64 %18
  %20 = load <4 x float>, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds float, ptr %19, i64 4
  %22 = load <4 x float>, ptr %21, align 4, !tbaa !5
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %24 = load <4 x float>, ptr %23, align 64, !tbaa !5
  %25 = getelementptr inbounds float, ptr %23, i64 4
  %26 = load <4 x float>, ptr %25, align 16, !tbaa !5
  %27 = fadd <4 x float> %20, %24
  %28 = fadd <4 x float> %22, %26
  %29 = or i64 %18, 1
  %30 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %29
  store <4 x float> %27, ptr %30, align 4, !tbaa !5
  %31 = getelementptr inbounds float, ptr %30, i64 4
  store <4 x float> %28, ptr %31, align 4, !tbaa !5
  %32 = or i64 %18, 8
  %33 = icmp eq i64 %32, 31992
  br i1 %33, label %8, label %34, !llvm.loop !9

34:                                               ; preds = %17
  %35 = getelementptr inbounds float, ptr %0, i64 %32
  %36 = load <4 x float>, ptr %35, align 4, !tbaa !5
  %37 = getelementptr inbounds float, ptr %35, i64 4
  %38 = load <4 x float>, ptr %37, align 4, !tbaa !5
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %40 = load <4 x float>, ptr %39, align 32, !tbaa !5
  %41 = getelementptr inbounds float, ptr %39, i64 4
  %42 = load <4 x float>, ptr %41, align 16, !tbaa !5
  %43 = fadd <4 x float> %36, %40
  %44 = fadd <4 x float> %38, %42
  %45 = or i64 %18, 9
  %46 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %45
  store <4 x float> %43, ptr %46, align 4, !tbaa !5
  %47 = getelementptr inbounds float, ptr %46, i64 4
  store <4 x float> %44, ptr %47, align 4, !tbaa !5
  %48 = add nuw nsw i64 %18, 16
  br label %17

49:                                               ; preds = %50
  ret void

50:                                               ; preds = %54
  %51 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %52 = add nuw nsw i32 %7, 1
  %53 = icmp eq i32 %52, 400000
  br i1 %53, label %49, label %6, !llvm.loop !13

54:                                               ; preds = %54, %8
  %55 = phi i64 [ %15, %8 ], [ %68, %54 ]
  %56 = getelementptr inbounds float, ptr %0, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !5
  %58 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %55
  %59 = load float, ptr %58, align 4, !tbaa !5
  %60 = fadd float %57, %59
  %61 = add nuw nsw i64 %55, 1
  %62 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %61
  store float %60, ptr %62, align 4, !tbaa !5
  %63 = getelementptr inbounds float, ptr %0, i64 %61
  %64 = load float, ptr %63, align 4, !tbaa !5
  %65 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %61
  %66 = load float, ptr %65, align 4, !tbaa !5
  %67 = fadd float %64, %66
  %68 = add nuw nsw i64 %55, 2
  %69 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %68
  store float %67, ptr %69, align 4, !tbaa !5
  %70 = icmp eq i64 %68, 31999
  br i1 %70, label %50, label %54, !llvm.loop !14
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
