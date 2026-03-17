; ModuleID = '../benchmarks/fine_grained/exebench/kernel930.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel930.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitrv208(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds i32, ptr %11, i64 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %3, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds i32, ptr %14, i64 3
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %4, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 6
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %5, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 7
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %6, align 4
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 8
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %7, align 4
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds i32, ptr %26, i64 9
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %8, align 4
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds i32, ptr %29, i64 12
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %9, align 4
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds i32, ptr %32, i64 13
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %10, align 4
  %35 = load i32, ptr %7, align 4
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 2
  store i32 %35, ptr %37, align 4
  %38 = load i32, ptr %8, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds i32, ptr %39, i64 3
  store i32 %38, ptr %40, align 4
  %41 = load i32, ptr %9, align 4
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds i32, ptr %42, i64 6
  store i32 %41, ptr %43, align 4
  %44 = load i32, ptr %10, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds i32, ptr %45, i64 7
  store i32 %44, ptr %46, align 4
  %47 = load i32, ptr %3, align 4
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds i32, ptr %48, i64 8
  store i32 %47, ptr %49, align 4
  %50 = load i32, ptr %4, align 4
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds i32, ptr %51, i64 9
  store i32 %50, ptr %52, align 4
  %53 = load i32, ptr %5, align 4
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds i32, ptr %54, i64 12
  store i32 %53, ptr %55, align 4
  %56 = load i32, ptr %6, align 4
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds i32, ptr %57, i64 13
  store i32 %56, ptr %58, align 4
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
