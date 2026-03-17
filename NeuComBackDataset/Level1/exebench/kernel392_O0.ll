; ModuleID = '../benchmarks/fine_grained/exebench/kernel392.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel392.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PB5 = dso_local global i32 0, align 4
@PB6 = dso_local global i32 0, align 4
@PB3 = dso_local global i32 0, align 4
@DDRB = dso_local global i32 0, align 4
@PORTB = dso_local global i32 0, align 4
@PB0 = dso_local global i32 0, align 4
@DDRD = dso_local global i32 0, align 4
@PORTD = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ergodox_led_init() #0 {
  %1 = load i32, ptr @PB5, align 4
  %2 = shl i32 1, %1
  %3 = load i32, ptr @PB6, align 4
  %4 = shl i32 1, %3
  %5 = or i32 %2, %4
  %6 = load i32, ptr @PB3, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  %9 = load i32, ptr @DDRB, align 4
  %10 = or i32 %9, %8
  store i32 %10, ptr @DDRB, align 4
  %11 = load i32, ptr @PB5, align 4
  %12 = shl i32 1, %11
  %13 = load i32, ptr @PB6, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  %16 = load i32, ptr @PB3, align 4
  %17 = shl i32 1, %16
  %18 = or i32 %15, %17
  %19 = xor i32 %18, -1
  %20 = load i32, ptr @PORTB, align 4
  %21 = and i32 %20, %19
  store i32 %21, ptr @PORTB, align 4
  %22 = load i32, ptr @PB0, align 4
  %23 = shl i32 1, %22
  %24 = load i32, ptr @DDRB, align 4
  %25 = or i32 %24, %23
  store i32 %25, ptr @DDRB, align 4
  %26 = load i32, ptr @PB0, align 4
  %27 = shl i32 1, %26
  %28 = load i32, ptr @PORTB, align 4
  %29 = or i32 %28, %27
  store i32 %29, ptr @PORTB, align 4
  %30 = load i32, ptr @PB5, align 4
  %31 = shl i32 1, %30
  %32 = load i32, ptr @DDRD, align 4
  %33 = or i32 %32, %31
  store i32 %33, ptr @DDRD, align 4
  %34 = load i32, ptr @PB5, align 4
  %35 = shl i32 1, %34
  %36 = load i32, ptr @PORTD, align 4
  %37 = or i32 %36, %35
  store i32 %37, ptr @PORTD, align 4
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
