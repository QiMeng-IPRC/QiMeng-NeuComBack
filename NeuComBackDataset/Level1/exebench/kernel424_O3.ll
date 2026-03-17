; ModuleID = '../benchmarks/fine_grained/exebench/kernel424.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel424.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PERF_TYPE_HARDWARE = dso_local local_unnamed_addr global i32 0, align 4
@pea_llc_miss = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 16
@PERF_FORMAT_GROUP = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @initialize_perf_event_attr() local_unnamed_addr #0 {
  %1 = load i32, ptr @PERF_TYPE_HARDWARE, align 4, !tbaa !5
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @pea_llc_miss, i64 0, i32 9), align 4, !tbaa !9
  %2 = load i32, ptr @PERF_FORMAT_GROUP, align 4, !tbaa !5
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @pea_llc_miss, i64 0, i32 8), align 16, !tbaa !11
  store <4 x i32> <i32 4, i32 1, i32 1, i32 1>, ptr @pea_llc_miss, align 16, !tbaa !5
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @pea_llc_miss, i64 0, i32 4), align 16, !tbaa !5
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 36}
!10 = !{!"TYPE_2__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!11 = !{!10, !6, i64 32}
