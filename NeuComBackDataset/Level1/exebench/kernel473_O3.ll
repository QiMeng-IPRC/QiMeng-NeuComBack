; ModuleID = '../benchmarks/fine_grained/exebench/kernel473.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel473.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_timersActive = dso_local local_unnamed_addr global i32 0, align 4
@TIMER_GUI = dso_local local_unnamed_addr global i32 0, align 4
@g_timerGUI = dso_local local_unnamed_addr global i32 0, align 4
@TIMER_GAME = dso_local local_unnamed_addr global i32 0, align 4
@g_timerGame = dso_local local_unnamed_addr global i32 0, align 4
@g_timerInput = dso_local local_unnamed_addr global i32 0, align 4
@g_timerSleep = dso_local local_unnamed_addr global i32 0, align 4
@g_timerTimeout = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @Timer_Tick() local_unnamed_addr #0 {
  %1 = load i32, ptr @s_timersActive, align 4, !tbaa !5
  %2 = load i32, ptr @TIMER_GUI, align 4, !tbaa !5
  %3 = and i32 %2, %1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, ptr @g_timerGUI, align 4, !tbaa !5
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @g_timerGUI, align 4, !tbaa !5
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, ptr @TIMER_GAME, align 4, !tbaa !5
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr @g_timerGame, align 4, !tbaa !5
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @g_timerGame, align 4, !tbaa !5
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i32, ptr @g_timerInput, align 4, !tbaa !5
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @g_timerInput, align 4, !tbaa !5
  %18 = load i32, ptr @g_timerSleep, align 4, !tbaa !5
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr @g_timerSleep, align 4, !tbaa !5
  %20 = load i64, ptr @g_timerTimeout, align 8, !tbaa !9
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = add nsw i64 %20, -1
  store i64 %23, ptr @g_timerTimeout, align 8, !tbaa !9
  br label %24

24:                                               ; preds = %22, %15
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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
