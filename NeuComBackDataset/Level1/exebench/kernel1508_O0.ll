; ModuleID = '../benchmarks/fine_grained/exebench/kernel1508.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1508.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P1DIR = dso_local global i32 0, align 4
@PERCFG = dso_local global i32 0, align 4
@P1SEL = dso_local global i32 0, align 4
@U1CSR = dso_local global i32 0, align 4
@U1BAUD = dso_local global i32 0, align 4
@U1GCR = dso_local global i32 0, align 4
@U1UCR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usart_init() #0 {
  %1 = load i32, ptr @P1DIR, align 4
  %2 = or i32 %1, 4
  store i32 %2, ptr @P1DIR, align 4
  store i32 2, ptr @PERCFG, align 4
  %3 = load i32, ptr @P1SEL, align 4
  %4 = or i32 %3, 192
  store i32 %4, ptr @P1SEL, align 4
  store i32 192, ptr @U1CSR, align 4
  store i32 163, ptr @U1BAUD, align 4
  store i32 10, ptr @U1GCR, align 4
  store i32 166, ptr @U1UCR, align 4
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
