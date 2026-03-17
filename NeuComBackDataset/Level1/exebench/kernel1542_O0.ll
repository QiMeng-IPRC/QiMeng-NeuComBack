; ModuleID = '../benchmarks/fine_grained/exebench/kernel1542.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CPU = dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asr_shift_by_reg(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %8 = load i32, ptr %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = load i32, ptr %6, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = shl i32 1, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load ptr, ptr %7, align 8
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %5, align 4
  %23 = load i32, ptr %6, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, ptr %4, align 4
  br label %40

25:                                               ; preds = %10
  %26 = load i32, ptr %5, align 4
  %27 = and i32 %26, -2147483648
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load ptr, ptr %7, align 8
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %5, align 4
  %32 = ashr i32 %31, 31
  store i32 %32, ptr %4, align 4
  br label %40

33:                                               ; preds = %3
  %34 = load i32, ptr @CPU, align 4
  %35 = and i32 %34, 536870912
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load ptr, ptr %7, align 8
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %5, align 4
  store i32 %39, ptr %4, align 4
  br label %40

40:                                               ; preds = %33, %25, %13
  %41 = load i32, ptr %4, align 4
  ret i32 %41
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
