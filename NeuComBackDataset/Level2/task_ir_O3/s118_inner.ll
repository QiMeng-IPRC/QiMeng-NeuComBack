; ModuleID = 'task_ir_O3/s118_inner_ori.ll'
source_filename = "task_c/s118_inner.c"
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

1:                                                ; preds = %13, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %13 ]
  br label %4

3:                                                ; preds = %13
  ret void

4:                                                ; preds = %29, %1
  %5 = phi i64 [ 0, %1 ], [ %33, %29 ]
  %6 = phi i64 [ 1, %1 ], [ %31, %29 ]
  %7 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = and i64 %6, 1
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %.loopexit, label %11

11:                                               ; preds = %4
  %12 = and i64 %6, 9223372036854775806
  br label %34

13:                                               ; preds = %29
  %14 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #3
  %15 = add nuw nsw i32 %2, 1
  %16 = icmp eq i32 %15, 78000
  br i1 %16, label %3, label %1, !llvm.loop !9

.loopexit:                                        ; preds = %34, %4
  %17 = phi float [ undef, %4 ], [ %51, %34 ]
  %18 = phi i64 [ 0, %4 ], [ %12, %34 ]
  %19 = phi float [ %8, %4 ], [ %51, %34 ]
  %20 = icmp eq i64 %9, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %.loopexit
  %22 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %18, i64 %6
  %23 = load float, ptr %22, align 4, !tbaa !5
  %24 = xor i64 %18, -1
  %25 = add nsw i64 %6, %24
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !5
  %28 = tail call float @llvm.fmuladd.f32(float %23, float %27, float %19)
  br label %29

29:                                               ; preds = %21, %.loopexit
  %30 = phi float [ %17, %.loopexit ], [ %28, %21 ]
  store float %30, ptr %7, align 4, !tbaa !5
  %31 = add nuw nsw i64 %6, 1
  %32 = icmp eq i64 %31, 256
  %33 = add nuw nsw i64 %5, 1
  br i1 %32, label %13, label %4, !llvm.loop !11

34:                                               ; preds = %34, %11
  %35 = phi i64 [ 0, %11 ], [ %52, %34 ]
  %36 = phi float [ %8, %11 ], [ %51, %34 ]
  %37 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %35, i64 %6
  %38 = load float, ptr %37, align 4, !tbaa !5
  %39 = xor i64 %35, -1
  %40 = add nsw i64 %6, %39
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !5
  %43 = tail call float @llvm.fmuladd.f32(float %38, float %42, float %36)
  %44 = or i64 %35, 1
  %45 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %44, i64 %6
  %46 = load float, ptr %45, align 4, !tbaa !5
  %47 = xor i64 %35, -2
  %48 = add nsw i64 %47, %6
  %49 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !5
  %51 = tail call float @llvm.fmuladd.f32(float %46, float %50, float %43)
  %52 = add nuw i64 %35, 2
  %53 = icmp eq i64 %52, %12
  br i1 %53, label %.loopexit, label %34, !llvm.loop !12
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
