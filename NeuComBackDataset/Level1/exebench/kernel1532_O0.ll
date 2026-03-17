; ModuleID = '../benchmarks/fine_grained/exebench/kernel1532.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1532.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x_i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_random() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1103515245, ptr %1, align 4
  store i32 12345, ptr %2, align 4
  store i32 -2147483648, ptr %3, align 4
  %4 = load i32, ptr %1, align 4
  %5 = load i32, ptr @x_i, align 4
  %6 = mul i32 %4, %5
  %7 = load i32, ptr %2, align 4
  %8 = add i32 %6, %7
  %9 = load i32, ptr %3, align 4
  %10 = urem i32 %8, %9
  store i32 %10, ptr @x_i, align 4
  %11 = load i32, ptr @x_i, align 4
  ret i32 %11
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
