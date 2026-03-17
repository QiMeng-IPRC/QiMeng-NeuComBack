; ModuleID = '../benchmarks/fine_grained/exebench/kernel1487.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1487.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32 }

@GSU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fx_from_r2() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @GSU, align 8
  %3 = and i32 %2, 4096
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %0
  %6 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %7 = getelementptr inbounds i32, ptr %6, i64 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %10 = getelementptr inbounds i32, ptr %9, i64 15
  %11 = load i32, ptr %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = load i32, ptr %1, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %1, align 4
  %16 = and i32 %15, 128
  %17 = shl i32 %16, 16
  store i32 %17, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 8
  %18 = load i32, ptr %1, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 4), align 4
  %19 = load i32, ptr %1, align 4
  store i32 %19, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %20 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  %21 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %22 = getelementptr inbounds i32, ptr %21, i64 14
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %5
  %25 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 7), align 8
  %26 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %27 = getelementptr inbounds i32, ptr %26, i64 14
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %25, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 8), align 8
  br label %34

34:                                               ; preds = %24, %5
  %35 = load i32, ptr @GSU, align 8
  %36 = and i32 %35, -4865
  store i32 %36, ptr @GSU, align 8
  %37 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %38 = getelementptr inbounds i32, ptr %37, i64 0
  store ptr %38, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  store ptr %38, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  br label %46

39:                                               ; preds = %0
  %40 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %41 = getelementptr inbounds i32, ptr %40, i64 2
  store ptr %41, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  %42 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %43 = getelementptr inbounds i32, ptr %42, i64 15
  %44 = load i32, ptr %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %39, %34
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
