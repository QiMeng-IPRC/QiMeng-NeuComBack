; ModuleID = '../benchmarks/fine_grained/exebench/kernel611.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel611.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uchar_from_utf16(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i32 -1, ptr %8, align 4
  %9 = load ptr, ptr %6, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i64, ptr %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, ptr %4, align 4
  br label %70

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds i32, ptr %16, i64 0
  %18 = load i32, ptr %17, align 4
  %19 = icmp sge i32 %18, 55296
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds i32, ptr %21, i64 0
  %23 = load i32, ptr %22, align 4
  %24 = icmp sle i32 %23, 56319
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load i64, ptr %7, align 8
  %27 = icmp ugt i64 %26, 1
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds i32, ptr %29, i64 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp sge i32 %31, 56320
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds i32, ptr %34, i64 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp sle i32 %36, 57343
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds i32, ptr %39, i64 0
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1023
  %43 = mul nsw i32 %42, 1024
  %44 = add nsw i32 65536, %43
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds i32, ptr %45, i64 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1023
  %49 = add nsw i32 %44, %48
  %50 = load ptr, ptr %5, align 8
  store i32 %49, ptr %50, align 4
  store i32 2, ptr %8, align 4
  br label %51

51:                                               ; preds = %38, %33, %28, %25
  br label %68

52:                                               ; preds = %20, %15
  %53 = load ptr, ptr %6, align 8
  %54 = getelementptr inbounds i32, ptr %53, i64 0
  %55 = load i32, ptr %54, align 4
  %56 = icmp slt i32 %55, 56320
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds i32, ptr %58, i64 0
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, 57343
  br i1 %61, label %62, label %67

62:                                               ; preds = %57, %52
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds i32, ptr %63, i64 0
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %5, align 8
  store i32 %65, ptr %66, align 4
  store i32 1, ptr %8, align 4
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, ptr %8, align 4
  store i32 %69, ptr %4, align 4
  br label %70

70:                                               ; preds = %68, %14
  %71 = load i32, ptr %4, align 4
  ret i32 %71
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
