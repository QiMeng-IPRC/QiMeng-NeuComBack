; ModuleID = 'task_ir_O3/s175_inner_ori.ll'
source_filename = "task_c/s175_inner.c"
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
define dso_local void @s175_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = tail call i64 @llvm.smax.i64(i64 %2, i64 31999)
  %4 = add nsw i64 %3, -1
  %5 = udiv i64 %4, %2
  %6 = add i64 %5, 1
  %7 = icmp ugt i64 %5, 6
  %8 = icmp eq i32 %0, 1
  %9 = and i1 %8, %7
  %10 = and i64 %6, -8
  %11 = mul nsw i64 %10, %2
  br i1 %9, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %1
  %xtraiter = and i64 %6, 1
  %12 = icmp ult i64 %4, %2
  %unroll_iter = and i64 %6, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split

.split.us:                                        ; preds = %1
  %13 = icmp eq i64 %6, %10
  br i1 %13, label %.preheader.us.us, label %.preheader.us

.preheader.us.us:                                 ; preds = %.split.us, %33
  %14 = phi i32 [ %35, %33 ], [ 0, %.split.us ]
  br label %15

15:                                               ; preds = %15, %.preheader.us.us
  %16 = phi i64 [ %31, %15 ], [ 0, %.preheader.us.us ]
  %17 = mul i64 %16, %2
  %18 = add nsw i64 %17, %2
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load <4 x float>, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds float, ptr %19, i64 4
  %22 = load <4 x float>, ptr %21, align 4, !tbaa !5
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %17
  %24 = load <4 x float>, ptr %23, align 32, !tbaa !5
  %25 = getelementptr inbounds float, ptr %23, i64 4
  %26 = load <4 x float>, ptr %25, align 16, !tbaa !5
  %27 = fadd <4 x float> %20, %24
  %28 = fadd <4 x float> %22, %26
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  store <4 x float> %27, ptr %29, align 32, !tbaa !5
  %30 = getelementptr inbounds float, ptr %29, i64 4
  store <4 x float> %28, ptr %30, align 16, !tbaa !5
  %31 = add nuw nsw i64 %16, 8
  %32 = icmp eq i64 %31, %6
  br i1 %32, label %33, label %15, !llvm.loop !9

33:                                               ; preds = %15
  %34 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %35 = add nuw nsw i32 %14, 1
  %36 = icmp eq i32 %35, 100000
  br i1 %36, label %.split2.us, label %.preheader.us.us, !llvm.loop !13

.preheader.us:                                    ; preds = %.split.us, %.loopexit.us
  %37 = phi i32 [ %66, %.loopexit.us ], [ 0, %.split.us ]
  br label %38

38:                                               ; preds = %.preheader.us, %38
  %39 = phi i64 [ %54, %38 ], [ 0, %.preheader.us ]
  %40 = mul i64 %39, %2
  %41 = add nsw i64 %40, %2
  %42 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %41
  %43 = load <4 x float>, ptr %42, align 4, !tbaa !5
  %44 = getelementptr inbounds float, ptr %42, i64 4
  %45 = load <4 x float>, ptr %44, align 4, !tbaa !5
  %46 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %40
  %47 = load <4 x float>, ptr %46, align 32, !tbaa !5
  %48 = getelementptr inbounds float, ptr %46, i64 4
  %49 = load <4 x float>, ptr %48, align 16, !tbaa !5
  %50 = fadd <4 x float> %43, %47
  %51 = fadd <4 x float> %45, %49
  %52 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  store <4 x float> %50, ptr %52, align 32, !tbaa !5
  %53 = getelementptr inbounds float, ptr %52, i64 4
  store <4 x float> %51, ptr %53, align 16, !tbaa !5
  %54 = add nuw nsw i64 %39, 8
  %55 = icmp eq i64 %54, %10
  br i1 %55, label %.preheader, label %38, !llvm.loop !9

.preheader:                                       ; preds = %38, %.preheader
  %56 = phi i64 [ %57, %.preheader ], [ %11, %38 ]
  %57 = add nsw i64 %56, %2
  %58 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %57
  %59 = load float, ptr %58, align 4, !tbaa !5
  %60 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %56
  %61 = load float, ptr %60, align 4, !tbaa !5
  %62 = fadd float %59, %61
  %63 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %56
  store float %62, ptr %63, align 4, !tbaa !5
  %64 = icmp slt i64 %57, 31999
  br i1 %64, label %.preheader, label %.loopexit.us, !llvm.loop !14

.loopexit.us:                                     ; preds = %.preheader
  %65 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %66 = add nuw nsw i32 %37, 1
  %67 = icmp eq i32 %66, 100000
  br i1 %67, label %.split2.us, label %.preheader.us, !llvm.loop !13

.split:                                           ; preds = %.split.preheader, %.loopexit
  %68 = phi i32 [ %77, %.loopexit ], [ 0, %.split.preheader ]
  br i1 %12, label %.loopexit.unr-lcssa, label %.split.new

.split2.us:                                       ; preds = %.loopexit, %.loopexit.us, %33
  ret void

.loopexit.unr-lcssa:                              ; preds = %.split.new, %.split
  %.unr = phi i64 [ 0, %.split ], [ %87, %.split.new ]
  br i1 %lcmp.mod.not, label %.loopexit, label %.loopexit.epilog-lcssa

.loopexit.epilog-lcssa:                           ; preds = %.loopexit.unr-lcssa
  %69 = add nsw i64 %.unr, %2
  %70 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %69
  %71 = load float, ptr %70, align 4, !tbaa !5
  %72 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %.unr
  %73 = load float, ptr %72, align 4, !tbaa !5
  %74 = fadd float %71, %73
  %75 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %.unr
  store float %74, ptr %75, align 4, !tbaa !5
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.loopexit.epilog-lcssa
  %76 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %77 = add nuw nsw i32 %68, 1
  %78 = icmp eq i32 %77, 100000
  br i1 %78, label %.split2.us, label %.split, !llvm.loop !13

.split.new:                                       ; preds = %.split, %.split.new
  %79 = phi i64 [ %87, %.split.new ], [ 0, %.split ]
  %niter = phi i64 [ %niter.next.1, %.split.new ], [ 0, %.split ]
  %80 = add nsw i64 %79, %2
  %81 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %80
  %82 = load float, ptr %81, align 4, !tbaa !5
  %83 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %79
  %84 = load float, ptr %83, align 4, !tbaa !5
  %85 = fadd float %82, %84
  %86 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %79
  store float %85, ptr %86, align 4, !tbaa !5
  %87 = add nsw i64 %80, %2
  %88 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !5
  %90 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %80
  %91 = load float, ptr %90, align 4, !tbaa !5
  %92 = fadd float %89, %91
  %93 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %80
  store float %92, ptr %93, align 4, !tbaa !5
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.unr-lcssa, label %.split.new, !llvm.loop !14
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
