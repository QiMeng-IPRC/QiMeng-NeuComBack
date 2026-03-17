; ModuleID = '../benchmarks/fine_grained/exebench/kernel1462.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1462.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, ptr, ptr, ptr, i64, i64 }

@GSU = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @fx_inc_r2() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 1), align 8, !tbaa !5
  %2 = getelementptr inbounds i64, ptr %1, i64 2
  %3 = load i64, ptr %2, align 8, !tbaa !12
  %4 = add nsw i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !12
  store i64 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 5), align 8, !tbaa !13
  %5 = load i64, ptr %2, align 8, !tbaa !12
  store i64 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 4), align 8, !tbaa !14
  %6 = load i32, ptr @GSU, align 8, !tbaa !15
  %7 = and i32 %6, -4865
  store i32 %7, ptr @GSU, align 8, !tbaa !15
  store ptr %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 2), align 8, !tbaa !16
  store ptr %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i64 0, i32 3), align 8, !tbaa !17
  %8 = getelementptr inbounds i64, ptr %1, i64 15
  %9 = load i64, ptr %8, align 8, !tbaa !12
  %10 = add nsw i64 %9, 1
  store i64 %10, ptr %8, align 8, !tbaa !12
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6"}
!5 = !{!6, !10, i64 8}
!6 = !{!"TYPE_2__", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32, !11, i64 40}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !11, i64 40}
!14 = !{!6, !11, i64 32}
!15 = !{!6, !7, i64 0}
!16 = !{!6, !10, i64 16}
!17 = !{!6, !10, i64 24}
