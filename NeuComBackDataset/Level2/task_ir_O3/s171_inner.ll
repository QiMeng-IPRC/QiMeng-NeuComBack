; ModuleID = 'task_ir_O3/s171_inner_ori.ll'
source_filename = "task_c/s171_inner.c"
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
  br i1 %3, label %.preheader.us, label %.preheader1

.preheader.us:                                    ; preds = %1, %.loopexit.us
  %4 = phi i32 [ %33, %.loopexit.us ], [ 0, %1 ]
  br label %5

5:                                                ; preds = %.preheader.us, %5
  %6 = phi i64 [ %30, %5 ], [ 0, %.preheader.us ]
  %7 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %6
  %8 = load <4 x float>, ptr %7, align 64, !tbaa !5
  %9 = getelementptr inbounds float, ptr %7, i64 4
  %10 = load <4 x float>, ptr %9, align 16, !tbaa !5
  %11 = mul nsw i64 %6, %2
  %12 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %13 = load <4 x float>, ptr %12, align 64, !tbaa !5
  %14 = getelementptr inbounds float, ptr %12, i64 4
  %15 = load <4 x float>, ptr %14, align 16, !tbaa !5
  %16 = fadd <4 x float> %8, %13
  %17 = fadd <4 x float> %10, %15
  store <4 x float> %16, ptr %12, align 64, !tbaa !5
  store <4 x float> %17, ptr %14, align 16, !tbaa !5
  %18 = or i64 %6, 8
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load <4 x float>, ptr %19, align 32, !tbaa !5
  %21 = getelementptr inbounds float, ptr %19, i64 4
  %22 = load <4 x float>, ptr %21, align 16, !tbaa !5
  %23 = mul nsw i64 %18, %2
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load <4 x float>, ptr %24, align 32, !tbaa !5
  %26 = getelementptr inbounds float, ptr %24, i64 4
  %27 = load <4 x float>, ptr %26, align 16, !tbaa !5
  %28 = fadd <4 x float> %20, %25
  %29 = fadd <4 x float> %22, %27
  store <4 x float> %28, ptr %24, align 32, !tbaa !5
  store <4 x float> %29, ptr %26, align 16, !tbaa !5
  %30 = add nuw nsw i64 %6, 16
  %31 = icmp eq i64 %30, 32000
  br i1 %31, label %.loopexit.us, label %5, !llvm.loop !9

.loopexit.us:                                     ; preds = %5
  %32 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %33 = add nuw nsw i32 %4, 1
  %34 = icmp eq i32 %33, 100000
  br i1 %34, label %.split4.us, label %.preheader.us, !llvm.loop !13

.preheader1:                                      ; preds = %1, %.loopexit2
  %35 = phi i32 [ %37, %.loopexit2 ], [ 0, %1 ]
  br label %39

.split4.us:                                       ; preds = %.loopexit2, %.loopexit.us
  ret void

.loopexit2:                                       ; preds = %39
  %36 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %37 = add nuw nsw i32 %35, 1
  %38 = icmp eq i32 %37, 100000
  br i1 %38, label %.split4.us, label %.preheader1, !llvm.loop !13

39:                                               ; preds = %.preheader1, %39
  %40 = phi i64 [ %54, %39 ], [ 0, %.preheader1 ]
  %41 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %40
  %42 = load float, ptr %41, align 8, !tbaa !5
  %43 = mul nsw i64 %40, %2
  %44 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  %45 = load float, ptr %44, align 8, !tbaa !5
  %46 = fadd float %42, %45
  store float %46, ptr %44, align 8, !tbaa !5
  %47 = or i64 %40, 1
  %48 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !5
  %50 = mul nsw i64 %47, %2
  %51 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !5
  %53 = fadd float %49, %52
  store float %53, ptr %51, align 4, !tbaa !5
  %54 = add nuw nsw i64 %40, 2
  %55 = icmp eq i64 %54, 32000
  br i1 %55, label %.loopexit2, label %39, !llvm.loop !14
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
