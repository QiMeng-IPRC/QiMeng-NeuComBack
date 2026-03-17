; ModuleID = '../benchmarks/fine_grained/exebench/kernel239.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel239.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pseudonoise(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %8, align 8
  store i64 0, ptr %5, align 8
  store i64 0, ptr %7, align 8
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i64, ptr %7, align 8
  %13 = load i64, ptr %4, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i64, ptr %8, align 8
  %17 = and i64 %16, 1
  store i64 %17, ptr %6, align 8
  %18 = load i64, ptr %8, align 8
  %19 = and i64 %18, 268435456
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i64, ptr %6, align 8
  %23 = xor i64 %22, 1
  store i64 %23, ptr %6, align 8
  br label %27

24:                                               ; preds = %15
  %25 = load i64, ptr %6, align 8
  %26 = xor i64 %25, 0
  store i64 %26, ptr %6, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, ptr %5, align 8
  %29 = shl i64 %28, 1
  %30 = load i64, ptr %8, align 8
  %31 = and i64 %30, 1
  %32 = or i64 %29, %31
  store i64 %32, ptr %5, align 8
  %33 = load i64, ptr %8, align 8
  %34 = ashr i64 %33, 1
  store i64 %34, ptr %8, align 8
  %35 = load i64, ptr %6, align 8
  %36 = and i64 %35, 1
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i64, ptr %8, align 8
  %40 = or i64 %39, 1073741824
  store i64 %40, ptr %8, align 8
  br label %41

41:                                               ; preds = %38, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i64, ptr %7, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %7, align 8
  br label %11, !llvm.loop !6

45:                                               ; preds = %11
  %46 = load i64, ptr %8, align 8
  %47 = load ptr, ptr %3, align 8
  store i64 %46, ptr %47, align 8
  %48 = load i64, ptr %5, align 8
  ret i64 %48
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
