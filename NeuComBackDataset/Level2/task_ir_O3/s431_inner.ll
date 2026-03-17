; ModuleID = 'task_ir_O3/s431_inner_ori.ll'
source_filename = "task_c/s431_inner.c"
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
define dso_local void @s431_inner(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = mul nsw i64 %2, -4
  %4 = icmp ult i64 %3, 32
  br i1 %4, label %.preheader.us, label %.preheader1

.preheader.us:                                    ; preds = %1, %.loopexit.us
  %5 = phi i32 [ %26, %.loopexit.us ], [ 0, %1 ]
  br label %6

6:                                                ; preds = %.preheader.us, %6
  %7 = phi i64 [ %23, %6 ], [ 0, %.preheader.us ]
  %8 = add nsw i64 %7, %2
  %9 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %7
  %12 = load float, ptr %11, align 8, !tbaa !5
  %13 = fadd float %10, %12
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %7
  store float %13, ptr %14, align 8, !tbaa !5
  %15 = or i64 %7, 1
  %16 = add nsw i64 %15, %2
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %20 = load float, ptr %19, align 4, !tbaa !5
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  store float %21, ptr %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %7, 2
  %24 = icmp eq i64 %23, 32000
  br i1 %24, label %.loopexit.us, label %6, !llvm.loop !9

.loopexit.us:                                     ; preds = %6
  %25 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %26 = add nuw nsw i32 %5, 1
  %27 = icmp eq i32 %26, 1000000
  br i1 %27, label %.split4.us, label %.preheader.us, !llvm.loop !12

.preheader1:                                      ; preds = %1, %.loopexit2
  %28 = phi i32 [ %47, %.loopexit2 ], [ 0, %1 ]
  br label %29

29:                                               ; preds = %.preheader1, %29
  %30 = phi i64 [ %44, %29 ], [ 0, %.preheader1 ]
  %31 = add nsw i64 %30, %2
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load <4 x float>, ptr %32, align 4, !tbaa !5
  %34 = getelementptr inbounds float, ptr %32, i64 4
  %35 = load <4 x float>, ptr %34, align 4, !tbaa !5
  %36 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %30
  %37 = load <4 x float>, ptr %36, align 32, !tbaa !5
  %38 = getelementptr inbounds float, ptr %36, i64 4
  %39 = load <4 x float>, ptr %38, align 16, !tbaa !5
  %40 = fadd <4 x float> %33, %37
  %41 = fadd <4 x float> %35, %39
  %42 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  store <4 x float> %40, ptr %42, align 32, !tbaa !5
  %43 = getelementptr inbounds float, ptr %42, i64 4
  store <4 x float> %41, ptr %43, align 16, !tbaa !5
  %44 = add nuw nsw i64 %30, 8
  %45 = icmp eq i64 %44, 32000
  br i1 %45, label %.loopexit2, label %29, !llvm.loop !13

.split4.us:                                       ; preds = %.loopexit2, %.loopexit.us
  ret void

.loopexit2:                                       ; preds = %29
  %46 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %47 = add nuw nsw i32 %28, 1
  %48 = icmp eq i32 %47, 1000000
  br i1 %48, label %.split4.us, label %.preheader1, !llvm.loop !12
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
