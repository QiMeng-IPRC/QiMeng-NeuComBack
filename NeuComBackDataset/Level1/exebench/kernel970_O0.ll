; ModuleID = '../benchmarks/fine_grained/exebench/kernel970.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel970.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_memUsedLength = dso_local global i32 0, align 4
@g_memTankSize = dso_local global i32 0, align 4
@g_memTank = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @frw_alloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, ptr @g_memUsedLength, align 4
  %9 = load i32, ptr %2, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, ptr @g_memTankSize, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load ptr, ptr @g_memTank, align 8
  %15 = load i32, ptr @g_memUsedLength, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  store ptr %17, ptr %3, align 8
  %18 = load i32, ptr @g_memUsedLength, align 4
  %19 = load i32, ptr %2, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, ptr @g_memUsedLength, align 4
  br label %21

21:                                               ; preds = %13, %7
  %22 = load ptr, ptr %3, align 8
  ret ptr %22
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
