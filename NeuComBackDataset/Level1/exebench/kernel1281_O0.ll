; ModuleID = '../benchmarks/fine_grained/exebench/kernel1281.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1281.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@ring_clock = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ring_supplied(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %7, %9
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 0
  %18 = load i64, ptr %17, align 8
  %19 = load i32, ptr %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  br label %33

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %23, i32 0, i32 0
  %25 = load i64, ptr %24, align 8
  %26 = load i32, ptr %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, ptr %29, i32 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = sub nsw i64 %28, %31
  br label %33

33:                                               ; preds = %22, %15
  %34 = phi i64 [ %21, %15 ], [ %32, %22 ]
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, ptr %35, i32 0, i32 0
  store i64 %34, ptr %36, align 8
  %37 = load i64, ptr @ring_clock, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, ptr @ring_clock, align 8
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, ptr %39, i32 0, i32 3
  store i64 %38, ptr %40, align 8
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
