; ModuleID = '../benchmarks/fine_grained/exebench/kernel419.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel419.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@z80_state = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 8
@used_cycles = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @z80_24_inc_h() local_unnamed_addr #0 {
  %1 = load i32, ptr @z80_state, align 8, !tbaa !5
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @z80_state, align 8, !tbaa !5
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 5), align 8, !tbaa !11
  %3 = icmp eq i32 %2, 128
  %4 = zext i1 %3 to i32
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 1), align 4, !tbaa !12
  %5 = and i32 %2, 15
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 2), align 8, !tbaa !13
  %8 = icmp eq i32 %2, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 3), align 4, !tbaa !14
  %10 = ashr i32 %2, 7
  store i32 %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i64 0, i32 4), align 8, !tbaa !15
  %11 = load i32, ptr @used_cycles, align 4, !tbaa !16
  %12 = add nsw i32 %11, 4
  store i32 %12, ptr @used_cycles, align 4, !tbaa !16
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
!5 = !{!6, !7, i64 0}
!6 = !{!"TYPE_2__", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !10, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !10, i64 24}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 12}
!15 = !{!6, !7, i64 16}
!16 = !{!7, !7, i64 0}
