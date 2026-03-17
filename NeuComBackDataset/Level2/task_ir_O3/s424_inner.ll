; ModuleID = 'task_ir_O3/s424_inner_ori.ll'
source_filename = "task_c/s424_inner.c"
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
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = getelementptr inbounds float, ptr %0, i64 5
  br i1 %8, label %.split.us, label %.split

.split.us:                                        ; preds = %1, %32
  %11 = phi i32 [ %34, %32 ], [ 0, %1 ]
  %12 = load float, ptr @flat_2d_array, align 64, !tbaa !5
  %13 = load float, ptr @a, align 64, !tbaa !5
  %14 = fadd float %12, %13
  store float %14, ptr %9, align 4, !tbaa !5
  br label %15

15:                                               ; preds = %15, %.split.us
  %16 = phi i64 [ 1, %.split.us ], [ %29, %15 ]
  %17 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = fadd float %18, %20
  %22 = add nuw nsw i64 %16, 1
  %23 = getelementptr inbounds float, ptr %0, i64 %22
  store float %21, ptr %23, align 4, !tbaa !5
  %24 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %22
  %25 = load float, ptr %24, align 4, !tbaa !5
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %27 = load float, ptr %26, align 4, !tbaa !5
  %28 = fadd float %25, %27
  %29 = add nuw nsw i64 %16, 2
  %30 = getelementptr inbounds float, ptr %0, i64 %29
  store float %28, ptr %30, align 4, !tbaa !5
  %31 = icmp eq i64 %29, 31999
  br i1 %31, label %32, label %15, !llvm.loop !9

32:                                               ; preds = %15
  %33 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %34 = add nuw nsw i32 %11, 1
  %35 = icmp eq i32 %34, 400000
  br i1 %35, label %.split3.us, label %.split.us, !llvm.loop !12

.split:                                           ; preds = %1
  %36 = getelementptr inbounds float, ptr %0, i64 31993
  %37 = getelementptr inbounds float, ptr %0, i64 31994
  %38 = getelementptr inbounds float, ptr %0, i64 31995
  %39 = getelementptr inbounds float, ptr %0, i64 31996
  %40 = getelementptr inbounds float, ptr %0, i64 31997
  %41 = getelementptr inbounds float, ptr %0, i64 31998
  %42 = getelementptr inbounds float, ptr %0, i64 31999
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %.split
  %43 = phi i32 [ 0, %.split ], [ %72, %.loopexit ]
  %44 = load <4 x float>, ptr @flat_2d_array, align 64, !tbaa !5
  %45 = load <4 x float>, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 4), align 16, !tbaa !5
  %46 = load <4 x float>, ptr @a, align 64, !tbaa !5
  %47 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 4), align 16, !tbaa !5
  %48 = fadd <4 x float> %44, %46
  %49 = fadd <4 x float> %45, %47
  store <4 x float> %48, ptr %9, align 4, !tbaa !5
  store <4 x float> %49, ptr %10, align 4, !tbaa !5
  br label %74

.loopexit:                                        ; preds = %74
  %50 = load float, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31992), align 32, !tbaa !5
  %51 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31992), align 32, !tbaa !5
  %52 = fadd float %50, %51
  store float %52, ptr %36, align 4, !tbaa !5
  %53 = load float, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31993), align 4, !tbaa !5
  %54 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31993), align 4, !tbaa !5
  %55 = fadd float %53, %54
  store float %55, ptr %37, align 4, !tbaa !5
  %56 = load float, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31994), align 8, !tbaa !5
  %57 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31994), align 8, !tbaa !5
  %58 = fadd float %56, %57
  store float %58, ptr %38, align 4, !tbaa !5
  %59 = load float, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31995), align 4, !tbaa !5
  %60 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31995), align 4, !tbaa !5
  %61 = fadd float %59, %60
  store float %61, ptr %39, align 4, !tbaa !5
  %62 = load float, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31996), align 16, !tbaa !5
  %63 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31996), align 16, !tbaa !5
  %64 = fadd float %62, %63
  store float %64, ptr %40, align 4, !tbaa !5
  %65 = load float, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31997), align 4, !tbaa !5
  %66 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31997), align 4, !tbaa !5
  %67 = fadd float %65, %66
  store float %67, ptr %41, align 4, !tbaa !5
  %68 = load float, ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 31998), align 8, !tbaa !5
  %69 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31998), align 8, !tbaa !5
  %70 = fadd float %68, %69
  store float %70, ptr %42, align 4, !tbaa !5
  %71 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %72 = add nuw nsw i32 %43, 1
  %73 = icmp eq i32 %72, 400000
  br i1 %73, label %.split3.us, label %.preheader, !llvm.loop !12

74:                                               ; preds = %.preheader, %74
  %75 = phi i64 [ 8, %.preheader ], [ %104, %74 ]
  %76 = phi i64 [ 0, %.preheader ], [ %90, %74 ]
  %77 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %75
  %78 = load <4 x float>, ptr %77, align 32, !tbaa !5
  %79 = getelementptr inbounds float, ptr %77, i64 4
  %80 = load <4 x float>, ptr %79, align 16, !tbaa !5
  %81 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %75
  %82 = load <4 x float>, ptr %81, align 32, !tbaa !5
  %83 = getelementptr inbounds float, ptr %81, i64 4
  %84 = load <4 x float>, ptr %83, align 16, !tbaa !5
  %85 = fadd <4 x float> %78, %82
  %86 = fadd <4 x float> %80, %84
  %87 = or i64 %76, 9
  %88 = getelementptr inbounds float, ptr %0, i64 %87
  store <4 x float> %85, ptr %88, align 4, !tbaa !5
  %89 = getelementptr inbounds float, ptr %88, i64 4
  store <4 x float> %86, ptr %89, align 4, !tbaa !5
  %90 = add nuw nsw i64 %76, 16
  %91 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %90
  %92 = load <4 x float>, ptr %91, align 64, !tbaa !5
  %93 = getelementptr inbounds float, ptr %91, i64 4
  %94 = load <4 x float>, ptr %93, align 16, !tbaa !5
  %95 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %90
  %96 = load <4 x float>, ptr %95, align 64, !tbaa !5
  %97 = getelementptr inbounds float, ptr %95, i64 4
  %98 = load <4 x float>, ptr %97, align 16, !tbaa !5
  %99 = fadd <4 x float> %92, %96
  %100 = fadd <4 x float> %94, %98
  %101 = or i64 %90, 1
  %102 = getelementptr inbounds float, ptr %0, i64 %101
  store <4 x float> %99, ptr %102, align 4, !tbaa !5
  %103 = getelementptr inbounds float, ptr %102, i64 4
  store <4 x float> %100, ptr %103, align 4, !tbaa !5
  %104 = or i64 %90, 8
  %105 = icmp eq i64 %104, 31992
  br i1 %105, label %.loopexit, label %74, !llvm.loop !13

.split3.us:                                       ; preds = %.loopexit, %32
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
