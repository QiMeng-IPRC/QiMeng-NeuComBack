; ModuleID = '../benchmarks/fine_grained/exebench/kernel570.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel570.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rational_best_approximation(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %21 = load i64, ptr %7, align 8
  store i64 %21, ptr %13, align 8
  %22 = load i64, ptr %8, align 8
  store i64 %22, ptr %14, align 8
  store i64 0, ptr %18, align 8
  store i64 0, ptr %15, align 8
  store i64 1, ptr %16, align 8
  store i64 1, ptr %17, align 8
  br label %23

23:                                               ; preds = %38, %6
  %24 = load i64, ptr %17, align 8
  %25 = load i64, ptr %9, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, ptr %18, align 8
  %29 = load i64, ptr %10, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = load i64, ptr %15, align 8
  store i64 %32, ptr %17, align 8
  %33 = load i64, ptr %16, align 8
  store i64 %33, ptr %18, align 8
  br label %61

34:                                               ; preds = %27
  %35 = load i64, ptr %14, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %61

38:                                               ; preds = %34
  %39 = load i64, ptr %14, align 8
  store i64 %39, ptr %19, align 8
  %40 = load i64, ptr %13, align 8
  %41 = load i64, ptr %14, align 8
  %42 = udiv i64 %40, %41
  store i64 %42, ptr %20, align 8
  %43 = load i64, ptr %13, align 8
  %44 = load i64, ptr %14, align 8
  %45 = urem i64 %43, %44
  store i64 %45, ptr %14, align 8
  %46 = load i64, ptr %19, align 8
  store i64 %46, ptr %13, align 8
  %47 = load i64, ptr %15, align 8
  %48 = load i64, ptr %20, align 8
  %49 = load i64, ptr %17, align 8
  %50 = mul i64 %48, %49
  %51 = add i64 %47, %50
  store i64 %51, ptr %19, align 8
  %52 = load i64, ptr %17, align 8
  store i64 %52, ptr %15, align 8
  %53 = load i64, ptr %19, align 8
  store i64 %53, ptr %17, align 8
  %54 = load i64, ptr %16, align 8
  %55 = load i64, ptr %20, align 8
  %56 = load i64, ptr %18, align 8
  %57 = mul i64 %55, %56
  %58 = add i64 %54, %57
  store i64 %58, ptr %19, align 8
  %59 = load i64, ptr %18, align 8
  store i64 %59, ptr %16, align 8
  %60 = load i64, ptr %19, align 8
  store i64 %60, ptr %18, align 8
  br label %23

61:                                               ; preds = %37, %31
  %62 = load i64, ptr %17, align 8
  %63 = load ptr, ptr %11, align 8
  store i64 %62, ptr %63, align 8
  %64 = load i64, ptr %18, align 8
  %65 = load ptr, ptr %12, align 8
  store i64 %64, ptr %65, align 8
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
