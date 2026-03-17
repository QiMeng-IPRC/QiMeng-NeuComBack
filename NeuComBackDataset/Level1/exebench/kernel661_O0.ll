; ModuleID = '../benchmarks/fine_grained/exebench/kernel661.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel661.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEDS_PxOUT = dso_local global i8 0, align 1
@LEDS_CONF_RED = dso_local global i8 0, align 1
@LEDS_CONF_GREEN = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @leds_arch_get() #0 {
  %1 = alloca i8, align 1
  %2 = load i8, ptr @LEDS_PxOUT, align 1
  store i8 %2, ptr %1, align 1
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr @LEDS_CONF_RED, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 4
  %11 = load i8, ptr %1, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, ptr @LEDS_CONF_GREEN, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  %19 = or i32 %10, %18
  %20 = trunc i32 %19 to i8
  ret i8 %20
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
