; ModuleID = '../benchmarks/fine_grained/exebench/kernel1537.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1537.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_mulu(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %11 = load i32, ptr %4, align 4
  store i32 %11, ptr %9, align 4
  %12 = load i32, ptr %5, align 4
  store i32 %12, ptr %10, align 4
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %29, %3
  %14 = load i32, ptr %7, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i32, ptr %10, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr %8, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, ptr %8, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, ptr %9, align 4
  %26 = shl i32 %25, 1
  store i32 %26, ptr %9, align 4
  %27 = load i32, ptr %10, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, ptr %10, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %7, align 4
  br label %13, !llvm.loop !6

32:                                               ; preds = %13
  %33 = load i32, ptr %8, align 4
  %34 = load ptr, ptr %6, align 8
  store i32 %33, ptr %34, align 4
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
