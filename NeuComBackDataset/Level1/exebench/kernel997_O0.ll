; ModuleID = '../benchmarks/fine_grained/exebench/kernel997.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel997.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRD = dso_local global i32 0, align 4
@DDRC = dso_local global i32 0, align 4
@DDRA = dso_local global i32 0, align 4
@DDRB = dso_local global i32 0, align 4
@PORTD = dso_local global i32 0, align 4
@PORTC = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DRAM_Init() #0 {
  %1 = load i32, ptr @DDRD, align 4
  %2 = or i32 %1, 32
  store i32 %2, ptr @DDRD, align 4
  %3 = load i32, ptr @DDRD, align 4
  %4 = or i32 %3, 128
  store i32 %4, ptr @DDRD, align 4
  %5 = load i32, ptr @DDRD, align 4
  %6 = or i32 %5, 64
  store i32 %6, ptr @DDRD, align 4
  %7 = load i32, ptr @DDRC, align 4
  %8 = or i32 %7, 1
  store i32 %8, ptr @DDRC, align 4
  store i32 255, ptr @DDRA, align 4
  %9 = load i32, ptr @DDRC, align 4
  %10 = or i32 %9, 2
  store i32 %10, ptr @DDRC, align 4
  %11 = load i32, ptr @DDRB, align 4
  %12 = and i32 %11, 240
  store i32 %12, ptr @DDRB, align 4
  %13 = load i32, ptr @PORTD, align 4
  %14 = or i32 %13, 32
  store i32 %14, ptr @PORTD, align 4
  %15 = load i32, ptr @PORTD, align 4
  %16 = or i32 %15, 128
  store i32 %16, ptr @PORTD, align 4
  %17 = load i32, ptr @PORTD, align 4
  %18 = or i32 %17, 64
  store i32 %18, ptr @PORTD, align 4
  %19 = load i32, ptr @PORTC, align 4
  %20 = or i32 %19, 1
  store i32 %20, ptr @PORTC, align 4
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
