; ModuleID = 'tmp/s233_inner.c'
source_filename = "tmp/s233_inner.c"
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
define dso_local void @s233_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %8
  %2 = phi i32 [ 0, %0 ], [ %10, %8 ]
  br label %4

3:                                                ; preds = %8
  ret void

4:                                                ; preds = %1, %33
  %5 = phi i64 [ 1, %1 ], [ %34, %33 ]
  %6 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 0, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !5
  br label %14

8:                                                ; preds = %33
  %9 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %10 = add nuw nsw i32 %2, 1
  %11 = icmp eq i32 %10, 39000
  br i1 %11, label %3, label %1, !llvm.loop !9

12:                                               ; preds = %14
  %13 = add nsw i64 %5, -1
  br label %36

14:                                               ; preds = %14, %4
  %15 = phi float [ %7, %4 ], [ %29, %14 ]
  %16 = phi i64 [ 1, %4 ], [ %31, %14 ]
  %17 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %16, i64 %5
  %18 = load float, ptr %17, align 4, !tbaa !5
  %19 = fadd float %15, %18
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %16, i64 %5
  store float %19, ptr %20, align 4, !tbaa !5
  %21 = add nuw nsw i64 %16, 1
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %21, i64 %5
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = fadd float %19, %23
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %21, i64 %5
  store float %24, ptr %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %16, 2
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %26, i64 %5
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = fadd float %24, %28
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %26, i64 %5
  store float %29, ptr %30, align 4, !tbaa !5
  %31 = add nuw nsw i64 %16, 3
  %32 = icmp eq i64 %31, 256
  br i1 %32, label %12, label %14, !llvm.loop !11

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %5, 1
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %8, label %4, !llvm.loop !12

36:                                               ; preds = %46, %12
  %37 = phi i64 [ 1, %12 ], [ %53, %46 ]
  %38 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %37, i64 %13
  %39 = load float, ptr %38, align 4, !tbaa !5
  %40 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %37, i64 %5
  %41 = load float, ptr %40, align 4, !tbaa !5
  %42 = fadd float %39, %41
  %43 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %37, i64 %5
  store float %42, ptr %43, align 4, !tbaa !5
  %44 = add nuw nsw i64 %37, 1
  %45 = icmp eq i64 %44, 256
  br i1 %45, label %33, label %46, !llvm.loop !13

46:                                               ; preds = %36
  %47 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %44, i64 %13
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %44, i64 %5
  %50 = load float, ptr %49, align 4, !tbaa !5
  %51 = fadd float %48, %50
  %52 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %44, i64 %5
  store float %51, ptr %52, align 4, !tbaa !5
  %53 = add nuw nsw i64 %37, 2
  br label %36
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
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
