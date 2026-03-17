; ModuleID = '../benchmarks/fine_grained/exebench/kernel859.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel859.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uchar0 = dso_local global i32 0, align 4
@failures = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @or_lit2uchar() #0 {
  %1 = load i32, ptr @uchar0, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, ptr @failures, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @failures, align 4
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, ptr @uchar0, align 4
  %8 = or i32 %7, 1
  store i32 %8, ptr @uchar0, align 4
  %9 = load i32, ptr @uchar0, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i32, ptr @failures, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @failures, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = load i32, ptr @uchar0, align 4
  %16 = or i32 %15, 2
  store i32 %16, ptr @uchar0, align 4
  %17 = load i32, ptr @uchar0, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, ptr @failures, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @failures, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, ptr @uchar0, align 4
  %24 = or i32 %23, 14
  store i32 %24, ptr @uchar0, align 4
  %25 = load i32, ptr @uchar0, align 4
  %26 = icmp ne i32 %25, 15
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, ptr @failures, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr @failures, align 4
  br label %30

30:                                               ; preds = %27, %22
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
