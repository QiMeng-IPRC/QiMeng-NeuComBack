; ModuleID = '../benchmarks/fine_grained/exebench/kernel1114.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1114.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_13__ = type { %struct.TYPE_23__, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @container_two_basic_syncInputEvents(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TYPE_14__, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.TYPE_13__, ptr %0, i64 0, i32 1
  store i32 %3, ptr %4, align 4, !tbaa !20
  %5 = load i32, ptr %0, align 4, !tbaa !21
  %6 = getelementptr inbounds %struct.TYPE_14__, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !22
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !10, i64 12}
!6 = !{!"TYPE_14__", !7, i64 0, !15, i64 8, !18, i64 12}
!7 = !{!"TYPE_13__", !8, i64 0, !13, i64 4}
!8 = !{!"TYPE_23__", !9, i64 0}
!9 = !{!"TYPE_22__", !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"TYPE_16__", !14, i64 0}
!14 = !{!"TYPE_15__", !10, i64 0}
!15 = !{!"TYPE_21__", !16, i64 0}
!16 = !{!"TYPE_20__", !17, i64 0}
!17 = !{!"TYPE_19__", !10, i64 0}
!18 = !{!"TYPE_18__", !19, i64 0}
!19 = !{!"TYPE_17__", !10, i64 0}
!20 = !{!6, !10, i64 4}
!21 = !{!6, !10, i64 0}
!22 = !{!6, !10, i64 8}
