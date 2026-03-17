; ModuleID = 'task_ir_O3/s421_inner_ori.ll'
source_filename = "task_c/s421_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flat_2d_array = external global [65536 x float], align 64
@xx = external local_unnamed_addr global ptr, align 8
@yy = external local_unnamed_addr global ptr, align 8
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: nounwind uwtable
define dso_local void @s421_inner() local_unnamed_addr #0 {
  store ptr @flat_2d_array, ptr @xx, align 8, !tbaa !5
  br label %2

1:                                                ; preds = %58
  ret void

2:                                                ; preds = %58, %0
  %3 = phi i32 [ 0, %0 ], [ %60, %58 ]
  %4 = load ptr, ptr @xx, align 8, !tbaa !5
  store ptr %4, ptr @yy, align 8, !tbaa !5
  %5 = getelementptr i8, ptr %4, i64 128000
  %6 = icmp ult ptr %4, getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999)
  %7 = icmp ugt ptr %5, @a
  %8 = and i1 %6, %7
  br i1 %8, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %2
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load <4 x float>, ptr %9, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %11 = getelementptr inbounds float, ptr %4, i64 5
  %12 = load <4 x float>, ptr %11, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %13 = load <4 x float>, ptr @a, align 64, !tbaa !9, !alias.scope !14
  %14 = load <4 x float>, ptr getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 4), align 16, !tbaa !9, !alias.scope !14
  %15 = fadd <4 x float> %10, %13
  %16 = fadd <4 x float> %12, %14
  store <4 x float> %15, ptr %4, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %17 = getelementptr inbounds float, ptr %4, i64 4
  store <4 x float> %16, ptr %17, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  br label %26

.loopexit:                                        ; preds = %26, %2
  %18 = phi i64 [ 0, %2 ], [ 31992, %26 ]
  %19 = or i64 %18, 1
  %20 = getelementptr inbounds float, ptr %4, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !9
  %22 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %23 = load float, ptr %22, align 32, !tbaa !9
  %24 = fadd float %21, %23
  %25 = getelementptr inbounds float, ptr %4, i64 %18
  store float %24, ptr %25, align 4, !tbaa !9
  br label %62

26:                                               ; preds = %.preheader, %26
  %27 = phi i64 [ 8, %.preheader ], [ %56, %26 ]
  %28 = phi i64 [ 0, %.preheader ], [ %42, %26 ]
  %29 = or i64 %28, 9
  %30 = getelementptr inbounds float, ptr %4, i64 %29
  %31 = load <4 x float>, ptr %30, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %32 = getelementptr inbounds float, ptr %30, i64 4
  %33 = load <4 x float>, ptr %32, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %34 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %27
  %35 = load <4 x float>, ptr %34, align 32, !tbaa !9, !alias.scope !14
  %36 = getelementptr inbounds float, ptr %34, i64 4
  %37 = load <4 x float>, ptr %36, align 16, !tbaa !9, !alias.scope !14
  %38 = fadd <4 x float> %31, %35
  %39 = fadd <4 x float> %33, %37
  %40 = getelementptr inbounds float, ptr %4, i64 %27
  store <4 x float> %38, ptr %40, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %41 = getelementptr inbounds float, ptr %40, i64 4
  store <4 x float> %39, ptr %41, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %42 = add nuw nsw i64 %28, 16
  %43 = or i64 %42, 1
  %44 = getelementptr inbounds float, ptr %4, i64 %43
  %45 = load <4 x float>, ptr %44, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %46 = getelementptr inbounds float, ptr %44, i64 4
  %47 = load <4 x float>, ptr %46, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %48 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  %49 = load <4 x float>, ptr %48, align 64, !tbaa !9, !alias.scope !14
  %50 = getelementptr inbounds float, ptr %48, i64 4
  %51 = load <4 x float>, ptr %50, align 16, !tbaa !9, !alias.scope !14
  %52 = fadd <4 x float> %45, %49
  %53 = fadd <4 x float> %47, %51
  %54 = getelementptr inbounds float, ptr %4, i64 %42
  store <4 x float> %52, ptr %54, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %55 = getelementptr inbounds float, ptr %54, i64 4
  store <4 x float> %53, ptr %55, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %56 = or i64 %42, 8
  %57 = icmp eq i64 %56, 31992
  br i1 %57, label %.loopexit, label %26, !llvm.loop !16

58:                                               ; preds = %62
  %59 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %60 = add nuw nsw i32 %3, 1
  %61 = icmp eq i32 %60, 400000
  br i1 %61, label %1, label %2, !llvm.loop !20

62:                                               ; preds = %62, %.loopexit
  %63 = phi i64 [ %19, %.loopexit ], [ %71, %62 ]
  %64 = add nuw nsw i64 %63, 1
  %65 = getelementptr inbounds float, ptr %4, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !9
  %67 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %63
  %68 = load float, ptr %67, align 4, !tbaa !9
  %69 = fadd float %66, %68
  %70 = getelementptr inbounds float, ptr %4, i64 %63
  store float %69, ptr %70, align 4, !tbaa !9
  %71 = add nuw nsw i64 %63, 2
  %72 = getelementptr inbounds float, ptr %4, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !9
  %74 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %64
  %75 = load float, ptr %74, align 4, !tbaa !9
  %76 = fadd float %73, %75
  store float %76, ptr %65, align 4, !tbaa !9
  %77 = icmp eq i64 %71, 31999
  br i1 %77, label %58, label %62, !llvm.loop !21
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
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17, !18}
