; ModuleID = '../benchmarks/fine_grained/exebench/kernel958.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel958.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MWrite8L(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 255
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds i32, ptr %7, i64 0
  store i32 %6, ptr %8, align 4
  %9 = load i32, ptr %4, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds i32, ptr %12, i64 1
  store i32 %11, ptr %13, align 4
  %14 = load i32, ptr %4, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 2
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr %4, align 4
  %20 = ashr i32 %19, 24
  %21 = and i32 %20, 255
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds i32, ptr %22, i64 3
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr %4, align 4
  %25 = ashr i32 %24, 32
  %26 = and i32 %25, 255
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds i32, ptr %27, i64 4
  store i32 %26, ptr %28, align 4
  %29 = load i32, ptr %4, align 4
  %30 = ashr i32 %29, 40
  %31 = and i32 %30, 255
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds i32, ptr %32, i64 5
  store i32 %31, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = ashr i32 %34, 48
  %36 = and i32 %35, 255
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds i32, ptr %37, i64 6
  store i32 %36, ptr %38, align 4
  %39 = load i32, ptr %4, align 4
  %40 = ashr i32 %39, 56
  %41 = and i32 %40, 255
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds i32, ptr %42, i64 7
  store i32 %41, ptr %43, align 4
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
