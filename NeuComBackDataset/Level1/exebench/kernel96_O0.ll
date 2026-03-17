; ModuleID = '../benchmarks/fine_grained/exebench/kernel96.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel96.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %31 [
    i32 99, label %4
    i32 1, label %7
    i32 100, label %10
    i32 4, label %13
    i32 5, label %16
    i32 6, label %19
    i32 7, label %22
    i32 8, label %25
    i32 9, label %28
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr @g, align 4
  %6 = add nsw i32 %5, 2
  store i32 %6, ptr @g, align 4
  br label %34

7:                                                ; preds = %1
  %8 = load i32, ptr @g, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @g, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load i32, ptr @g, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @g, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load i32, ptr @g, align 4
  %15 = add nsw i32 %14, 3
  store i32 %15, ptr @g, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i32, ptr @g, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, ptr @g, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load i32, ptr @g, align 4
  %21 = add nsw i32 %20, 5
  store i32 %21, ptr @g, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load i32, ptr @g, align 4
  %24 = add nsw i32 %23, 6
  store i32 %24, ptr @g, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load i32, ptr @g, align 4
  %27 = add nsw i32 %26, 7
  store i32 %27, ptr @g, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load i32, ptr @g, align 4
  %30 = add nsw i32 %29, 8
  store i32 %30, ptr @g, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, ptr @g, align 4
  %33 = add nsw i32 %32, 8
  store i32 %33, ptr @g, align 4
  br label %34

34:                                               ; preds = %31, %28, %25, %22, %19, %16, %13, %10, %7, %4
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
