; ModuleID = '../benchmarks/fine_grained/exebench/kernel442.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel442.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STIF0 = dso_local global i32 0, align 4
@STMK0 = dso_local global i32 0, align 4
@SRIF0 = dso_local global i32 0, align 4
@SRMK0 = dso_local global i32 0, align 4
@SREIF0 = dso_local global i32 0, align 4
@SREMK0 = dso_local global i32 0, align 4
@SO0 = dso_local global i32 0, align 4
@SOE0 = dso_local global i32 0, align 4
@SS0 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_UART0_Start() #0 {
  store i32 0, ptr @STIF0, align 4
  store i32 0, ptr @STMK0, align 4
  store i32 0, ptr @SRIF0, align 4
  store i32 0, ptr @SRMK0, align 4
  store i32 0, ptr @SREIF0, align 4
  store i32 0, ptr @SREMK0, align 4
  %1 = load i32, ptr @SO0, align 4
  %2 = or i32 %1, 1
  store i32 %2, ptr @SO0, align 4
  %3 = load i32, ptr @SOE0, align 4
  %4 = or i32 %3, 1
  store i32 %4, ptr @SOE0, align 4
  %5 = load i32, ptr @SS0, align 4
  %6 = or i32 %5, 3
  store i32 %6, ptr @SS0, align 4
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
