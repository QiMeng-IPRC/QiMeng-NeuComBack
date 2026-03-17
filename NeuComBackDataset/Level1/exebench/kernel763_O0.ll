; ModuleID = '../benchmarks/fine_grained/exebench/kernel763.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel763.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_cs_to_rgbk_cm(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %13 = load i64, ptr %9, align 8
  %14 = load i64, ptr %10, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %6
  %17 = load i64, ptr %10, align 8
  %18 = load i64, ptr %11, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load ptr, ptr %12, align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 2
  store i64 0, ptr %22, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 0, ptr %24, align 8
  %25 = load ptr, ptr %12, align 8
  %26 = getelementptr inbounds i64, ptr %25, i64 0
  store i64 0, ptr %26, align 8
  %27 = load i64, ptr %9, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = getelementptr inbounds i64, ptr %28, i64 3
  store i64 %27, ptr %29, align 8
  br label %42

30:                                               ; preds = %16, %6
  %31 = load i64, ptr %9, align 8
  %32 = load ptr, ptr %12, align 8
  %33 = getelementptr inbounds i64, ptr %32, i64 0
  store i64 %31, ptr %33, align 8
  %34 = load i64, ptr %10, align 8
  %35 = load ptr, ptr %12, align 8
  %36 = getelementptr inbounds i64, ptr %35, i64 1
  store i64 %34, ptr %36, align 8
  %37 = load i64, ptr %11, align 8
  %38 = load ptr, ptr %12, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 2
  store i64 %37, ptr %39, align 8
  %40 = load ptr, ptr %12, align 8
  %41 = getelementptr inbounds i64, ptr %40, i64 3
  store i64 0, ptr %41, align 8
  br label %42

42:                                               ; preds = %30, %20
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
