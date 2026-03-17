; ModuleID = '../benchmarks/fine_grained/exebench/kernel1473.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1473.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rate_limit_is_ready(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load i64, ptr %5, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %6, align 4
  %21 = load i64, ptr %5, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %22, i32 0, i32 1
  store i64 %21, ptr %23, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, ptr %24, i32 0, i32 2
  store i32 0, ptr %25, align 8
  %26 = load i32, ptr %6, align 4
  store i32 %26, ptr %3, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = icmp sle i32 %30, 16000000
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %32, %27
  store i32 0, ptr %3, align 4
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, ptr %3, align 4
  ret i32 %39
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
