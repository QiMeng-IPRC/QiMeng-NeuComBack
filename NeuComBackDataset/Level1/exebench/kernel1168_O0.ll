; ModuleID = '../benchmarks/fine_grained/exebench/kernel1168.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1168.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@pll_clock = dso_local global ptr null, align 8
@dmac = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmac_init() #0 {
  %1 = load ptr, ptr @pll_clock, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, ptr %1, i32 0, i32 0
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 268435456
  store i32 %4, ptr %2, align 4
  %5 = load ptr, ptr @pll_clock, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 1048576
  store i32 %8, ptr %6, align 4
  %9 = load ptr, ptr @dmac, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %9, i32 0, i32 0
  store i32 -1, ptr %10, align 4
  %11 = load ptr, ptr @dmac, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, ptr %11, i32 0, i32 1
  store i32 -1, ptr %12, align 4
  %13 = load ptr, ptr @dmac, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 2
  store i32 -1, ptr %14, align 4
  %15 = load ptr, ptr @dmac, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %15, i32 0, i32 3
  store i32 -1, ptr %16, align 4
  %17 = load ptr, ptr @dmac, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 4
  store i32 -1, ptr %18, align 4
  %19 = load ptr, ptr @dmac, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, ptr %19, i32 0, i32 5
  store i32 -1, ptr %20, align 4
  %21 = load ptr, ptr @dmac, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i32 0, i32 6
  store i32 1, ptr %22, align 4
  %23 = load ptr, ptr @dmac, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, ptr %23, i32 0, i32 7
  store i32 33280, ptr %24, align 4
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
