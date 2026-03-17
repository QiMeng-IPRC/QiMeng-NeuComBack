; ModuleID = '../benchmarks/fine_grained/exebench/kernel563.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel563.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ST0 = dso_local global i32 0, align 4
@STMK1 = dso_local global i32 0, align 4
@STIF1 = dso_local global i32 0, align 4
@SRMK1 = dso_local global i32 0, align 4
@SRIF1 = dso_local global i32 0, align 4
@SREMK1 = dso_local global i32 0, align 4
@SREIF1 = dso_local global i32 0, align 4
@STPR11 = dso_local global i32 0, align 4
@STPR01 = dso_local global i32 0, align 4
@SRPR11 = dso_local global i32 0, align 4
@SRPR01 = dso_local global i32 0, align 4
@SREPR11 = dso_local global i32 0, align 4
@SREPR01 = dso_local global i32 0, align 4
@SMR02 = dso_local global i32 0, align 4
@SCR02 = dso_local global i32 0, align 4
@SDR02 = dso_local global i32 0, align 4
@NFEN0 = dso_local global i32 0, align 4
@SIR03 = dso_local global i32 0, align 4
@SMR03 = dso_local global i32 0, align 4
@SCR03 = dso_local global i32 0, align 4
@SDR03 = dso_local global i32 0, align 4
@SO0 = dso_local global i32 0, align 4
@SOL0 = dso_local global i32 0, align 4
@SOE0 = dso_local global i32 0, align 4
@PM0 = dso_local global i32 0, align 4
@P0 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_UART1_Create() #0 {
  %1 = load i32, ptr @ST0, align 4
  %2 = or i32 %1, 12
  store i32 %2, ptr @ST0, align 4
  store i32 1, ptr @STMK1, align 4
  store i32 0, ptr @STIF1, align 4
  store i32 1, ptr @SRMK1, align 4
  store i32 0, ptr @SRIF1, align 4
  store i32 1, ptr @SREMK1, align 4
  store i32 0, ptr @SREIF1, align 4
  store i32 1, ptr @STPR11, align 4
  store i32 1, ptr @STPR01, align 4
  store i32 1, ptr @SRPR11, align 4
  store i32 1, ptr @SRPR01, align 4
  store i32 1, ptr @SREPR11, align 4
  store i32 1, ptr @SREPR01, align 4
  store i32 34, ptr @SMR02, align 4
  store i32 32919, ptr @SCR02, align 4
  store i32 52736, ptr @SDR02, align 4
  %3 = load i32, ptr @NFEN0, align 4
  %4 = or i32 %3, 4
  store i32 %4, ptr @NFEN0, align 4
  store i32 7, ptr @SIR03, align 4
  store i32 290, ptr @SMR03, align 4
  store i32 17559, ptr @SCR03, align 4
  store i32 52736, ptr @SDR03, align 4
  %5 = load i32, ptr @SO0, align 4
  %6 = or i32 %5, 4
  store i32 %6, ptr @SO0, align 4
  %7 = load i32, ptr @SOL0, align 4
  %8 = or i32 %7, 0
  store i32 %8, ptr @SOL0, align 4
  %9 = load i32, ptr @SOE0, align 4
  %10 = or i32 %9, 4
  store i32 %10, ptr @SOE0, align 4
  %11 = load i32, ptr @PM0, align 4
  %12 = or i32 %11, 2
  store i32 %12, ptr @PM0, align 4
  %13 = load i32, ptr @P0, align 4
  %14 = or i32 %13, 1
  store i32 %14, ptr @P0, align 4
  %15 = load i32, ptr @PM0, align 4
  %16 = and i32 %15, 254
  store i32 %16, ptr @PM0, align 4
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
