; ModuleID = 'tmp/s116_inner.c'
source_filename = "tmp/s116_inner.c"
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
define dso_local void @s116_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %5
  %2 = phi i32 [ 0, %0 ], [ %7, %5 ]
  %3 = load float, ptr @a, align 64, !tbaa !5
  br label %9

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %9
  %6 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %7 = add nuw nsw i32 %2, 1
  %8 = icmp eq i32 %7, 1000000
  br i1 %8, label %4, label %1, !llvm.loop !9

9:                                                ; preds = %1, %9
  %10 = phi float [ %3, %1 ], [ %23, %9 ]
  %11 = phi i64 [ 0, %1 ], [ %21, %9 ]
  %12 = add nuw nsw i64 %11, 1
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %15 = add nuw nsw i64 %11, 4
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  %17 = load <4 x float>, ptr %13, align 4, !tbaa !5
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %19 = insertelement <4 x float> %18, float %10, i64 0
  %20 = fmul <4 x float> %17, %19
  store <4 x float> %20, ptr %14, align 4, !tbaa !5
  %21 = add nuw nsw i64 %11, 5
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = extractelement <4 x float> %17, i64 3
  %25 = fmul float %24, %23
  store float %25, ptr %16, align 4, !tbaa !5
  %26 = icmp ult i64 %11, 31990
  br i1 %26, label %9, label %5, !llvm.loop !11
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
