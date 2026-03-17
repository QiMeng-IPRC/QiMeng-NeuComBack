; ModuleID = '../benchmarks/fine_grained/exebench/kernel910.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel910.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@ARCH_LOG2_SIZEOF_LONG = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gx_get_largest_clipping_box(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr @ARCH_LOG2_SIZEOF_LONG, align 4
  %6 = shl i32 1, %5
  %7 = mul nsw i32 %6, 8
  %8 = sub nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = shl i64 -1, %9
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, ptr %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, ptr %12, i32 0, i32 0
  store i64 %10, ptr %13, align 8
  %14 = load i32, ptr @ARCH_LOG2_SIZEOF_LONG, align 4
  %15 = shl i32 1, %14
  %16 = mul nsw i32 %15, 8
  %17 = sub nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = shl i64 -1, %18
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, ptr %21, i32 0, i32 1
  store i64 %19, ptr %22, align 8
  %23 = load i32, ptr @ARCH_LOG2_SIZEOF_LONG, align 4
  %24 = shl i32 1, %23
  %25 = mul nsw i32 %24, 8
  %26 = sub nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = shl i64 -1, %27
  %29 = xor i64 %28, -1
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, ptr %31, i32 0, i32 0
  store i64 %29, ptr %32, align 8
  %33 = load i32, ptr @ARCH_LOG2_SIZEOF_LONG, align 4
  %34 = shl i32 1, %33
  %35 = mul nsw i32 %34, 8
  %36 = sub nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = shl i64 -1, %37
  %39 = xor i64 %38, -1
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, ptr %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, ptr %41, i32 0, i32 1
  store i64 %39, ptr %42, align 8
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
