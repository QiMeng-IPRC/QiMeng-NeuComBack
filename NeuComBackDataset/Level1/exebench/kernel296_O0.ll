; ModuleID = '../benchmarks/fine_grained/exebench/kernel296.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel296.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@METADATA_BASE = dso_local global i64 0, align 8
@LEVEL_BYTES = dso_local global i64 0, align 8
@LEVEL_SIZE = dso_local global i64 0, align 8
@PAGE_MASK = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @level_bmap(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  switch i64 %8, label %35 [
    i64 3, label %9
    i64 2, label %11
    i64 1, label %21
  ]

9:                                                ; preds = %3
  %10 = load i64, ptr @METADATA_BASE, align 8
  store i64 %10, ptr %7, align 8
  br label %36

11:                                               ; preds = %3
  %12 = load i64, ptr @METADATA_BASE, align 8
  %13 = load i64, ptr @LEVEL_BYTES, align 8
  %14 = add i64 %12, %13
  %15 = load i64, ptr %5, align 8
  %16 = lshr i64 %15, 36
  %17 = and i64 %16, 4095
  %18 = load i64, ptr @LEVEL_BYTES, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %14, %19
  store i64 %20, ptr %7, align 8
  br label %36

21:                                               ; preds = %3
  %22 = load i64, ptr @METADATA_BASE, align 8
  %23 = load i64, ptr @LEVEL_BYTES, align 8
  %24 = add i64 %22, %23
  %25 = load i64, ptr @LEVEL_SIZE, align 8
  %26 = load i64, ptr @LEVEL_BYTES, align 8
  %27 = mul i64 %25, %26
  %28 = add i64 %24, %27
  %29 = load i64, ptr %5, align 8
  %30 = lshr i64 %29, 24
  %31 = and i64 %30, 16777215
  %32 = load i64, ptr @LEVEL_BYTES, align 8
  %33 = mul i64 %31, %32
  %34 = add i64 %28, %33
  store i64 %34, ptr %7, align 8
  br label %36

35:                                               ; preds = %3
  store i64 -1, ptr %7, align 8
  br label %36

36:                                               ; preds = %35, %21, %11, %9
  %37 = load ptr, ptr %6, align 8
  %38 = icmp ne ptr %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i64, ptr %5, align 8
  %41 = load i64, ptr %4, align 8
  %42 = mul i64 12, %41
  %43 = lshr i64 %40, %42
  %44 = load i64, ptr @PAGE_MASK, align 8
  %45 = and i64 %43, %44
  %46 = load ptr, ptr %6, align 8
  store i64 %45, ptr %46, align 8
  br label %47

47:                                               ; preds = %39, %36
  %48 = load i64, ptr %7, align 8
  ret i64 %48
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
