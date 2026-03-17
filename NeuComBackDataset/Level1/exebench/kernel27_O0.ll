; ModuleID = '../benchmarks/fine_grained/exebench/kernel27.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel27.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantissa = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b64_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.mantissa, ptr %8, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  %11 = sub i64 4294967295, %10
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.mantissa, ptr %12, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = icmp ult i64 %11, %14
  %16 = zext i1 %15 to i32
  store i32 %16, ptr %6, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.mantissa, ptr %17, i32 0, i32 0
  %19 = load i64, ptr %18, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.mantissa, ptr %20, i32 0, i32 0
  %22 = load i64, ptr %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, ptr %21, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.mantissa, ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = sub i64 4294967295, %26
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.mantissa, ptr %28, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = icmp ult i64 %27, %30
  %32 = zext i1 %31 to i32
  store i32 %32, ptr %7, align 4
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.mantissa, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.mantissa, ptr %36, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %35
  store i64 %39, ptr %37, align 8
  %40 = load i32, ptr %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.mantissa, ptr %43, i32 0, i32 0
  %45 = load i64, ptr %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, ptr %44, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, ptr %3, align 4
  br label %51

49:                                               ; preds = %42, %2
  %50 = load i32, ptr %6, align 4
  store i32 %50, ptr %3, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = load i32, ptr %3, align 4
  ret i32 %52
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
