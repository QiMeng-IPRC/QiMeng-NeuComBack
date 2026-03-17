; ModuleID = 'tmp/s174_inner.c'
source_filename = "tmp/s174_inner.c"
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
  br i1 %2, label %3, label %46

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = zext i32 %0 to i64
  %6 = icmp ult i32 %0, 8
  %7 = and i64 %5, 4294967288
  %8 = icmp eq i64 %7, %5
  br label %9

9:                                                ; preds = %3, %42
  %10 = phi i32 [ %44, %42 ], [ 0, %3 ]
  br i1 %6, label %29, label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ %26, %11 ], [ 0, %9 ]
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load <4 x float>, ptr %13, align 32, !tbaa !5
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !5
  %17 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %18 = load <4 x float>, ptr %17, align 32, !tbaa !5
  %19 = getelementptr inbounds float, ptr %17, i64 4
  %20 = load <4 x float>, ptr %19, align 16, !tbaa !5
  %21 = fadd <4 x float> %14, %18
  %22 = fadd <4 x float> %16, %20
  %23 = add nuw nsw i64 %12, %4
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  store <4 x float> %21, ptr %24, align 4, !tbaa !5
  %25 = getelementptr inbounds float, ptr %24, i64 4
  store <4 x float> %22, ptr %25, align 4, !tbaa !5
  %26 = add nuw i64 %12, 8
  %27 = icmp eq i64 %26, %7
  br i1 %27, label %28, label %11, !llvm.loop !9

28:                                               ; preds = %11
  br i1 %8, label %42, label %29

29:                                               ; preds = %9, %28
  %30 = phi i64 [ 0, %9 ], [ %7, %28 ]
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ %40, %31 ], [ %30, %29 ]
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !5
  %35 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %32
  %36 = load float, ptr %35, align 4, !tbaa !5
  %37 = fadd float %34, %36
  %38 = add nuw nsw i64 %32, %4
  %39 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %38
  store float %37, ptr %39, align 4, !tbaa !5
  %40 = add nuw nsw i64 %32, 1
  %41 = icmp eq i64 %40, %5
  br i1 %41, label %42, label %31, !llvm.loop !13

42:                                               ; preds = %31, %28
  %43 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %44 = add nuw nsw i32 %10, 1
  %45 = icmp eq i32 %44, 1000000
  br i1 %45, label %51, label %9, !llvm.loop !14

46:                                               ; preds = %1, %46
  %47 = phi i32 [ %49, %46 ], [ 0, %1 ]
  %48 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %49 = add nuw nsw i32 %47, 1
  %50 = icmp eq i32 %49, 1000000
  br i1 %50, label %51, label %46, !llvm.loop !14

51:                                               ; preds = %46, %42
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
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !12, !11}
!14 = distinct !{!14, !10}
