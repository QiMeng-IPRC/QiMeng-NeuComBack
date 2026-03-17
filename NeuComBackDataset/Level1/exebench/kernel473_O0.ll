; ModuleID = '../benchmarks/fine_grained/exebench/kernel473.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel473.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_timersActive = dso_local global i32 0, align 4
@TIMER_GUI = dso_local global i32 0, align 4
@g_timerGUI = dso_local global i32 0, align 4
@TIMER_GAME = dso_local global i32 0, align 4
@g_timerGame = dso_local global i32 0, align 4
@g_timerInput = dso_local global i32 0, align 4
@g_timerSleep = dso_local global i32 0, align 4
@g_timerTimeout = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Timer_Tick() #0 {
  %1 = load i32, ptr @s_timersActive, align 4
  %2 = load i32, ptr @TIMER_GUI, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, ptr @g_timerGUI, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @g_timerGUI, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, ptr @s_timersActive, align 4
  %10 = load i32, ptr @TIMER_GAME, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, ptr @g_timerGame, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @g_timerGame, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i32, ptr @g_timerInput, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr @g_timerInput, align 4
  %19 = load i32, ptr @g_timerSleep, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @g_timerSleep, align 4
  %21 = load i64, ptr @g_timerTimeout, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i64, ptr @g_timerTimeout, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, ptr @g_timerTimeout, align 8
  br label %26

26:                                               ; preds = %23, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
