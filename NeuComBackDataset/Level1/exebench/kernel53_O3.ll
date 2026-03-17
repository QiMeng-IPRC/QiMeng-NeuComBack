; ModuleID = '../benchmarks/fine_grained/exebench/kernel53.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel53.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, ptr, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@level = dso_local local_unnamed_addr global %struct.TYPE_8__ zeroinitializer, align 8
@CON_CONNECTED = dso_local local_unnamed_addr global i64 0, align 8
@TEAM_RED = dso_local local_unnamed_addr global i64 0, align 8
@TEAM_BLUE = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @sortedActivePlayers() local_unnamed_addr #0 {
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i64 0, i32 3), align 8, !tbaa !5
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i64 0, i32 1), align 8, !tbaa !12
  %1 = load i32, ptr @level, align 8, !tbaa !13
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i64 0, i32 2), align 8, !tbaa !14
  %5 = load i64, ptr @CON_CONNECTED, align 8, !tbaa !15
  %6 = load i64, ptr @TEAM_RED, align 8
  %7 = load i64, ptr @TEAM_BLUE, align 8
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %3, %27
  %10 = phi i64 [ 0, %3 ], [ %30, %27 ]
  %11 = phi i64 [ 0, %3 ], [ %29, %27 ]
  %12 = phi i64 [ 0, %3 ], [ %28, %27 ]
  %13 = getelementptr inbounds %struct.TYPE_7__, ptr %4, i64 %10, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !16
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.TYPE_7__, ptr %4, i64 %10
  %18 = load i64, ptr %17, align 8, !tbaa !20
  %19 = icmp eq i64 %18, %6
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = add nsw i64 %11, 1
  store i64 %21, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i64 0, i32 3), align 8, !tbaa !5
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %21, %20 ], [ %11, %16 ]
  %24 = icmp eq i64 %18, %7
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = add nsw i64 %12, 1
  store i64 %26, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i64 0, i32 1), align 8, !tbaa !12
  br label %27

27:                                               ; preds = %22, %25, %9
  %28 = phi i64 [ %12, %22 ], [ %26, %25 ], [ %12, %9 ]
  %29 = phi i64 [ %23, %22 ], [ %23, %25 ], [ %11, %9 ]
  %30 = add nuw nsw i64 %10, 1
  %31 = icmp eq i64 %30, %8
  br i1 %31, label %32, label %9, !llvm.loop !21

32:                                               ; preds = %27, %0
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !10, i64 24}
!6 = !{!"TYPE_8__", !7, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !7, i64 0}
!14 = !{!6, !11, i64 16}
!15 = !{!10, !10, i64 0}
!16 = !{!17, !10, i64 8}
!17 = !{!"TYPE_7__", !18, i64 0, !19, i64 8}
!18 = !{!"TYPE_5__", !10, i64 0}
!19 = !{!"TYPE_6__", !10, i64 0}
!20 = !{!17, !10, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
