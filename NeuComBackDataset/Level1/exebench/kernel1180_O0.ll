; ModuleID = '../benchmarks/fine_grained/exebench/kernel1180.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DDRB = dso_local global i32 0, align 4
@PORTB = dso_local global i32 0, align 4
@settings = dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PCMSK0 = dso_local global i32 0, align 4
@PCICR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @limits_init() #0 {
  %1 = load i32, ptr @DDRB, align 4
  %2 = and i32 %1, -15
  store i32 %2, ptr @DDRB, align 4
  %3 = load i32, ptr @PORTB, align 4
  %4 = or i32 %3, 14
  store i32 %4, ptr @PORTB, align 4
  %5 = load i32, ptr @settings, align 4
  %6 = and i32 %5, 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, ptr @PCMSK0, align 4
  %10 = or i32 %9, 14
  store i32 %10, ptr @PCMSK0, align 4
  %11 = load i32, ptr @PCICR, align 4
  %12 = or i32 %11, 1
  store i32 %12, ptr @PCICR, align 4
  br label %18

13:                                               ; preds = %0
  %14 = load i32, ptr @PCMSK0, align 4
  %15 = and i32 %14, -15
  store i32 %15, ptr @PCMSK0, align 4
  %16 = load i32, ptr @PCICR, align 4
  %17 = and i32 %16, -2
  store i32 %17, ptr @PCICR, align 4
  br label %18

18:                                               ; preds = %13, %8
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
