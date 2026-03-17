; ModuleID = '../benchmarks/fine_grained/exebench/kernel979.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel979.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiply(i64 %0, i64 %1, ptr noundef %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca ptr, align 8
  store i64 %0, ptr %4, align 4
  store i64 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = mul nsw i32 %8, %10
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = mul nsw i32 %13, %15
  %17 = sub nsw i32 %11, %16
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, ptr %18, i32 0, i32 0
  store i32 %17, ptr %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul nsw i32 %21, %23
  %25 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 0
  %28 = load i32, ptr %27, align 4
  %29 = mul nsw i32 %26, %28
  %30 = add nsw i32 %24, %29
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, ptr %31, i32 0, i32 1
  store i32 %30, ptr %32, align 4
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
