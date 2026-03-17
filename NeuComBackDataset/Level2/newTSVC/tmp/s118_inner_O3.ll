; ModuleID = 'tmp/s118_inner.c'
source_filename = "tmp/s118_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bb = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s118_inner() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %13
  %2 = phi i32 [ 0, %0 ], [ %15, %13 ]
  br label %4

3:                                                ; preds = %13
  ret void

4:                                                ; preds = %1, %30
  %5 = phi i64 [ 0, %1 ], [ %34, %30 ]
  %6 = phi i64 [ 1, %1 ], [ %32, %30 ]
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = and i64 %6, 1
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = and i64 %6, 9223372036854775806
  br label %35

13:                                               ; preds = %30
  %14 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %15 = add nuw nsw i32 %2, 1
  %16 = icmp eq i32 %15, 78000
  br i1 %16, label %3, label %1, !llvm.loop !9

17:                                               ; preds = %35, %4
  %18 = phi float [ undef, %4 ], [ %53, %35 ]
  %19 = phi i64 [ 0, %4 ], [ %54, %35 ]
  %20 = phi float [ %8, %4 ], [ %53, %35 ]
  %21 = icmp eq i64 %9, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %19, i64 %6
  %24 = load float, ptr %23, align 4, !tbaa !5
  %25 = xor i64 %19, -1
  %26 = add nsw i64 %6, %25
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = tail call float @llvm.fmuladd.f32(float %24, float %28, float %20)
  br label %30

30:                                               ; preds = %17, %22
  %31 = phi float [ %18, %17 ], [ %29, %22 ]
  store float %31, ptr %7, align 4, !tbaa !5
  %32 = add nuw nsw i64 %6, 1
  %33 = icmp eq i64 %32, 256
  %34 = add i64 %5, 1
  br i1 %33, label %13, label %4, !llvm.loop !11

35:                                               ; preds = %35, %11
  %36 = phi i64 [ 0, %11 ], [ %54, %35 ]
  %37 = phi float [ %8, %11 ], [ %53, %35 ]
  %38 = phi i64 [ 0, %11 ], [ %55, %35 ]
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %36, i64 %6
  %40 = load float, ptr %39, align 4, !tbaa !5
  %41 = xor i64 %36, -1
  %42 = add nsw i64 %6, %41
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !5
  %45 = tail call float @llvm.fmuladd.f32(float %40, float %44, float %37)
  %46 = or i64 %36, 1
  %47 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %46, i64 %6
  %48 = load float, ptr %47, align 4, !tbaa !5
  %49 = xor i64 %36, -2
  %50 = add nsw i64 %6, %49
  %51 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !5
  %53 = tail call float @llvm.fmuladd.f32(float %48, float %52, float %45)
  %54 = add nuw nsw i64 %36, 2
  %55 = add i64 %38, 2
  %56 = icmp eq i64 %55, %12
  br i1 %56, label %17, label %35, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
