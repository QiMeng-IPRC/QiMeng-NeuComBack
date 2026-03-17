; ModuleID = 'task_ir_O3/s1421_inner_ori.ll'
source_filename = "task_c/s1421_inner.c"
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

1:                                                ; preds = %.loopexit, %0
  %2 = phi i32 [ 0, %0 ], [ %38, %.loopexit ]
  %3 = load ptr, ptr @xx, align 8, !tbaa !5
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 ptrtoint (ptr @b to i64), %4
  %6 = icmp ult i64 %5, 32
  %7 = or i1 %6, icmp ult (i64 sub (i64 ptrtoint (ptr @b to i64), i64 ptrtoint (ptr @a to i64)), i64 32)
  br i1 %7, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %1, %.preheader1
  %8 = phi i64 [ %34, %.preheader1 ], [ 0, %1 ]
  %9 = getelementptr inbounds float, ptr %3, i64 %8
  %10 = load <4 x float>, ptr %9, align 4, !tbaa !9
  %11 = getelementptr inbounds float, ptr %9, i64 4
  %12 = load <4 x float>, ptr %11, align 4, !tbaa !9
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %8
  %14 = load <4 x float>, ptr %13, align 64, !tbaa !9
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !9
  %17 = fadd <4 x float> %10, %14
  %18 = fadd <4 x float> %12, %16
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %8
  store <4 x float> %17, ptr %19, align 64, !tbaa !9
  %20 = getelementptr inbounds float, ptr %19, i64 4
  store <4 x float> %18, ptr %20, align 16, !tbaa !9
  %21 = or i64 %8, 8
  %22 = getelementptr inbounds float, ptr %3, i64 %21
  %23 = load <4 x float>, ptr %22, align 4, !tbaa !9
  %24 = getelementptr inbounds float, ptr %22, i64 4
  %25 = load <4 x float>, ptr %24, align 4, !tbaa !9
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %27 = load <4 x float>, ptr %26, align 32, !tbaa !9
  %28 = getelementptr inbounds float, ptr %26, i64 4
  %29 = load <4 x float>, ptr %28, align 16, !tbaa !9
  %30 = fadd <4 x float> %23, %27
  %31 = fadd <4 x float> %25, %29
  %32 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %21
  store <4 x float> %30, ptr %32, align 32, !tbaa !9
  %33 = getelementptr inbounds float, ptr %32, i64 4
  store <4 x float> %31, ptr %33, align 16, !tbaa !9
  %34 = add nuw nsw i64 %8, 16
  %35 = icmp eq i64 %34, 16000
  br i1 %35, label %.loopexit, label %.preheader1, !llvm.loop !11

36:                                               ; preds = %.loopexit
  ret void

.loopexit:                                        ; preds = %.preheader1, %.preheader
  %37 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %38 = add nuw nsw i32 %2, 1
  %39 = icmp eq i32 %38, 800000
  br i1 %39, label %36, label %1, !llvm.loop !15

.preheader:                                       ; preds = %1, %.preheader
  %40 = phi i64 [ %54, %.preheader ], [ 0, %1 ]
  %41 = getelementptr inbounds float, ptr %3, i64 %40
  %42 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  %43 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %40
  %44 = load <2 x float>, ptr %41, align 4, !tbaa !9
  %45 = load <2 x float>, ptr %42, align 16, !tbaa !9
  %46 = fadd <2 x float> %44, %45
  store <2 x float> %46, ptr %43, align 16, !tbaa !9
  %47 = or i64 %40, 2
  %48 = getelementptr inbounds float, ptr %3, i64 %47
  %49 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %47
  %50 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %47
  %51 = load <2 x float>, ptr %48, align 4, !tbaa !9
  %52 = load <2 x float>, ptr %49, align 8, !tbaa !9
  %53 = fadd <2 x float> %51, %52
  store <2 x float> %53, ptr %50, align 8, !tbaa !9
  %54 = add nuw nsw i64 %40, 4
  %55 = icmp eq i64 %54, 16000
  br i1 %55, label %.loopexit, label %.preheader, !llvm.loop !16
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
