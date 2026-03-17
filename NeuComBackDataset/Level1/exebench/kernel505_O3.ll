; ModuleID = '../benchmarks/fine_grained/exebench/kernel505.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel505.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@spars_comp = dso_local local_unnamed_addr global i32 0, align 4
@spars_grd = dso_local local_unnamed_addr global %struct.TYPE_4__ zeroinitializer, align 4
@_pos = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @get_local() local_unnamed_addr #0 {
  %1 = load ptr, ptr @_pos, align 8, !tbaa !5
  store i32 1, ptr %1, align 4, !tbaa !9
  %2 = load i32, ptr @spars_grd, align 4, !tbaa !12
  %3 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 1
  store i32 %2, ptr %3, align 4, !tbaa !14
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 2
  store i32 %2, ptr %4, align 4, !tbaa !15
  %5 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 3
  store i32 1, ptr %5, align 4, !tbaa !16
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @spars_grd, i64 0, i32 1), align 4, !tbaa !17
  %7 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 4
  store i32 %6, ptr %7, align 4, !tbaa !18
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 5
  store i32 %6, ptr %8, align 4, !tbaa !19
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 6
  store i32 1, ptr %9, align 4, !tbaa !20
  %10 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @spars_grd, i64 0, i32 2), align 4, !tbaa !21
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 7
  store i32 %10, ptr %11, align 4, !tbaa !22
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %1, i64 0, i32 8
  store i32 %10, ptr %12, align 4, !tbaa !23
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"TYPE_5__", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"TYPE_4__", !11, i64 0, !11, i64 4, !11, i64 8}
!14 = !{!10, !11, i64 4}
!15 = !{!10, !11, i64 8}
!16 = !{!10, !11, i64 12}
!17 = !{!13, !11, i64 4}
!18 = !{!10, !11, i64 16}
!19 = !{!10, !11, i64 20}
!20 = !{!10, !11, i64 24}
!21 = !{!13, !11, i64 8}
!22 = !{!10, !11, i64 28}
!23 = !{!10, !11, i64 32}
