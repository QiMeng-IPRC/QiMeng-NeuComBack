; ModuleID = '../benchmarks/fine_grained/exebench/kernel1551.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1551.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_halo = type { i64, float }

@UNPHYSICAL = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@LAST_DITCH_VMAX_RATIO_2 = dso_local local_unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @last_ditch_metric(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !5
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8, !tbaa !5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_halo, ptr %0, i64 0, i32 1
  %10 = load float, ptr %9, align 8, !tbaa !11
  %11 = fcmp ogt float %10, 0.000000e+00
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_halo, ptr %1, i64 0, i32 1
  %14 = load float, ptr %13, align 8, !tbaa !11
  %15 = fcmp ogt float %14, 0.000000e+00
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %8, %5, %2
  %17 = load float, ptr @UNPHYSICAL, align 4, !tbaa !12
  br label %27

18:                                               ; preds = %12
  %19 = fcmp ogt float %10, %14
  %20 = fdiv float %10, %14
  %21 = fdiv float %14, %10
  %22 = select i1 %19, float %20, float %21
  %23 = load float, ptr @LAST_DITCH_VMAX_RATIO_2, align 4, !tbaa !12
  %24 = fcmp ogt float %22, %23
  %25 = load float, ptr @UNPHYSICAL, align 4
  %26 = select i1 %24, float %25, float %22
  br label %27

27:                                               ; preds = %18, %16
  %28 = phi float [ %26, %18 ], [ %17, %16 ]
  ret float %28
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"tree_halo", !7, i64 0, !10, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"float", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!10, !10, i64 0}
