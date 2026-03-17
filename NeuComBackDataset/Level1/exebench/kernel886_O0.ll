; ModuleID = '../benchmarks/fine_grained/exebench/kernel886.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel886.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filter5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds i32, ptr %12, i64 0
  %14 = load i32, ptr %13, align 4
  %15 = mul nsw i32 0, %14
  %16 = sub nsw i32 %11, %15
  store i32 %16, ptr %7, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 0
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %7, align 4
  %21 = mul nsw i32 0, %20
  %22 = add nsw i32 %19, %21
  store i32 %22, ptr %8, align 4
  %23 = load i32, ptr %7, align 4
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds i32, ptr %24, i64 0
  store i32 %23, ptr %25, align 4
  %26 = load ptr, ptr %5, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds i32, ptr %28, i64 1
  %30 = load i32, ptr %29, align 4
  %31 = mul nsw i32 0, %30
  %32 = sub nsw i32 %27, %31
  store i32 %32, ptr %7, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds i32, ptr %33, i64 1
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %7, align 4
  %37 = mul nsw i32 0, %36
  %38 = add nsw i32 %35, %37
  store i32 %38, ptr %9, align 4
  %39 = load i32, ptr %7, align 4
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds i32, ptr %40, i64 1
  store i32 %39, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load i32, ptr %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = sitofp i32 %44 to float
  %46 = fmul float %45, 5.000000e-01
  %47 = fptosi float %46 to i32
  %48 = load ptr, ptr %4, align 8
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %8, align 4
  %50 = load i32, ptr %9, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sitofp i32 %51 to float
  %53 = fmul float %52, 5.000000e-01
  %54 = fptosi float %53 to i32
  %55 = load ptr, ptr %5, align 8
  store i32 %54, ptr %55, align 4
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
