; ModuleID = '../benchmarks/fine_grained/exebench/kernel373.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel373.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COM1B1 = dso_local global i32 0, align 4
@TCCR1A = dso_local global i32 0, align 4
@COM1B0 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer1_out_B_clear_on_compare_match() #0 {
  %1 = load i32, ptr @COM1B1, align 4
  %2 = shl i32 1, %1
  %3 = load i32, ptr @TCCR1A, align 4
  %4 = or i32 %3, %2
  store i32 %4, ptr @TCCR1A, align 4
  %5 = load i32, ptr @COM1B0, align 4
  %6 = shl i32 1, %5
  %7 = xor i32 %6, -1
  %8 = load i32, ptr @TCCR1A, align 4
  %9 = and i32 %8, %7
  store i32 %9, ptr @TCCR1A, align 4
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
