; ModuleID = '../benchmarks/fine_grained/exebench/kernel828.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel828.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz = dso_local global i32 0, align 4
@CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos = dso_local global i32 0, align 4
@CLOCK_TRACECONFIG_TRACEMUX_Serial = dso_local global i32 0, align 4
@CLOCK_TRACECONFIG_TRACEMUX_Pos = dso_local global i32 0, align 4
@NRF_CLOCK = dso_local global ptr null, align 8
@ITM = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nrf_power_swo_open() #0 {
  %1 = load i32, ptr @CLOCK_TRACECONFIG_TRACEPORTSPEED_16MHz, align 4
  %2 = load i32, ptr @CLOCK_TRACECONFIG_TRACEPORTSPEED_Pos, align 4
  %3 = shl i32 %1, %2
  %4 = load i32, ptr @CLOCK_TRACECONFIG_TRACEMUX_Serial, align 4
  %5 = load i32, ptr @CLOCK_TRACECONFIG_TRACEMUX_Pos, align 4
  %6 = shl i32 %4, %5
  %7 = or i32 %3, %6
  %8 = load ptr, ptr @NRF_CLOCK, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 4
  %10 = load ptr, ptr @ITM, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = load ptr, ptr @ITM, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4
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
