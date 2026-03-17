; ModuleID = '../benchmarks/fine_grained/exebench/kernel952.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel952.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, ptr, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { ptr }
%struct.TYPE_9__ = type { float }

@cgs = dso_local local_unnamed_addr global %struct.TYPE_10__ zeroinitializer, align 8
@cg = dso_local local_unnamed_addr global %struct.TYPE_12__ zeroinitializer, align 8
@PM_STAT_ZOOMTIME = dso_local local_unnamed_addr global i64 0, align 8
@cg_zoomSens = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CG_SetSensitivityScale(float noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_10__, ptr @cgs, i64 0, i32 2), align 8, !tbaa !5
  %3 = icmp eq i32 %2, 0
  %4 = fcmp une float %0, 0.000000e+00
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.TYPE_12__, ptr @cg, i64 0, i32 0, i32 1), align 8, !tbaa !12
  %8 = load i64, ptr @PM_STAT_ZOOMTIME, align 8, !tbaa !17
  %9 = getelementptr inbounds i64, ptr %7, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !17
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = load ptr, ptr @cg_zoomSens, align 8, !tbaa !18
  %14 = load i32, ptr %13, align 4, !tbaa !19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = sitofp i32 %14 to float
  %18 = fdiv float %17, %0
  br label %26

19:                                               ; preds = %12
  %20 = load float, ptr @cg, align 8, !tbaa !21
  %21 = load ptr, ptr getelementptr inbounds (%struct.TYPE_10__, ptr @cgs, i64 0, i32 1), align 8, !tbaa !22
  %22 = load i64, ptr @cgs, align 8, !tbaa !23
  %23 = getelementptr inbounds %struct.TYPE_9__, ptr %21, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !24
  %25 = fdiv float %20, %24
  br label %26

26:                                               ; preds = %1, %6, %19, %16
  %27 = phi float [ %18, %16 ], [ %25, %19 ], [ 1.000000e+00, %6 ], [ 1.000000e+00, %1 ]
  ret float %27
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !11, i64 16}
!6 = !{!"TYPE_10__", !7, i64 0, !10, i64 8, !11, i64 16}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"TYPE_12__", !14, i64 0}
!14 = !{!"TYPE_8__", !15, i64 0, !16, i64 8}
!15 = !{!"float", !8, i64 0}
!16 = !{!"TYPE_7__", !10, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{!20, !11, i64 0}
!20 = !{!"TYPE_11__", !11, i64 0}
!21 = !{!13, !15, i64 0}
!22 = !{!6, !10, i64 8}
!23 = !{!6, !7, i64 0}
!24 = !{!25, !15, i64 0}
!25 = !{!"TYPE_9__", !15, i64 0}
