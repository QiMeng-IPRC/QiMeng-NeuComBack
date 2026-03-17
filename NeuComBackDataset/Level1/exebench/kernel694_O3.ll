; ModuleID = '../benchmarks/fine_grained/exebench/kernel694.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel694.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MLAN_STATUS_SUCCESS = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @wlan_cmd_mem_access(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 2
  store i32 134, ptr %0, align 4, !tbaa !5
  %5 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 0, i32 1
  store i32 16, ptr %5, align 4, !tbaa !11
  %6 = getelementptr inbounds %struct.TYPE_9__, ptr %0, i64 1, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !12
  %7 = load <2 x i32>, ptr %2, align 4, !tbaa !14
  store <2 x i32> %7, ptr %4, align 4, !tbaa !14
  %8 = load i32, ptr @MLAN_STATUS_SUCCESS, align 4, !tbaa !14
  ret i32 %8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_9__", !7, i64 0, !7, i64 4, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"TYPE_6__", !7, i64 0}
!11 = !{!6, !7, i64 4}
!12 = !{!13, !7, i64 8}
!13 = !{!"TYPE_8__", !7, i64 0, !7, i64 4, !7, i64 8}
!14 = !{!7, !7, i64 0}
