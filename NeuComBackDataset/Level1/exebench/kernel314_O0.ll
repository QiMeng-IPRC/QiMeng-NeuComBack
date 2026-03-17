; ModuleID = '../benchmarks/fine_grained/exebench/kernel314.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel314.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fmt_ulonglong(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = load i32, ptr %4, align 4
  store i32 %8, ptr %7, align 4
  store i64 1, ptr %5, align 8
  br label %9

9:                                                ; preds = %15, %2
  %10 = load i32, ptr %7, align 4
  %11 = icmp sgt i32 %10, 9
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, ptr %7, align 4
  %14 = sdiv i32 %13, 10
  store i32 %14, ptr %7, align 4
  br label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %5, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %5, align 8
  br label %9, !llvm.loop !6

18:                                               ; preds = %9
  %19 = load ptr, ptr %3, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i64, ptr %5, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %24, ptr %3, align 8
  %25 = load i64, ptr %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, ptr %6, align 8
  %27 = load i32, ptr %4, align 4
  store i32 %27, ptr %7, align 4
  br label %28

28:                                               ; preds = %39, %21
  %29 = load i64, ptr %6, align 8
  %30 = add i64 %29, -1
  store i64 %30, ptr %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, ptr %7, align 4
  %34 = srem i32 %33, 10
  %35 = add nsw i32 %34, 48
  %36 = trunc i32 %35 to i8
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds i8, ptr %37, i32 -1
  store ptr %38, ptr %3, align 8
  store i8 %36, ptr %38, align 1
  br label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %7, align 4
  %41 = sdiv i32 %40, 10
  store i32 %41, ptr %7, align 4
  br label %28, !llvm.loop !8

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i64, ptr %5, align 8
  ret i64 %44
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
