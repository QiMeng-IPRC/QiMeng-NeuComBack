; ModuleID = '../benchmarks/fine_grained/exebench/kernel1128.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADPS2 = dso_local global i32 0, align 4
@ADCSRA = dso_local global i32 0, align 4
@ADPS1 = dso_local global i32 0, align 4
@ADPS0 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adc_prescaler_2() #0 {
  %1 = load i32, ptr @ADPS2, align 4
  %2 = shl i32 1, %1
  %3 = xor i32 %2, -1
  %4 = load i32, ptr @ADCSRA, align 4
  %5 = and i32 %4, %3
  store i32 %5, ptr @ADCSRA, align 4
  %6 = load i32, ptr @ADPS1, align 4
  %7 = shl i32 1, %6
  %8 = xor i32 %7, -1
  %9 = load i32, ptr @ADCSRA, align 4
  %10 = and i32 %9, %8
  store i32 %10, ptr @ADCSRA, align 4
  %11 = load i32, ptr @ADPS0, align 4
  %12 = shl i32 1, %11
  %13 = load i32, ptr @ADCSRA, align 4
  %14 = or i32 %13, %12
  store i32 %14, ptr @ADCSRA, align 4
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
