; ModuleID = '../benchmarks/fine_grained/exebench/kernel999.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel999.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINES = dso_local global i32 0, align 4
@ERR = dso_local global i32 0, align 4
@COLS = dso_local global i32 0, align 4
@cursolY = dso_local global i32 0, align 4
@cursolX = dso_local global i32 0, align 4
@OK = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @move(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr @LINES, align 4
  %10 = load i32, ptr %4, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, ptr @ERR, align 4
  store i32 %13, ptr %3, align 4
  br label %27

14:                                               ; preds = %8
  %15 = load i32, ptr %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @COLS, align 4
  %19 = load i32, ptr %5, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %14
  %22 = load i32, ptr @ERR, align 4
  store i32 %22, ptr %3, align 4
  br label %27

23:                                               ; preds = %17
  %24 = load i32, ptr %4, align 4
  store i32 %24, ptr @cursolY, align 4
  %25 = load i32, ptr %5, align 4
  store i32 %25, ptr @cursolX, align 4
  %26 = load i32, ptr @OK, align 4
  store i32 %26, ptr %3, align 4
  br label %27

27:                                               ; preds = %23, %21, %12
  %28 = load i32, ptr %3, align 4
  ret i32 %28
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
