; ModuleID = '../benchmarks/fine_grained/exebench/kernel1417.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1417.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filter3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %11, align 4
  %13 = mul nsw i32 0, %12
  %14 = sub nsw i32 %10, %13
  store i32 %14, ptr %7, align 4
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %7, align 4
  %18 = mul nsw i32 0, %17
  %19 = add nsw i32 %16, %18
  store i32 %19, ptr %8, align 4
  %20 = load i32, ptr %7, align 4
  %21 = load ptr, ptr %6, align 8
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %4, align 8
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %8, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sitofp i32 %25 to float
  %27 = fmul float %26, 5.000000e-01
  %28 = fptosi float %27 to i32
  %29 = load ptr, ptr %5, align 8
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sitofp i32 %33 to float
  %35 = fmul float %34, 5.000000e-01
  %36 = fptosi float %35 to i32
  %37 = load ptr, ptr %4, align 8
  store i32 %36, ptr %37, align 4
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
