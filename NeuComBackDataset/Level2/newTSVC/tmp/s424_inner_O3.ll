; ModuleID = 'tmp/s424_inner.c'
source_filename = "tmp/s424_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flat_2d_array = external local_unnamed_addr global [65536 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s424_inner(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i64
  %3 = add i64 %2, 4
  %4 = sub i64 %3, ptrtoint (ptr @flat_2d_array to i64)
  %5 = icmp ult i64 %4, 32
  %6 = sub i64 %3, ptrtoint (ptr @a to i64)
  %7 = icmp ult i64 %6, 32
  %8 = or i1 %5, %7
  br label %9

9:                                                ; preds = %53, %1
  %10 = phi i32 [ 0, %1 ], [ %55, %53 ]
  br i1 %8, label %11, label %20

11:                                               ; preds = %20, %9
  %12 = phi i64 [ 0, %9 ], [ 31992, %20 ]
  %13 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %12
  %14 = load float, ptr %13, align 32, !tbaa !5
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %16 = load float, ptr %15, align 32, !tbaa !5
  %17 = fadd float %14, %16
  %18 = or i64 %12, 1
  %19 = getelementptr inbounds float, ptr %0, i64 %18
  store float %17, ptr %19, align 4, !tbaa !5
  br label %57

20:                                               ; preds = %9, %37
  %21 = phi i64 [ %51, %37 ], [ 0, %9 ]
  %22 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %21
  %23 = load <4 x float>, ptr %22, align 64, !tbaa !5
  %24 = getelementptr inbounds float, ptr %22, i64 4
  %25 = load <4 x float>, ptr %24, align 16, !tbaa !5
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %27 = load <4 x float>, ptr %26, align 64, !tbaa !5
  %28 = getelementptr inbounds float, ptr %26, i64 4
  %29 = load <4 x float>, ptr %28, align 16, !tbaa !5
  %30 = fadd <4 x float> %23, %27
  %31 = fadd <4 x float> %25, %29
  %32 = or i64 %21, 1
  %33 = getelementptr inbounds float, ptr %0, i64 %32
  store <4 x float> %30, ptr %33, align 4, !tbaa !5
  %34 = getelementptr inbounds float, ptr %33, i64 4
  store <4 x float> %31, ptr %34, align 4, !tbaa !5
  %35 = or i64 %21, 8
  %36 = icmp eq i64 %35, 31992
  br i1 %36, label %11, label %37, !llvm.loop !9

37:                                               ; preds = %20
  %38 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %35
  %39 = load <4 x float>, ptr %38, align 32, !tbaa !5
  %40 = getelementptr inbounds float, ptr %38, i64 4
  %41 = load <4 x float>, ptr %40, align 16, !tbaa !5
  %42 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  %43 = load <4 x float>, ptr %42, align 32, !tbaa !5
  %44 = getelementptr inbounds float, ptr %42, i64 4
  %45 = load <4 x float>, ptr %44, align 16, !tbaa !5
  %46 = fadd <4 x float> %39, %43
  %47 = fadd <4 x float> %41, %45
  %48 = or i64 %21, 9
  %49 = getelementptr inbounds float, ptr %0, i64 %48
  store <4 x float> %46, ptr %49, align 4, !tbaa !5
  %50 = getelementptr inbounds float, ptr %49, i64 4
  store <4 x float> %47, ptr %50, align 4, !tbaa !5
  %51 = add nuw nsw i64 %21, 16
  br label %20

52:                                               ; preds = %53
  ret void

53:                                               ; preds = %57
  %54 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %55 = add nuw nsw i32 %10, 1
  %56 = icmp eq i32 %55, 400000
  br i1 %56, label %52, label %9, !llvm.loop !13

57:                                               ; preds = %57, %11
  %58 = phi i64 [ %18, %11 ], [ %71, %57 ]
  %59 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !5
  %61 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %58
  %62 = load float, ptr %61, align 4, !tbaa !5
  %63 = fadd float %60, %62
  %64 = add nuw nsw i64 %58, 1
  %65 = getelementptr inbounds float, ptr %0, i64 %64
  store float %63, ptr %65, align 4, !tbaa !5
  %66 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %64
  %67 = load float, ptr %66, align 4, !tbaa !5
  %68 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %64
  %69 = load float, ptr %68, align 4, !tbaa !5
  %70 = fadd float %67, %69
  %71 = add nuw nsw i64 %58, 2
  %72 = getelementptr inbounds float, ptr %0, i64 %71
  store float %70, ptr %72, align 4, !tbaa !5
  %73 = icmp eq i64 %71, 31999
  br i1 %73, label %53, label %57, !llvm.loop !14
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
