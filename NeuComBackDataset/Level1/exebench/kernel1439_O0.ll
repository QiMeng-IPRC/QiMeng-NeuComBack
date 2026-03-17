; ModuleID = '../benchmarks/fine_grained/exebench/kernel1439.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1439.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

@pmseed = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fast_frandom() #0 {
  %1 = alloca %union.anon, align 8
  %2 = load i32, ptr @pmseed, align 4
  %3 = mul nsw i32 %2, 16807
  store i32 %3, ptr @pmseed, align 4
  %4 = and i32 %3, 8388607
  %5 = sub nsw i32 %4, 1
  %6 = or i32 %5, 1065353216
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %1, align 8
  %8 = load float, ptr %1, align 8
  %9 = fsub float %8, 1.000000e+00
  ret float %9
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
