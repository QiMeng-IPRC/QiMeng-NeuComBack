; ModuleID = '../benchmarks/fine_grained/exebench/kernel968.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel968.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i64, i32, i64, i64 }

@z80_state = dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@uint8_even_parity = dso_local global ptr null, align 8
@used_cycles = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_b4_or_a_h() #0 {
  %1 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 1), align 8
  %2 = load i64, ptr @z80_state, align 8
  %3 = or i64 %2, %1
  store i64 %3, ptr @z80_state, align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 7), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 6), align 8
  %4 = load ptr, ptr @uint8_even_parity, align 8
  %5 = load i64, ptr @z80_state, align 8
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 4), align 8
  %8 = load i64, ptr @z80_state, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 2), align 8
  %11 = load i64, ptr @z80_state, align 8
  %12 = lshr i64 %11, 7
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 3), align 4
  %14 = load i32, ptr @used_cycles, align 4
  %15 = add nsw i32 %14, 4
  store i32 %15, ptr @used_cycles, align 4
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
