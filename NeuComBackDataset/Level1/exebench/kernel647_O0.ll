; ModuleID = '../benchmarks/fine_grained/exebench/kernel647.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel647.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STM32_COMP_CSR = dso_local global i32 0, align 4
@STM32_COMP_CMP1INSEL_MASK = dso_local global i32 0, align 4
@STM32_COMP_CMP1EN = dso_local global i32 0, align 4
@STM32_COMP_CMP1INSEL_INM4 = dso_local global i32 0, align 4
@STM32_COMP_CMP1INSEL_INM6 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pd_select_polarity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr @STM32_COMP_CSR, align 4
  %4 = load i32, ptr @STM32_COMP_CMP1INSEL_MASK, align 4
  %5 = xor i32 %4, -1
  %6 = and i32 %3, %5
  %7 = load i32, ptr @STM32_COMP_CMP1EN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, ptr %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, ptr @STM32_COMP_CMP1INSEL_INM4, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, ptr @STM32_COMP_CMP1INSEL_INM6, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = or i32 %8, %16
  store i32 %17, ptr @STM32_COMP_CSR, align 4
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
