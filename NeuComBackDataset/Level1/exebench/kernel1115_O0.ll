; ModuleID = '../benchmarks/fine_grained/exebench/kernel1115.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1115.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @largest_combine_accum_help(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @INT_MAX, align 4
  %7 = sub nsw i32 %6, 1
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %43

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = load i32, ptr @INT_MAX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr @INT_MAX, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, ptr @INT_MAX, align 4
  %22 = load ptr, ptr %4, align 8
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %14
  br label %43

24:                                               ; preds = %10
  %25 = load ptr, ptr %4, align 8
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @INT_MAX, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr @INT_MAX, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %4, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %3, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %29, %24
  %41 = load i32, ptr %3, align 4
  %42 = load ptr, ptr %4, align 8
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %9, %23, %40, %35
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
