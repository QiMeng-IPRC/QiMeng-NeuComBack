; ModuleID = '../benchmarks/fine_grained/exebench/kernel1004.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local global i8 0, align 1
@bb = dso_local global i8 0, align 1
@cc = dso_local global i8 0, align 1
@dd = dso_local global i8 0, align 1
@ee = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leds_name_repaint() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = load i8, ptr @aa, align 1
  store i8 %4, ptr %2, align 1
  store i8 0, ptr %3, align 1
  store i8 0, ptr %1, align 1
  br label %5

5:                                                ; preds = %55, %0
  %6 = load i8, ptr %1, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %58

9:                                                ; preds = %5
  %10 = load i8, ptr @aa, align 1
  %11 = zext i8 %10 to i64
  %12 = ashr i64 %11, 1
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %3, align 1
  %16 = load i8, ptr %3, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %9
  %19 = load i8, ptr %2, align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %20, 1
  %22 = load i8, ptr @aa, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr @aa, align 1
  %26 = load i8, ptr %2, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, 2
  %29 = load i8, ptr @bb, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr @bb, align 1
  %33 = load i8, ptr %2, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, 3
  %36 = load i8, ptr @cc, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr @cc, align 1
  %40 = load i8, ptr %2, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, 4
  %43 = load i8, ptr @dd, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, ptr @dd, align 1
  %47 = load i8, ptr %2, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, 5
  %50 = load i8, ptr @ee, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr @ee, align 1
  br label %54

54:                                               ; preds = %18, %9
  br label %55

55:                                               ; preds = %54
  %56 = load i8, ptr %1, align 1
  %57 = add i8 %56, 1
  store i8 %57, ptr %1, align 1
  br label %5, !llvm.loop !6

58:                                               ; preds = %5
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
