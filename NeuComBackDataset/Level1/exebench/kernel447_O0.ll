; ModuleID = '../benchmarks/fine_grained/exebench/kernel447.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel447.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@failed = dso_local global i32 0, align 4
@passed = dso_local global i32 0, align 4
@skipped = dso_local global i32 0, align 4
@tests = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tp(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %13 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr @failed, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @failed, align 4
  br label %13

7:                                                ; preds = %1
  %8 = load i32, ptr @passed, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @passed, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32, ptr @skipped, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @skipped, align 4
  br label %13

13:                                               ; preds = %1, %10, %7, %4
  %14 = load i32, ptr @tests, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @tests, align 4
  %16 = load i32, ptr %2, align 4
  ret i32 %16
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
