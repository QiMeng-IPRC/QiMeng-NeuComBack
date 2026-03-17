; ModuleID = 'tmp/s422_inner.c'
source_filename = "tmp/s422_inner.c"
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

1:                                                ; preds = %0, %42
  %2 = phi i32 [ 0, %0 ], [ %44, %42 ]
  %3 = load ptr, ptr @xx, align 8, !tbaa !5
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, add (i64 ptrtoint (ptr @flat_2d_array to i64), i64 32)
  %6 = icmp ult i64 %5, 32
  %7 = sub i64 %4, ptrtoint (ptr @a to i64)
  %8 = icmp ult i64 %7, 32
  %9 = or i1 %6, %8
  br i1 %9, label %46, label %10

10:                                               ; preds = %1, %10
  %11 = phi i64 [ %39, %10 ], [ 0, %1 ]
  %12 = or i64 %11, 8
  %13 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %12
  %14 = load <4 x float>, ptr %13, align 32, !tbaa !9
  %15 = getelementptr inbounds float, ptr %13, i64 4
  %16 = load <4 x float>, ptr %15, align 16, !tbaa !9
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %11
  %18 = load <4 x float>, ptr %17, align 64, !tbaa !9
  %19 = getelementptr inbounds float, ptr %17, i64 4
  %20 = load <4 x float>, ptr %19, align 16, !tbaa !9
  %21 = fadd <4 x float> %14, %18
  %22 = fadd <4 x float> %16, %20
  %23 = getelementptr inbounds float, ptr %3, i64 %11
  store <4 x float> %21, ptr %23, align 4, !tbaa !9
  %24 = getelementptr inbounds float, ptr %23, i64 4
  store <4 x float> %22, ptr %24, align 4, !tbaa !9
  %25 = or i64 %11, 8
  %26 = add nuw nsw i64 %11, 16
  %27 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %26
  %28 = load <4 x float>, ptr %27, align 64, !tbaa !9
  %29 = getelementptr inbounds float, ptr %27, i64 4
  %30 = load <4 x float>, ptr %29, align 16, !tbaa !9
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %32 = load <4 x float>, ptr %31, align 32, !tbaa !9
  %33 = getelementptr inbounds float, ptr %31, i64 4
  %34 = load <4 x float>, ptr %33, align 16, !tbaa !9
  %35 = fadd <4 x float> %28, %32
  %36 = fadd <4 x float> %30, %34
  %37 = getelementptr inbounds float, ptr %3, i64 %25
  store <4 x float> %35, ptr %37, align 4, !tbaa !9
  %38 = getelementptr inbounds float, ptr %37, i64 4
  store <4 x float> %36, ptr %38, align 4, !tbaa !9
  %39 = add nuw nsw i64 %11, 16
  %40 = icmp eq i64 %39, 32000
  br i1 %40, label %42, label %10, !llvm.loop !11

41:                                               ; preds = %42
  ret void

42:                                               ; preds = %10, %46
  %43 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 0.000000e+00) #2
  %44 = add nuw nsw i32 %2, 1
  %45 = icmp eq i32 %44, 800000
  br i1 %45, label %41, label %1, !llvm.loop !15

46:                                               ; preds = %1, %46
  %47 = phi i64 [ %63, %46 ], [ 0, %1 ]
  %48 = add nuw nsw i64 %47, 8
  %49 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %48
  %50 = load float, ptr %49, align 8, !tbaa !9
  %51 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %47
  %52 = load float, ptr %51, align 8, !tbaa !9
  %53 = fadd float %50, %52
  %54 = getelementptr inbounds float, ptr %3, i64 %47
  store float %53, ptr %54, align 4, !tbaa !9
  %55 = or i64 %47, 1
  %56 = add nuw nsw i64 %47, 9
  %57 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !9
  %59 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %55
  %60 = load float, ptr %59, align 4, !tbaa !9
  %61 = fadd float %58, %60
  %62 = getelementptr inbounds float, ptr %3, i64 %55
  store float %61, ptr %62, align 4, !tbaa !9
  %63 = add nuw nsw i64 %47, 2
  %64 = icmp eq i64 %63, 32000
  br i1 %64, label %42, label %46, !llvm.loop !16
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
