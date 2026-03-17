; ModuleID = '../benchmarks/fine_grained/exebench/kernel338.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel338.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fftwf_ops_madd(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load i32, ptr %5, align 4
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, ptr %18, i32 0, i32 0
  store i32 %17, ptr %19, align 4
  %20 = load i32, ptr %5, align 4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, ptr %29, i32 0, i32 1
  store i32 %28, ptr %30, align 4
  %31 = load i32, ptr %5, align 4
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, ptr %40, i32 0, i32 2
  store i32 %39, ptr %41, align 4
  %42 = load i32, ptr %5, align 4
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load ptr, ptr %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, ptr %51, i32 0, i32 3
  store i32 %50, ptr %52, align 4
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
