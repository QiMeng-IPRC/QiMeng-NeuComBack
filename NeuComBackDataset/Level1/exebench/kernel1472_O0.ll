; ModuleID = '../benchmarks/fine_grained/exebench/kernel1472.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1472.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 0, ptr %4, align 4
  store i32 50, ptr %3, align 4
  store i32 1, ptr %3, align 4
  br label %5

5:                                                ; preds = %13, %1
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %4, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, ptr %4, align 4
  br label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %3, align 4
  br label %5, !llvm.loop !6

16:                                               ; preds = %5
  %17 = load i32, ptr %4, align 4
  switch i32 %17, label %31 [
    i32 1, label %18
    i32 2, label %21
    i32 3, label %24
    i32 4, label %25
    i32 5, label %28
  ]

18:                                               ; preds = %16
  %19 = load i32, ptr %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %4, align 4
  br label %32

21:                                               ; preds = %16
  %22 = load i32, ptr %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %4, align 4
  br label %32

24:                                               ; preds = %16
  store i32 0, ptr %4, align 4
  br label %32

25:                                               ; preds = %16
  %26 = load i32, ptr %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %4, align 4
  br label %32

28:                                               ; preds = %16
  %29 = load i32, ptr %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %4, align 4
  br label %32

31:                                               ; preds = %16
  store i32 0, ptr %4, align 4
  br label %32

32:                                               ; preds = %31, %28, %25, %24, %21, %18
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %4, align 4
  %35 = mul nsw i32 %34, %33
  store i32 %35, ptr %4, align 4
  %36 = load i32, ptr @i, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @i, align 4
  %38 = load i32, ptr %4, align 4
  ret i32 %38
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
