; ModuleID = '../benchmarks/fine_grained/exebench/kernel469.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel469.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seed = dso_local global i64 0, align 8
@rtab = dso_local global ptr null, align 8
@last = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srandom0(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store i64 16807, ptr %3, align 8
  store i64 2147483647, ptr %4, align 8
  store i64 127773, ptr %5, align 8
  store i64 2836, ptr %6, align 8
  %9 = load i64, ptr %2, align 8
  %10 = load i64, ptr %5, align 8
  %11 = sdiv i64 %9, %10
  store i64 %11, ptr %7, align 8
  %12 = load i64, ptr %3, align 8
  %13 = load i64, ptr %2, align 8
  %14 = load i64, ptr %7, align 8
  %15 = load i64, ptr %5, align 8
  %16 = mul nsw i64 %14, %15
  %17 = sub nsw i64 %13, %16
  %18 = mul nsw i64 %12, %17
  %19 = load i64, ptr %7, align 8
  %20 = load i64, ptr %6, align 8
  %21 = mul nsw i64 %19, %20
  %22 = sub nsw i64 %18, %21
  store i64 %22, ptr @seed, align 8
  store i32 39, ptr %8, align 4
  br label %23

23:                                               ; preds = %57, %1
  %24 = load i32, ptr %8, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load i64, ptr @seed, align 8
  %28 = load i64, ptr %5, align 8
  %29 = sdiv i64 %27, %28
  store i64 %29, ptr %7, align 8
  %30 = load i64, ptr %3, align 8
  %31 = load i64, ptr @seed, align 8
  %32 = load i64, ptr %7, align 8
  %33 = load i64, ptr %5, align 8
  %34 = mul nsw i64 %32, %33
  %35 = sub nsw i64 %31, %34
  %36 = mul nsw i64 %30, %35
  %37 = load i64, ptr %7, align 8
  %38 = load i64, ptr %6, align 8
  %39 = mul nsw i64 %37, %38
  %40 = sub nsw i64 %36, %39
  store i64 %40, ptr @seed, align 8
  %41 = load i64, ptr @seed, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load i64, ptr %4, align 8
  %45 = load i64, ptr @seed, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, ptr @seed, align 8
  br label %47

47:                                               ; preds = %43, %26
  %48 = load i32, ptr %8, align 4
  %49 = icmp slt i32 %48, 32
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i64, ptr @seed, align 8
  %52 = load ptr, ptr @rtab, align 8
  %53 = load i32, ptr %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, ptr %52, i64 %54
  store i64 %51, ptr %55, align 8
  br label %56

56:                                               ; preds = %50, %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, ptr %8, align 4
  br label %23, !llvm.loop !6

60:                                               ; preds = %23
  %61 = load i64, ptr @seed, align 8
  store i64 %61, ptr @last, align 8
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
