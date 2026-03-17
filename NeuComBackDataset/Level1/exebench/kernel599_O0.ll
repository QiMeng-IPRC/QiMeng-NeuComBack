; ModuleID = '../benchmarks/fine_grained/exebench/kernel599.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.token = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @separate(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %69, %3
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 8
  %19 = load i32, ptr %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, ptr %8, align 4
  %24 = load i32, ptr %12, align 4
  switch i32 %24, label %69 [
    i32 0, label %25
    i32 1, label %33
  ]

25:                                               ; preds = %17
  %26 = load i32, ptr %8, align 4
  switch i32 %26, label %30 [
    i32 0, label %27
    i32 13, label %27
    i32 10, label %27
    i32 35, label %27
    i32 44, label %29
    i32 32, label %29
    i32 40, label %29
    i32 41, label %29
    i32 9, label %29
  ]

27:                                               ; preds = %25, %25, %25, %25
  %28 = load i32, ptr %11, align 4
  store i32 %28, ptr %4, align 4
  br label %74

29:                                               ; preds = %25, %25, %25, %25, %25
  br label %32

30:                                               ; preds = %25
  %31 = load i32, ptr %9, align 4
  store i32 %31, ptr %10, align 4
  store i32 1, ptr %12, align 4
  br label %32

32:                                               ; preds = %30, %29
  br label %69

33:                                               ; preds = %17
  %34 = load i32, ptr %8, align 4
  switch i32 %34, label %68 [
    i32 0, label %35
    i32 13, label %35
    i32 10, label %35
    i32 35, label %35
    i32 44, label %52
    i32 32, label %52
    i32 40, label %52
    i32 41, label %52
    i32 9, label %52
  ]

35:                                               ; preds = %33, %33, %33, %33
  %36 = load i32, ptr %10, align 4
  %37 = load ptr, ptr %6, align 8
  %38 = load i32, ptr %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.token, ptr %37, i64 %39
  %41 = getelementptr inbounds %struct.token, ptr %40, i32 0, i32 0
  store i32 %36, ptr %41, align 4
  %42 = load i32, ptr %9, align 4
  %43 = load i32, ptr %10, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load ptr, ptr %6, align 8
  %46 = load i32, ptr %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %11, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.token, ptr %45, i64 %48
  %50 = getelementptr inbounds %struct.token, ptr %49, i32 0, i32 1
  store i32 %44, ptr %50, align 4
  %51 = load i32, ptr %11, align 4
  store i32 %51, ptr %4, align 4
  br label %74

52:                                               ; preds = %33, %33, %33, %33, %33
  %53 = load i32, ptr %10, align 4
  %54 = load ptr, ptr %6, align 8
  %55 = load i32, ptr %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.token, ptr %54, i64 %56
  %58 = getelementptr inbounds %struct.token, ptr %57, i32 0, i32 0
  store i32 %53, ptr %58, align 4
  %59 = load i32, ptr %9, align 4
  %60 = load i32, ptr %10, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load ptr, ptr %6, align 8
  %63 = load i32, ptr %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %11, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds %struct.token, ptr %62, i64 %65
  %67 = getelementptr inbounds %struct.token, ptr %66, i32 0, i32 1
  store i32 %61, ptr %67, align 4
  store i32 0, ptr %12, align 4
  br label %68

68:                                               ; preds = %33, %52
  br label %69

69:                                               ; preds = %68, %17, %32
  %70 = load i32, ptr %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %9, align 4
  br label %13, !llvm.loop !6

72:                                               ; preds = %13
  %73 = load i32, ptr %11, align 4
  store i32 %73, ptr %4, align 4
  br label %74

74:                                               ; preds = %72, %35, %27
  %75 = load i32, ptr %4, align 4
  ret i32 %75
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
