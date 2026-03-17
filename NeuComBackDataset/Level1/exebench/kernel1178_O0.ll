; ModuleID = '../benchmarks/fine_grained/exebench/kernel1178.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1178.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u64_to_wwn(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %3, align 4
  %6 = ashr i32 %5, 56
  %7 = and i32 %6, 255
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds i32, ptr %8, i64 0
  store i32 %7, ptr %9, align 4
  %10 = load i32, ptr %3, align 4
  %11 = ashr i32 %10, 48
  %12 = and i32 %11, 255
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  store i32 %12, ptr %14, align 4
  %15 = load i32, ptr %3, align 4
  %16 = ashr i32 %15, 40
  %17 = and i32 %16, 255
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  store i32 %17, ptr %19, align 4
  %20 = load i32, ptr %3, align 4
  %21 = ashr i32 %20, 32
  %22 = and i32 %21, 255
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 3
  store i32 %22, ptr %24, align 4
  %25 = load i32, ptr %3, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds i32, ptr %28, i64 4
  store i32 %27, ptr %29, align 4
  %30 = load i32, ptr %3, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds i32, ptr %33, i64 5
  store i32 %32, ptr %34, align 4
  %35 = load i32, ptr %3, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds i32, ptr %38, i64 6
  store i32 %37, ptr %39, align 4
  %40 = load i32, ptr %3, align 4
  %41 = and i32 %40, 255
  %42 = load ptr, ptr %4, align 8
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
