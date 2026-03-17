; ModuleID = '../benchmarks/fine_grained/exebench/kernel1367.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1367.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_ptr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr %5, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %15, %10
  %12 = load i64, ptr %5, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  %16 = load i64, ptr %5, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, ptr %5, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = load i64, ptr %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, ptr %18, align 8
  br label %11, !llvm.loop !6

21:                                               ; preds = %11
  br label %34

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i64, ptr %5, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26
  %28 = load i64, ptr %5, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr %5, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = load i64, ptr %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, ptr %30, align 8
  br label %23, !llvm.loop !8

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %21
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
!8 = distinct !{!8, !7}
