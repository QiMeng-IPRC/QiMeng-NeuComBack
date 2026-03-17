; ModuleID = 'tmp/s421_inner.c'
source_filename = "tmp/s421_inner.c"
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

1:                                                ; preds = %50
  ret void

2:                                                ; preds = %0, %50
  %3 = phi i32 [ 0, %0 ], [ %52, %50 ]
  %4 = load ptr, ptr @xx, align 8, !tbaa !5
  store ptr %4, ptr @yy, align 8, !tbaa !5
  %5 = getelementptr i8, ptr %4, i64 128000
  %6 = icmp ult ptr %4, getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 31999)
  %7 = icmp ugt ptr %5, @a
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %18, %2
  %10 = phi i64 [ 0, %2 ], [ 31992, %18 ]
  %11 = or i64 %10, 1
  %12 = getelementptr inbounds float, ptr %4, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !9
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %10
  %15 = load float, ptr %14, align 32, !tbaa !9
  %16 = fadd float %13, %15
  %17 = getelementptr inbounds float, ptr %4, i64 %10
  store float %16, ptr %17, align 4, !tbaa !9
  br label %54

18:                                               ; preds = %2, %35
  %19 = phi i64 [ %49, %35 ], [ 0, %2 ]
  %20 = or i64 %19, 1
  %21 = getelementptr inbounds float, ptr %4, i64 %20
  %22 = load <4 x float>, ptr %21, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %23 = getelementptr inbounds float, ptr %21, i64 4
  %24 = load <4 x float>, ptr %23, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %26 = load <4 x float>, ptr %25, align 64, !tbaa !9, !alias.scope !14
  %27 = getelementptr inbounds float, ptr %25, i64 4
  %28 = load <4 x float>, ptr %27, align 16, !tbaa !9, !alias.scope !14
  %29 = fadd <4 x float> %22, %26
  %30 = fadd <4 x float> %24, %28
  %31 = getelementptr inbounds float, ptr %4, i64 %19
  store <4 x float> %29, ptr %31, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %32 = getelementptr inbounds float, ptr %31, i64 4
  store <4 x float> %30, ptr %32, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %33 = or i64 %19, 8
  %34 = icmp eq i64 %33, 31992
  br i1 %34, label %9, label %35, !llvm.loop !16

35:                                               ; preds = %18
  %36 = or i64 %19, 9
  %37 = getelementptr inbounds float, ptr %4, i64 %36
  %38 = load <4 x float>, ptr %37, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %39 = getelementptr inbounds float, ptr %37, i64 4
  %40 = load <4 x float>, ptr %39, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %33
  %42 = load <4 x float>, ptr %41, align 32, !tbaa !9, !alias.scope !14
  %43 = getelementptr inbounds float, ptr %41, i64 4
  %44 = load <4 x float>, ptr %43, align 16, !tbaa !9, !alias.scope !14
  %45 = fadd <4 x float> %38, %42
  %46 = fadd <4 x float> %40, %44
  %47 = getelementptr inbounds float, ptr %4, i64 %33
  store <4 x float> %45, ptr %47, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %48 = getelementptr inbounds float, ptr %47, i64 4
  store <4 x float> %46, ptr %48, align 4, !tbaa !9, !alias.scope !11, !noalias !14
  %49 = add nuw nsw i64 %19, 16
  br label %18

50:                                               ; preds = %54
  %51 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, float noundef 1.000000e+00) #2
  %52 = add nuw nsw i32 %3, 1
  %53 = icmp eq i32 %52, 400000
  br i1 %53, label %1, label %2, !llvm.loop !20

54:                                               ; preds = %54, %9
  %55 = phi i64 [ %11, %9 ], [ %63, %54 ]
  %56 = add nuw nsw i64 %55, 1
  %57 = getelementptr inbounds float, ptr %4, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !9
  %59 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %55
  %60 = load float, ptr %59, align 4, !tbaa !9
  %61 = fadd float %58, %60
  %62 = getelementptr inbounds float, ptr %4, i64 %55
  store float %61, ptr %62, align 4, !tbaa !9
  %63 = add nuw nsw i64 %55, 2
  %64 = getelementptr inbounds float, ptr %4, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !9
  %66 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %56
  %67 = load float, ptr %66, align 4, !tbaa !9
  %68 = fadd float %65, %67
  %69 = getelementptr inbounds float, ptr %4, i64 %56
  store float %68, ptr %69, align 4, !tbaa !9
  %70 = icmp eq i64 %63, 31999
  br i1 %70, label %50, label %54, !llvm.loop !21
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
