; ModuleID = '../benchmarks/fine_grained/exebench/kernel157.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel157.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmathP3SubV3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %10, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, ptr %14, i32 0, i32 2
  store i64 %13, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, ptr %16, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, ptr %19, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, ptr %23, i32 0, i32 1
  store i64 %22, ptr %24, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, ptr %25, i32 0, i32 0
  %27 = load i64, ptr %26, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, ptr %28, i32 0, i32 0
  %30 = load i64, ptr %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, ptr %32, i32 0, i32 0
  store i64 %31, ptr %33, align 8
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
