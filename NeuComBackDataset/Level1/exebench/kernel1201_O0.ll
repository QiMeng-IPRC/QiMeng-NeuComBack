; ModuleID = '../benchmarks/fine_grained/exebench/kernel1201.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1201.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NumericFormatToPrecision(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8
  store i32 30, ptr %12, align 4
  %13 = load ptr, ptr %6, align 8
  store i32 6, ptr %13, align 4
  br label %55

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  store i32 0, ptr %15, align 4
  %16 = load ptr, ptr %6, align 8
  store i32 0, ptr %16, align 4
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %17

17:                                               ; preds = %44, %14
  %18 = load ptr, ptr %4, align 8
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 8
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %43 [
    i32 45, label %26
    i32 43, label %26
    i32 90, label %31
    i32 92, label %31
    i32 36, label %31
    i32 57, label %31
    i32 46, label %42
  ]

26:                                               ; preds = %22, %22
  %27 = load i32, ptr %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 1, ptr %8, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %22, %22, %22, %22, %30
  %32 = load i32, ptr %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load ptr, ptr %5, align 8
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 4
  br label %44

42:                                               ; preds = %22
  store i32 1, ptr %7, align 4
  br label %44

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %42, %38
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %46, ptr %4, align 8
  br label %17, !llvm.loop !6

47:                                               ; preds = %17
  %48 = load i32, ptr %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load ptr, ptr %5, align 8
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %11
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
