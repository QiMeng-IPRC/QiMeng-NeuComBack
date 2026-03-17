; ModuleID = '../benchmarks/fine_grained/exebench/kernel1008.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1008.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSW = dso_local global i32 0, align 4
@CY = dso_local global i32 0, align 4
@EA = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DSLR_EA(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @PSW, align 4
  %4 = load i32, ptr @CY, align 4
  %5 = xor i32 %4, -1
  %6 = and i32 %3, %5
  %7 = load i32, ptr @EA, align 4
  %8 = load i32, ptr @CY, align 4
  %9 = and i32 %7, %8
  %10 = or i32 %6, %9
  store i32 %10, ptr @PSW, align 4
  %11 = load i32, ptr @EA, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, ptr @EA, align 4
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
