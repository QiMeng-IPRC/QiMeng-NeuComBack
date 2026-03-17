; ModuleID = '../benchmarks/fine_grained/exebench/kernel710.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel710.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IN_SC_Control = dso_local global i32 0, align 4
@in_kbdControls = dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IN_SC_Alt = dso_local global i32 0, align 4
@IN_SC_Space = dso_local global i32 0, align 4
@IN_SC_Enter = dso_local global i32 0, align 4
@IN_SC_F5 = dso_local global i32 0, align 4
@IN_SC_F9 = dso_local global i32 0, align 4
@IN_SC_UpArrow = dso_local global i32 0, align 4
@IN_SC_DownArrow = dso_local global i32 0, align 4
@IN_SC_LeftArrow = dso_local global i32 0, align 4
@IN_SC_RightArrow = dso_local global i32 0, align 4
@IN_SC_Home = dso_local global i32 0, align 4
@IN_SC_PgUp = dso_local global i32 0, align 4
@IN_SC_PgDown = dso_local global i32 0, align 4
@IN_SC_End = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @INL_SetupKbdControls() #0 {
  %1 = load i32, ptr @IN_SC_Control, align 4
  store i32 %1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 13), align 4
  %2 = load i32, ptr @IN_SC_Alt, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 12), align 4
  %3 = load i32, ptr @IN_SC_Space, align 4
  store i32 %3, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 11), align 4
  %4 = load i32, ptr @IN_SC_Enter, align 4
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 10), align 4
  %5 = load i32, ptr @IN_SC_F5, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 9), align 4
  %6 = load i32, ptr @IN_SC_F9, align 4
  store i32 %6, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 8), align 4
  %7 = load i32, ptr @IN_SC_UpArrow, align 4
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 7), align 4
  %8 = load i32, ptr @IN_SC_DownArrow, align 4
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 6), align 4
  %9 = load i32, ptr @IN_SC_LeftArrow, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 5), align 4
  %10 = load i32, ptr @IN_SC_RightArrow, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 4), align 4
  %11 = load i32, ptr @IN_SC_Home, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 3), align 4
  %12 = load i32, ptr @IN_SC_PgUp, align 4
  store i32 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 2), align 4
  %13 = load i32, ptr @IN_SC_PgDown, align 4
  store i32 %13, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @in_kbdControls, i32 0, i32 1), align 4
  %14 = load i32, ptr @IN_SC_End, align 4
  store i32 %14, ptr @in_kbdControls, align 4
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
