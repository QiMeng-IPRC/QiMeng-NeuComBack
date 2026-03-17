; ModuleID = 'task_ir_O3/s174_inner_ori.ll'
source_filename = "task_c/s174_inner.c"
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
define dso_local void @s174_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %.preheader4

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = icmp ult i32 %0, 8
  %6 = and i64 %4, 4294967288
  br i1 %5, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %3
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %4
  %8 = icmp eq i32 %0, 1
  %9 = add nuw nsw i64 %4, 1
  %10 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %9
  %11 = icmp eq i32 %0, 2
  %12 = add nuw nsw i64 %4, 2
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = icmp eq i32 %0, 3
  %15 = add nuw nsw i64 %4, 3
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  %17 = icmp eq i32 %0, 4
  %18 = add nuw nsw i64 %4, 4
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = icmp eq i32 %0, 5
  %21 = add nuw nsw i64 %4, 5
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = icmp eq i32 %0, 6
  %24 = add nuw nsw i64 %4, 6
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.us
  %26 = phi i32 [ %55, %.loopexit.us ], [ 0, %.split.us.preheader ]
  %27 = load float, ptr @a, align 64, !tbaa !5
  %28 = load float, ptr @b, align 64, !tbaa !5
  %29 = fadd float %27, %28
  store float %29, ptr %7, align 4, !tbaa !5
  br i1 %8, label %.loopexit.us, label %30, !llvm.loop !9

30:                                               ; preds = %.split.us
  %31 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 1), align 4, !tbaa !5
  %32 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 1), align 4, !tbaa !5
  %33 = fadd float %31, %32
  store float %33, ptr %10, align 4, !tbaa !5
  br i1 %11, label %.loopexit.us, label %34, !llvm.loop !9

34:                                               ; preds = %30
  %35 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 2), align 8, !tbaa !5
  %36 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 2), align 8, !tbaa !5
  %37 = fadd float %35, %36
  store float %37, ptr %13, align 4, !tbaa !5
  br i1 %14, label %.loopexit.us, label %38, !llvm.loop !9

38:                                               ; preds = %34
  %39 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 3), align 4, !tbaa !5
  %40 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 3), align 4, !tbaa !5
  %41 = fadd float %39, %40
  store float %41, ptr %16, align 4, !tbaa !5
  br i1 %17, label %.loopexit.us, label %42, !llvm.loop !9

42:                                               ; preds = %38
  %43 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 4), align 16, !tbaa !5
  %44 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 4), align 16, !tbaa !5
  %45 = fadd float %43, %44
  store float %45, ptr %19, align 4, !tbaa !5
  br i1 %20, label %.loopexit.us, label %46, !llvm.loop !9

46:                                               ; preds = %42
  %47 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 5), align 4, !tbaa !5
  %48 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 5), align 4, !tbaa !5
  %49 = fadd float %47, %48
  store float %49, ptr %22, align 4, !tbaa !5
  br i1 %23, label %.loopexit.us, label %50, !llvm.loop !9

50:                                               ; preds = %46
  %51 = load float, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 6), align 8, !tbaa !5
  %52 = load float, ptr getelementptr inbounds ([32000 x float], ptr @b, i64 0, i64 6), align 8, !tbaa !5
  %53 = fadd float %51, %52
  store float %53, ptr %25, align 4, !tbaa !5
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %50, %46, %42, %38, %34, %30, %.split.us
  %54 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %55 = add nuw nsw i32 %26, 1
  %56 = icmp eq i32 %55, 1000000
  br i1 %56, label %.loopexit3, label %.split.us, !llvm.loop !13

.split:                                           ; preds = %3
  %57 = icmp eq i64 %6, %4
  br i1 %57, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.split, %76
  %58 = phi i32 [ %78, %76 ], [ 0, %.split ]
  br label %59

59:                                               ; preds = %59, %.preheader.us
  %60 = phi i64 [ %74, %59 ], [ 0, %.preheader.us ]
  %61 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %60
  %62 = load <4 x float>, ptr %61, align 32, !tbaa !5
  %63 = getelementptr inbounds float, ptr %61, i64 4
  %64 = load <4 x float>, ptr %63, align 16, !tbaa !5
  %65 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %60
  %66 = load <4 x float>, ptr %65, align 32, !tbaa !5
  %67 = getelementptr inbounds float, ptr %65, i64 4
  %68 = load <4 x float>, ptr %67, align 16, !tbaa !5
  %69 = fadd <4 x float> %62, %66
  %70 = fadd <4 x float> %64, %68
  %71 = add nuw nsw i64 %60, %4
  %72 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %71
  store <4 x float> %69, ptr %72, align 4, !tbaa !5
  %73 = getelementptr inbounds float, ptr %72, i64 4
  store <4 x float> %70, ptr %73, align 4, !tbaa !5
  %74 = add nuw nsw i64 %60, 8
  %75 = icmp eq i64 %74, %4
  br i1 %75, label %76, label %59, !llvm.loop !14

76:                                               ; preds = %59
  %77 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %78 = add nuw nsw i32 %58, 1
  %79 = icmp eq i32 %78, 1000000
  br i1 %79, label %.loopexit3, label %.preheader.us, !llvm.loop !13

.preheader:                                       ; preds = %.split, %.loopexit
  %80 = phi i32 [ %109, %.loopexit ], [ 0, %.split ]
  br label %81

81:                                               ; preds = %.preheader, %81
  %82 = phi i64 [ %96, %81 ], [ 0, %.preheader ]
  %83 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %82
  %84 = load <4 x float>, ptr %83, align 32, !tbaa !5
  %85 = getelementptr inbounds float, ptr %83, i64 4
  %86 = load <4 x float>, ptr %85, align 16, !tbaa !5
  %87 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %82
  %88 = load <4 x float>, ptr %87, align 32, !tbaa !5
  %89 = getelementptr inbounds float, ptr %87, i64 4
  %90 = load <4 x float>, ptr %89, align 16, !tbaa !5
  %91 = fadd <4 x float> %84, %88
  %92 = fadd <4 x float> %86, %90
  %93 = add nuw nsw i64 %82, %4
  %94 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %93
  store <4 x float> %91, ptr %94, align 4, !tbaa !5
  %95 = getelementptr inbounds float, ptr %94, i64 4
  store <4 x float> %92, ptr %95, align 4, !tbaa !5
  %96 = add nuw nsw i64 %82, 8
  %97 = icmp eq i64 %96, %6
  br i1 %97, label %.preheader7, label %81, !llvm.loop !14

.preheader7:                                      ; preds = %81, %.preheader7
  %98 = phi i64 [ %106, %.preheader7 ], [ %6, %81 ]
  %99 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !5
  %101 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %98
  %102 = load float, ptr %101, align 4, !tbaa !5
  %103 = fadd float %100, %102
  %104 = add nuw nsw i64 %98, %4
  %105 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %104
  store float %103, ptr %105, align 4, !tbaa !5
  %106 = add nuw nsw i64 %98, 1
  %107 = icmp eq i64 %106, %4
  br i1 %107, label %.loopexit, label %.preheader7, !llvm.loop !9

.loopexit:                                        ; preds = %.preheader7
  %108 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %109 = add nuw nsw i32 %80, 1
  %110 = icmp eq i32 %109, 1000000
  br i1 %110, label %.loopexit3, label %.preheader, !llvm.loop !13

.preheader4:                                      ; preds = %1, %.preheader4
  %111 = phi i32 [ %113, %.preheader4 ], [ 0, %1 ]
  %112 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %113 = add nuw nsw i32 %111, 1
  %114 = icmp eq i32 %113, 1000000
  br i1 %114, label %.loopexit3, label %.preheader4, !llvm.loop !13

.loopexit3:                                       ; preds = %.preheader4, %.loopexit, %76, %.loopexit.us
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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !12, !11}
