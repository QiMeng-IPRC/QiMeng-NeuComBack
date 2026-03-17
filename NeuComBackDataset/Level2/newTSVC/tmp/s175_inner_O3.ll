; ModuleID = 'tmp/s175_inner.c'
source_filename = "tmp/s175_inner.c"
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
  %6 = add nuw nsw i64 %5, 1
  %7 = icmp ugt i64 %5, 6
  %8 = icmp eq i32 %0, 1
  %9 = and i1 %7, %8
  %10 = and i64 %6, -8
  %11 = mul i64 %10, %2
  %12 = icmp eq i64 %6, %10
  br label %13

13:                                               ; preds = %1, %37
  %14 = phi i32 [ 0, %1 ], [ %39, %37 ]
  br i1 %9, label %15, label %34

15:                                               ; preds = %13, %15
  %16 = phi i64 [ %31, %15 ], [ 0, %13 ]
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
  %31 = add nuw i64 %16, 8
  %32 = icmp eq i64 %31, %10
  br i1 %32, label %33, label %15, !llvm.loop !9

33:                                               ; preds = %15
  br i1 %12, label %37, label %34

34:                                               ; preds = %13, %33
  %35 = phi i64 [ 0, %13 ], [ %11, %33 ]
  br label %41

36:                                               ; preds = %37
  ret void

37:                                               ; preds = %41, %33
  %38 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %39 = add nuw nsw i32 %14, 1
  %40 = icmp eq i32 %39, 100000
  br i1 %40, label %36, label %13, !llvm.loop !13

41:                                               ; preds = %34, %41
  %42 = phi i64 [ %43, %41 ], [ %35, %34 ]
  %43 = add nsw i64 %42, %2
  %44 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !5
  %46 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %42
  %47 = load float, ptr %46, align 4, !tbaa !5
  %48 = fadd float %45, %47
  %49 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  store float %48, ptr %49, align 4, !tbaa !5
  %50 = icmp slt i64 %43, 31999
  br i1 %50, label %41, label %37, !llvm.loop !14
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
