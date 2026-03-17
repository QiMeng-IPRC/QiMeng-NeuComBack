; ModuleID = '../benchmarks/fine_grained/exebench/kernel419.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel419.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@z80_state = dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@used_cycles = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_24_inc_h() #0 {
  %1 = load i32, ptr @z80_state, align 8
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @z80_state, align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 5), align 8
  %3 = load i32, ptr @z80_state, align 8
  %4 = icmp eq i32 %3, 128
  %5 = zext i1 %4 to i32
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 1), align 4
  %6 = load i32, ptr @z80_state, align 8
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 2), align 8
  %10 = load i32, ptr @z80_state, align 8
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 3), align 4
  %13 = load i32, ptr @z80_state, align 8
  %14 = ashr i32 %13, 7
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @z80_state, i32 0, i32 4), align 8
  %15 = load i32, ptr @used_cycles, align 4
  %16 = add nsw i32 %15, 4
  store i32 %16, ptr @used_cycles, align 4
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
