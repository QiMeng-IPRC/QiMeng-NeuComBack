; ModuleID = '../benchmarks/fine_grained/exebench/kernel777.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel777.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Lzma2Dec_GetOldProps(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %7 = load i32, ptr %4, align 4
  %8 = icmp sgt i32 %7, 40
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 4, ptr %3, align 4
  br label %41

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 40
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %22

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 1
  %17 = or i32 2, %16
  %18 = load i32, ptr %4, align 4
  %19 = sdiv i32 %18, 2
  %20 = add nsw i32 %19, 11
  %21 = shl i32 %17, %20
  br label %22

22:                                               ; preds = %14, %13
  %23 = phi i32 [ -1, %13 ], [ %21, %14 ]
  store i32 %23, ptr %6, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds i32, ptr %24, i64 0
  store i32 4, ptr %25, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds i32, ptr %27, i64 1
  store i32 %26, ptr %28, align 4
  %29 = load i32, ptr %6, align 4
  %30 = ashr i32 %29, 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds i32, ptr %31, i64 2
  store i32 %30, ptr %32, align 4
  %33 = load i32, ptr %6, align 4
  %34 = ashr i32 %33, 16
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds i32, ptr %35, i64 3
  store i32 %34, ptr %36, align 4
  %37 = load i32, ptr %6, align 4
  %38 = ashr i32 %37, 24
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds i32, ptr %39, i64 4
  store i32 %38, ptr %40, align 4
  store i32 0, ptr %3, align 4
  br label %41

41:                                               ; preds = %22, %9
  %42 = load i32, ptr %3, align 4
  ret i32 %42
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
