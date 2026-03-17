; ModuleID = '../benchmarks/fine_grained/exebench/kernel1430.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1430.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@path_s = dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@path = dso_local local_unnamed_addr global ptr null, align 8
@path_blownpos = dso_local local_unnamed_addr global i32 0, align 4
@path_search_long = dso_local local_unnamed_addr global i32 0, align 4
@path_search = dso_local local_unnamed_addr global i32 0, align 4
@check_distance = dso_local local_unnamed_addr global i32 0, align 4
@distance = dso_local local_unnamed_addr global i32 0, align 4
@check_distance_client = dso_local local_unnamed_addr global i32 0, align 4
@distance_client = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @path_defaults() local_unnamed_addr #0 {
  store ptr @path_s, ptr @path, align 8, !tbaa !5
  %1 = load i32, ptr @path_blownpos, align 4, !tbaa !9
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @path_s, i64 0, i32 6), align 4, !tbaa !11
  %2 = load i32, ptr @path_search_long, align 4, !tbaa !9
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @path_s, i64 0, i32 5), align 4, !tbaa !13
  %3 = load i32, ptr @path_search, align 4, !tbaa !9
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @path_s, i64 0, i32 4), align 4, !tbaa !14
  %4 = load i32, ptr @check_distance, align 4, !tbaa !9
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @path_s, i64 0, i32 3), align 4, !tbaa !15
  %5 = load i32, ptr @distance, align 4, !tbaa !9
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @path_s, i64 0, i32 2), align 4, !tbaa !16
  %6 = load i32, ptr @check_distance_client, align 4, !tbaa !9
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @path_s, i64 0, i32 1), align 4, !tbaa !17
  %7 = load i32, ptr @distance_client, align 4, !tbaa !9
  store i32 %7, ptr @path_s, align 4, !tbaa !18
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
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 24}
!12 = !{!"TYPE_3__", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!13 = !{!12, !10, i64 20}
!14 = !{!12, !10, i64 16}
!15 = !{!12, !10, i64 12}
!16 = !{!12, !10, i64 8}
!17 = !{!12, !10, i64 4}
!18 = !{!12, !10, i64 0}
