; ModuleID = 'task_ir_O3/s423_inner_ori.ll'
source_filename = "task_c/s423_inner.c"
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
  %6 = getelementptr inbounds float, ptr %0, i64 4
  br i1 %5, label %.split.us, label %.split

.split.us:                                        ; preds = %1, %28
  %7 = phi i32 [ %30, %28 ], [ 0, %1 ]
  %8 = load float, ptr %0, align 4, !tbaa !5
  %9 = load float, ptr @a, align 64, !tbaa !5
  %10 = fadd float %8, %9
  store float %10, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 1), align 4, !tbaa !5
  br label %11

11:                                               ; preds = %11, %.split.us
  %12 = phi i64 [ 1, %.split.us ], [ %25, %11 ]
  %13 = getelementptr inbounds float, ptr %0, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fadd float %14, %16
  %18 = add nuw nsw i64 %12, 1
  %19 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %18
  store float %17, ptr %19, align 4, !tbaa !5
  %20 = getelementptr inbounds float, ptr %0, i64 %18
  %21 = load float, ptr %20, align 4, !tbaa !5
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = fadd float %21, %23
  %25 = add nuw nsw i64 %12, 2
  %26 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %25
  store float %24, ptr %26, align 4, !tbaa !5
  %27 = icmp eq i64 %25, 31999
  br i1 %27, label %28, label %11, !llvm.loop !9

28:                                               ; preds = %11
  %29 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %30 = add nuw nsw i32 %7, 1
  %31 = icmp eq i32 %30, 400000
  br i1 %31, label %.split3.us, label %.split.us, !llvm.loop !12

.split:                                           ; preds = %1
  %32 = getelementptr inbounds float, ptr %0, i64 31992
  %33 = getelementptr inbounds float, ptr %0, i64 31993
  %34 = getelementptr inbounds float, ptr %0, i64 31994
  %35 = getelementptr inbounds float, ptr %0, i64 31995
  %36 = getelementptr inbounds float, ptr %0, i64 31996
  %37 = getelementptr inbounds float, ptr %0, i64 31997
  %38 = getelementptr inbounds float, ptr %0, i64 31998
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %.split
  %39 = phi i32 [ 0, %.split ], [ %68, %.loopexit ]
  %40 = load <4 x float>, ptr %0, align 4, !tbaa !5
  %41 = load <4 x float>, ptr %6, align 4, !tbaa !5
  %42 = load <4 x float>, ptr @a, align 64, !tbaa !5
  %43 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 4), align 16, !tbaa !5
  %44 = fadd <4 x float> %40, %42
  %45 = fadd <4 x float> %41, %43
  store <4 x float> %44, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 1), align 4, !tbaa !5
  store <4 x float> %45, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 5), align 4, !tbaa !5
  br label %70

.loopexit:                                        ; preds = %70
  %46 = load float, ptr %32, align 4, !tbaa !5
  %47 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31992), align 32, !tbaa !5
  %48 = fadd float %46, %47
  store float %48, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31993), align 4, !tbaa !5
  %49 = load float, ptr %33, align 4, !tbaa !5
  %50 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31993), align 4, !tbaa !5
  %51 = fadd float %49, %50
  store float %51, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31994), align 8, !tbaa !5
  %52 = load float, ptr %34, align 4, !tbaa !5
  %53 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31994), align 8, !tbaa !5
  %54 = fadd float %52, %53
  store float %54, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31995), align 4, !tbaa !5
  %55 = load float, ptr %35, align 4, !tbaa !5
  %56 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31995), align 4, !tbaa !5
  %57 = fadd float %55, %56
  store float %57, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31996), align 16, !tbaa !5
  %58 = load float, ptr %36, align 4, !tbaa !5
  %59 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %60 = fadd float %58, %59
  store float %60, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31997), align 4, !tbaa !5
  %61 = load float, ptr %37, align 4, !tbaa !5
  %62 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %63 = fadd float %61, %62
  store float %63, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31998), align 8, !tbaa !5
  %64 = load float, ptr %38, align 4, !tbaa !5
  %65 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %66 = fadd float %64, %65
  store float %66, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31999), align 4, !tbaa !5
  %67 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %68 = add nuw nsw i32 %39, 1
  %69 = icmp eq i32 %68, 400000
  br i1 %69, label %.split3.us, label %.preheader, !llvm.loop !12

70:                                               ; preds = %.preheader, %70
  %71 = phi i64 [ 8, %.preheader ], [ %100, %70 ]
  %72 = phi i64 [ 0, %.preheader ], [ %86, %70 ]
  %73 = getelementptr inbounds float, ptr %0, i64 %71
  %74 = load <4 x float>, ptr %73, align 4, !tbaa !5
  %75 = getelementptr inbounds float, ptr %73, i64 4
  %76 = load <4 x float>, ptr %75, align 4, !tbaa !5
  %77 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %71
  %78 = load <4 x float>, ptr %77, align 32, !tbaa !5
  %79 = getelementptr inbounds float, ptr %77, i64 4
  %80 = load <4 x float>, ptr %79, align 16, !tbaa !5
  %81 = fadd <4 x float> %74, %78
  %82 = fadd <4 x float> %76, %80
  %83 = or i64 %72, 9
  %84 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %83
  store <4 x float> %81, ptr %84, align 4, !tbaa !5
  %85 = getelementptr inbounds float, ptr %84, i64 4
  store <4 x float> %82, ptr %85, align 4, !tbaa !5
  %86 = add nuw nsw i64 %72, 16
  %87 = getelementptr inbounds float, ptr %0, i64 %86
  %88 = load <4 x float>, ptr %87, align 4, !tbaa !5
  %89 = getelementptr inbounds float, ptr %87, i64 4
  %90 = load <4 x float>, ptr %89, align 4, !tbaa !5
  %91 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %86
  %92 = load <4 x float>, ptr %91, align 64, !tbaa !5
  %93 = getelementptr inbounds float, ptr %91, i64 4
  %94 = load <4 x float>, ptr %93, align 16, !tbaa !5
  %95 = fadd <4 x float> %88, %92
  %96 = fadd <4 x float> %90, %94
  %97 = or i64 %86, 1
  %98 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %97
  store <4 x float> %95, ptr %98, align 4, !tbaa !5
  %99 = getelementptr inbounds float, ptr %98, i64 4
  store <4 x float> %96, ptr %99, align 4, !tbaa !5
  %100 = or i64 %86, 8
  %101 = icmp eq i64 %100, 31992
  br i1 %101, label %.loopexit, label %70, !llvm.loop !13

.split3.us:                                       ; preds = %.loopexit, %28
  ret void
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10, !11, !14}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
