; ModuleID = 'task_ir_O3/s2233_inner_ori.ll'
source_filename = "task_c/s2233_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s2233_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %8, %0
  %2 = phi i32 [ 0, %0 ], [ %10, %8 ]
  br label %4

3:                                                ; preds = %8
  ret void

4:                                                ; preds = %50, %1
  %5 = phi i64 [ 1, %1 ], [ %69, %50 ]
  %6 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !5
  br label %31

8:                                                ; preds = %50
  %9 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %10 = add nuw nsw i32 %2, 1
  %11 = icmp eq i32 %10, 39000
  br i1 %11, label %3, label %1, !llvm.loop !9

12:                                               ; preds = %31
  %13 = add nsw i64 %5, -1
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %29, %14 ]
  %16 = or i64 %15, 1
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %13, i64 %16
  %18 = load <4 x float>, ptr %17, align 4, !tbaa !5
  %19 = getelementptr inbounds float, ptr %17, i64 4
  %20 = load <4 x float>, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %5, i64 %16
  %22 = load <4 x float>, ptr %21, align 4, !tbaa !5
  %23 = getelementptr inbounds float, ptr %21, i64 4
  %24 = load <4 x float>, ptr %23, align 4, !tbaa !5
  %25 = fadd <4 x float> %18, %22
  %26 = fadd <4 x float> %20, %24
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %16
  store <4 x float> %25, ptr %27, align 4, !tbaa !5
  %28 = getelementptr inbounds float, ptr %27, i64 4
  store <4 x float> %26, ptr %28, align 4, !tbaa !5
  %29 = add nuw nsw i64 %15, 8
  %30 = icmp eq i64 %29, 248
  br i1 %30, label %50, label %14, !llvm.loop !11

31:                                               ; preds = %31, %4
  %32 = phi float [ %7, %4 ], [ %46, %31 ]
  %33 = phi i64 [ 1, %4 ], [ %48, %31 ]
  %34 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %33, i64 %5
  %35 = load float, ptr %34, align 4, !tbaa !5
  %36 = fadd float %32, %35
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %33, i64 %5
  store float %36, ptr %37, align 4, !tbaa !5
  %38 = add nuw nsw i64 %33, 1
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %38, i64 %5
  %40 = load float, ptr %39, align 4, !tbaa !5
  %41 = fadd float %36, %40
  %42 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %38, i64 %5
  store float %41, ptr %42, align 4, !tbaa !5
  %43 = add nuw nsw i64 %33, 2
  %44 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %43, i64 %5
  %45 = load float, ptr %44, align 4, !tbaa !5
  %46 = fadd float %41, %45
  %47 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %43, i64 %5
  store float %46, ptr %47, align 4, !tbaa !5
  %48 = add nuw nsw i64 %33, 3
  %49 = icmp eq i64 %48, 256
  br i1 %49, label %12, label %31, !llvm.loop !14

50:                                               ; preds = %14
  %51 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %13, i64 249
  %52 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %5, i64 249
  %53 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 249
  %54 = load <4 x float>, ptr %51, align 4, !tbaa !5
  %55 = load <4 x float>, ptr %52, align 4, !tbaa !5
  %56 = fadd <4 x float> %54, %55
  store <4 x float> %56, ptr %53, align 4, !tbaa !5
  %57 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %13, i64 253
  %58 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %5, i64 253
  %59 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 253
  %60 = load <2 x float>, ptr %57, align 4, !tbaa !5
  %61 = load <2 x float>, ptr %58, align 4, !tbaa !5
  %62 = fadd <2 x float> %60, %61
  store <2 x float> %62, ptr %59, align 4, !tbaa !5
  %63 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %13, i64 255
  %64 = load float, ptr %63, align 4, !tbaa !5
  %65 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %5, i64 255
  %66 = load float, ptr %65, align 4, !tbaa !5
  %67 = fadd float %64, %66
  %68 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 255
  store float %67, ptr %68, align 4, !tbaa !5
  %69 = add nuw nsw i64 %5, 1
  %70 = icmp eq i64 %69, 256
  br i1 %70, label %8, label %4, !llvm.loop !15
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
