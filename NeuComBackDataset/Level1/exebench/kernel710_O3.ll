; ModuleID = '../benchmarks/fine_grained/exebench/kernel710.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel710.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IN_SC_Control = dso_local local_unnamed_addr global i32 0, align 4
@in_kbdControls = dso_local local_unnamed_addr global %struct.TYPE_2__ zeroinitializer, align 4
@IN_SC_Alt = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_Space = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_Enter = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_F5 = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_F9 = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_UpArrow = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_DownArrow = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_LeftArrow = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_RightArrow = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_Home = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_PgUp = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_PgDown = dso_local local_unnamed_addr global i32 0, align 4
@IN_SC_End = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @INL_SetupKbdControls() local_unnamed_addr #0 {
  %1 = load i32, ptr @IN_SC_Control, align 4, !tbaa !5
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 13), align 4, !tbaa !9
  %2 = load i32, ptr @IN_SC_Alt, align 4, !tbaa !5
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 12), align 4, !tbaa !11
  %3 = load i32, ptr @IN_SC_Space, align 4, !tbaa !5
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 11), align 4, !tbaa !12
  %4 = load i32, ptr @IN_SC_Enter, align 4, !tbaa !5
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 10), align 4, !tbaa !13
  %5 = load i32, ptr @IN_SC_F5, align 4, !tbaa !5
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 9), align 4, !tbaa !14
  %6 = load i32, ptr @IN_SC_F9, align 4, !tbaa !5
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 8), align 4, !tbaa !15
  %7 = load i32, ptr @IN_SC_UpArrow, align 4, !tbaa !5
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 7), align 4, !tbaa !16
  %8 = load i32, ptr @IN_SC_DownArrow, align 4, !tbaa !5
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 6), align 4, !tbaa !17
  %9 = load i32, ptr @IN_SC_LeftArrow, align 4, !tbaa !5
  store i32 %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 5), align 4, !tbaa !18
  %10 = load i32, ptr @IN_SC_RightArrow, align 4, !tbaa !5
  store i32 %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 4), align 4, !tbaa !19
  %11 = load i32, ptr @IN_SC_Home, align 4, !tbaa !5
  store i32 %11, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 3), align 4, !tbaa !20
  %12 = load i32, ptr @IN_SC_PgUp, align 4, !tbaa !5
  store i32 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 2), align 4, !tbaa !21
  %13 = load i32, ptr @IN_SC_PgDown, align 4, !tbaa !5
  store i32 %13, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i64 0, i32 1), align 4, !tbaa !22
  %14 = load i32, ptr @IN_SC_End, align 4, !tbaa !5
  store i32 %14, ptr @in_kbdControls, align 4, !tbaa !23
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
!9 = !{!10, !6, i64 52}
!10 = !{!"TYPE_2__", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52}
!11 = !{!10, !6, i64 48}
!12 = !{!10, !6, i64 44}
!13 = !{!10, !6, i64 40}
!14 = !{!10, !6, i64 36}
!15 = !{!10, !6, i64 32}
!16 = !{!10, !6, i64 28}
!17 = !{!10, !6, i64 24}
!18 = !{!10, !6, i64 20}
!19 = !{!10, !6, i64 16}
!20 = !{!10, !6, i64 12}
!21 = !{!10, !6, i64 8}
!22 = !{!10, !6, i64 4}
!23 = !{!10, !6, i64 0}
