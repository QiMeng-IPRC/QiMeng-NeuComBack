; ModuleID = '../benchmarks/fine_grained/exebench/kernel1248.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1248.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdtdesc = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_gdt_desc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store i32 %0, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store ptr %4, ptr %10, align 8
  %11 = load i32, ptr %7, align 4
  %12 = and i32 %11, 65535
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds %struct.gdtdesc, ptr %13, i32 0, i32 0
  store i32 %12, ptr %14, align 4
  %15 = load i32, ptr %6, align 4
  %16 = and i32 %15, 65535
  %17 = load ptr, ptr %10, align 8
  %18 = getelementptr inbounds %struct.gdtdesc, ptr %17, i32 0, i32 1
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr %6, align 4
  %20 = and i32 %19, 16711680
  %21 = ashr i32 %20, 16
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr inbounds %struct.gdtdesc, ptr %22, i32 0, i32 2
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr %8, align 4
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds %struct.gdtdesc, ptr %25, i32 0, i32 3
  store i32 %24, ptr %26, align 4
  %27 = load i32, ptr %7, align 4
  %28 = and i32 %27, 983040
  %29 = ashr i32 %28, 16
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr inbounds %struct.gdtdesc, ptr %30, i32 0, i32 4
  store i32 %29, ptr %31, align 4
  %32 = load i32, ptr %9, align 4
  %33 = and i32 %32, 15
  %34 = load ptr, ptr %10, align 8
  %35 = getelementptr inbounds %struct.gdtdesc, ptr %34, i32 0, i32 5
  store i32 %33, ptr %35, align 4
  %36 = load i32, ptr %6, align 4
  %37 = and i32 %36, -16777216
  %38 = lshr i32 %37, 24
  %39 = load ptr, ptr %10, align 8
  %40 = getelementptr inbounds %struct.gdtdesc, ptr %39, i32 0, i32 6
  store i32 %38, ptr %40, align 4
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
