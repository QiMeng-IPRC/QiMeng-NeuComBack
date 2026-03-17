; ModuleID = '../benchmarks/fine_grained/exebench/kernel937.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel937.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@SA1Registers = dso_local local_unnamed_addr global %struct.TYPE_15__ zeroinitializer, align 4
@SA1 = dso_local local_unnamed_addr global %struct.TYPE_16__ zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @OpBASlow() local_unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_15__, ptr @SA1Registers, i64 0, i32 2), align 4, !tbaa !5
  %2 = and i32 %1, 16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr getelementptr inbounds (%struct.TYPE_15__, ptr @SA1Registers, i64 0, i32 1, i32 1), align 4, !tbaa !16
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_15__, ptr @SA1Registers, i64 0, i32 0, i32 1), align 4, !tbaa !17
  br label %11

6:                                                ; preds = %0
  %7 = load i32, ptr getelementptr inbounds (%struct.TYPE_15__, ptr @SA1Registers, i64 0, i32 1), align 4, !tbaa !18
  store i32 %7, ptr @SA1Registers, align 4, !tbaa !19
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = ashr i32 %7, 8
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi i32 [ %9, %6 ], [ %5, %4 ]
  %13 = phi i32 [ %10, %6 ], [ %5, %4 ]
  store i32 %12, ptr @SA1, align 4
  store i32 %13, ptr getelementptr inbounds (%struct.TYPE_16__, ptr @SA1, i64 0, i32 1), align 4, !tbaa !20
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !8, i64 16}
!6 = !{!"TYPE_15__", !7, i64 0, !12, i64 8, !14, i64 16}
!7 = !{!"TYPE_13__", !8, i64 0, !11, i64 4}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"TYPE_14__", !8, i64 0}
!12 = !{!"TYPE_10__", !8, i64 0, !13, i64 4}
!13 = !{!"TYPE_9__", !8, i64 0}
!14 = !{!"TYPE_12__", !15, i64 0}
!15 = !{!"TYPE_11__", !8, i64 0}
!16 = !{!6, !8, i64 12}
!17 = !{!6, !8, i64 4}
!18 = !{!6, !8, i64 8}
!19 = !{!6, !8, i64 0}
!20 = !{!21, !8, i64 4}
!21 = !{!"TYPE_16__", !8, i64 0, !8, i64 4}
