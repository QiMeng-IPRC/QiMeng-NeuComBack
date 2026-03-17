; ModuleID = 'task_ir_O3/s422_inner_ori.ll'
source_filename = "task_c/s422_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flat_2d_array = external global [65536 x float], align 64
@xx = external local_unnamed_addr global ptr, align 8
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s422_inner() local_unnamed_addr #0 {
  store ptr getelementptr inbounds ([65536 x float], ptr @flat_2d_array, i64 0, i64 4), ptr @xx, align 8, !tbaa !5
  br label %1

1:                                                ; preds = %.loopexit, %0
  %2 = phi i32 [ 0, %0 ], [ %40, %.loopexit ]
  %3 = load ptr, ptr @xx, align 8, !tbaa !5
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, add (i64 ptrtoint (ptr @flat_2d_array to i64), i64 32)
  %6 = icmp ult i64 %5, 32
  %7 = sub i64 %4, ptrtoint (ptr @a to i64)
  %8 = icmp ult i64 %7, 32
  %9 = or i1 %6, %8
  br i1 %9, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %1, %.preheader1
  %10 = phi i64 [ %24, %.preheader1 ], [ 0, %1 ]
  %11 = or i64 %10, 8
  %12 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %11
  %13 = load <4 x float>, ptr %12, align 32, !tbaa !9
  %14 = getelementptr inbounds float, ptr %12, i64 4
  %15 = load <4 x float>, ptr %14, align 16, !tbaa !9
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %17 = load <4 x float>, ptr %16, align 64, !tbaa !9
  %18 = getelementptr inbounds float, ptr %16, i64 4
  %19 = load <4 x float>, ptr %18, align 16, !tbaa !9
  %20 = fadd <4 x float> %13, %17
  %21 = fadd <4 x float> %15, %19
  %22 = getelementptr inbounds float, ptr %3, i64 %10
  store <4 x float> %20, ptr %22, align 4, !tbaa !9
  %23 = getelementptr inbounds float, ptr %22, i64 4
  store <4 x float> %21, ptr %23, align 4, !tbaa !9
  %24 = add nuw nsw i64 %10, 16
  %25 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %24
  %26 = load <4 x float>, ptr %25, align 64, !tbaa !9
  %27 = getelementptr inbounds float, ptr %25, i64 4
  %28 = load <4 x float>, ptr %27, align 16, !tbaa !9
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %30 = load <4 x float>, ptr %29, align 32, !tbaa !9
  %31 = getelementptr inbounds float, ptr %29, i64 4
  %32 = load <4 x float>, ptr %31, align 16, !tbaa !9
  %33 = fadd <4 x float> %26, %30
  %34 = fadd <4 x float> %28, %32
  %35 = getelementptr inbounds float, ptr %3, i64 %11
  store <4 x float> %33, ptr %35, align 4, !tbaa !9
  %36 = getelementptr inbounds float, ptr %35, i64 4
  store <4 x float> %34, ptr %36, align 4, !tbaa !9
  %37 = icmp eq i64 %24, 32000
  br i1 %37, label %.loopexit, label %.preheader1, !llvm.loop !11

38:                                               ; preds = %.loopexit
  ret void

.loopexit:                                        ; preds = %.preheader1, %.preheader
  %39 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %40 = add nuw nsw i32 %2, 1
  %41 = icmp eq i32 %40, 800000
  br i1 %41, label %38, label %1, !llvm.loop !15

.preheader:                                       ; preds = %1, %.preheader
  %42 = phi i64 [ %58, %.preheader ], [ 0, %1 ]
  %43 = add nuw nsw i64 %42, 8
  %44 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %43
  %45 = load float, ptr %44, align 8, !tbaa !9
  %46 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %47 = load float, ptr %46, align 8, !tbaa !9
  %48 = fadd float %45, %47
  %49 = getelementptr inbounds float, ptr %3, i64 %42
  store float %48, ptr %49, align 4, !tbaa !9
  %50 = or i64 %42, 1
  %51 = add nuw nsw i64 %42, 9
  %52 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !9
  %54 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %50
  %55 = load float, ptr %54, align 4, !tbaa !9
  %56 = fadd float %53, %55
  %57 = getelementptr inbounds float, ptr %3, i64 %50
  store float %56, ptr %57, align 4, !tbaa !9
  %58 = add nuw nsw i64 %42, 2
  %59 = icmp eq i64 %58, 32000
  br i1 %59, label %.loopexit, label %.preheader, !llvm.loop !16
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
