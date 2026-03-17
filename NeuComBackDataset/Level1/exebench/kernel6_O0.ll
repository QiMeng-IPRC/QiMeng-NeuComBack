; ModuleID = '../benchmarks/fine_grained/exebench/kernel6.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STM32_RCC_PB1_SPI2 = dso_local global i32 0, align 4
@STM32_RCC_APB1ENR = dso_local global i32 0, align 4
@STM32_SYSCFG_CFGR1 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_enable_clock() #0 {
  %1 = load i32, ptr @STM32_RCC_PB1_SPI2, align 4
  %2 = load i32, ptr @STM32_RCC_APB1ENR, align 4
  %3 = or i32 %2, %1
  store i32 %3, ptr @STM32_RCC_APB1ENR, align 4
  %4 = load i32, ptr @STM32_SYSCFG_CFGR1, align 4
  %5 = or i32 %4, 16777216
  store i32 %5, ptr @STM32_SYSCFG_CFGR1, align 4
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
