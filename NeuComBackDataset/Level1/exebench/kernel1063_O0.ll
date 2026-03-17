; ModuleID = '../benchmarks/fine_grained/exebench/kernel1063.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1063.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LFSR_S15 = dso_local global i32 0, align 4
@LFSR_S14 = dso_local global i32 0, align 4
@BRC_X0 = dso_local global i32 0, align 4
@LFSR_S11 = dso_local global i32 0, align 4
@LFSR_S9 = dso_local global i32 0, align 4
@BRC_X1 = dso_local global i32 0, align 4
@LFSR_S7 = dso_local global i32 0, align 4
@LFSR_S5 = dso_local global i32 0, align 4
@BRC_X2 = dso_local global i32 0, align 4
@LFSR_S2 = dso_local global i32 0, align 4
@LFSR_S0 = dso_local global i32 0, align 4
@BRC_X3 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BitReorganization() #0 {
  %1 = load i32, ptr @LFSR_S15, align 4
  %2 = and i32 %1, 2147450880
  %3 = shl i32 %2, 1
  %4 = load i32, ptr @LFSR_S14, align 4
  %5 = and i32 %4, 65535
  %6 = or i32 %3, %5
  store i32 %6, ptr @BRC_X0, align 4
  %7 = load i32, ptr @LFSR_S11, align 4
  %8 = and i32 %7, 65535
  %9 = shl i32 %8, 16
  %10 = load i32, ptr @LFSR_S9, align 4
  %11 = ashr i32 %10, 15
  %12 = or i32 %9, %11
  store i32 %12, ptr @BRC_X1, align 4
  %13 = load i32, ptr @LFSR_S7, align 4
  %14 = and i32 %13, 65535
  %15 = shl i32 %14, 16
  %16 = load i32, ptr @LFSR_S5, align 4
  %17 = ashr i32 %16, 15
  %18 = or i32 %15, %17
  store i32 %18, ptr @BRC_X2, align 4
  %19 = load i32, ptr @LFSR_S2, align 4
  %20 = and i32 %19, 65535
  %21 = shl i32 %20, 16
  %22 = load i32, ptr @LFSR_S0, align 4
  %23 = ashr i32 %22, 15
  %24 = or i32 %21, %23
  store i32 %24, ptr @BRC_X3, align 4
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
