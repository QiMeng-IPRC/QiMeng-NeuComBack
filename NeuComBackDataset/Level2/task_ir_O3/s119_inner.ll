; ModuleID = 'task_ir_O3/s119_inner_ori.ll'
source_filename = "task_c/s119_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s119_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %24, %0
  %2 = phi i32 [ 0, %0 ], [ %26, %24 ]
  br label %4

3:                                                ; preds = %24
  ret void

4:                                                ; preds = %28, %1
  %5 = phi i64 [ 1, %1 ], [ %47, %28 ]
  %6 = add nsw i64 %5, -1
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %22, %7 ]
  %9 = or i64 %8, 1
  %10 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 %8
  %11 = load <4 x float>, ptr %10, align 32, !tbaa !5
  %12 = getelementptr inbounds float, ptr %10, i64 4
  %13 = load <4 x float>, ptr %12, align 16, !tbaa !5
  %14 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 %9
  %15 = load <4 x float>, ptr %14, align 4, !tbaa !5
  %16 = getelementptr inbounds float, ptr %14, i64 4
  %17 = load <4 x float>, ptr %16, align 4, !tbaa !5
  %18 = fadd <4 x float> %11, %15
  %19 = fadd <4 x float> %13, %17
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 %9
  store <4 x float> %18, ptr %20, align 4, !tbaa !5
  %21 = getelementptr inbounds float, ptr %20, i64 4
  store <4 x float> %19, ptr %21, align 4, !tbaa !5
  %22 = add nuw nsw i64 %8, 8
  %23 = icmp eq i64 %22, 248
  br i1 %23, label %28, label %7, !llvm.loop !9

24:                                               ; preds = %28
  %25 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %26 = add nuw nsw i32 %2, 1
  %27 = icmp eq i32 %26, 78000
  br i1 %27, label %3, label %1, !llvm.loop !13

28:                                               ; preds = %7
  %29 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 248
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 249
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 249
  %32 = load <4 x float>, ptr %29, align 32, !tbaa !5
  %33 = load <4 x float>, ptr %30, align 4, !tbaa !5
  %34 = fadd <4 x float> %32, %33
  store <4 x float> %34, ptr %31, align 4, !tbaa !5
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 252
  %36 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 253
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 253
  %38 = load <2 x float>, ptr %35, align 16, !tbaa !5
  %39 = load <2 x float>, ptr %36, align 4, !tbaa !5
  %40 = fadd <2 x float> %38, %39
  store <2 x float> %40, ptr %37, align 4, !tbaa !5
  %41 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %6, i64 254
  %42 = load float, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %5, i64 255
  %44 = load float, ptr %43, align 4, !tbaa !5
  %45 = fadd float %42, %44
  %46 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %5, i64 255
  store float %45, ptr %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %5, 1
  %48 = icmp eq i64 %47, 256
  br i1 %48, label %24, label %4, !llvm.loop !14
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
!14 = distinct !{!14, !10}
