; ModuleID = '../benchmarks/fine_grained/exebench/kernel1596.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1596.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, ptr }

@ivm = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_div() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @ivm, align 8
  %4 = getelementptr inbounds i32, ptr %3, i64 0
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 1), align 8
  %7 = sub nsw i32 %6, 1
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, ptr %1, align 4
  br label %60

10:                                               ; preds = %0
  %11 = load ptr, ptr @ivm, align 8
  %12 = getelementptr inbounds i32, ptr %11, i64 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 1), align 8
  %15 = sub nsw i32 %14, 3
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 -1, ptr %1, align 4
  br label %60

18:                                               ; preds = %10
  %19 = load ptr, ptr @ivm, align 8
  %20 = getelementptr inbounds i32, ptr %19, i64 2
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 1), align 8
  %23 = sub nsw i32 %22, 3
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, ptr %1, align 4
  br label %60

26:                                               ; preds = %18
  %27 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 2), align 8
  %28 = load ptr, ptr @ivm, align 8
  %29 = getelementptr inbounds i32, ptr %28, i64 2
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %27, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 -5, ptr %1, align 4
  br label %60

36:                                               ; preds = %26
  %37 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 2), align 8
  %38 = load ptr, ptr @ivm, align 8
  %39 = getelementptr inbounds i32, ptr %38, i64 1
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %37, i64 %41
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %2, align 8
  %44 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 2), align 8
  %45 = load ptr, ptr @ivm, align 8
  %46 = getelementptr inbounds i32, ptr %45, i64 2
  %47 = load i32, ptr %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %44, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = load i64, ptr %2, align 8
  %52 = udiv i64 %51, %50
  store i64 %52, ptr %2, align 8
  %53 = load i64, ptr %2, align 8
  %54 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 2), align 8
  %55 = load ptr, ptr @ivm, align 8
  %56 = getelementptr inbounds i32, ptr %55, i64 0
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %54, i64 %58
  store i64 %53, ptr %59, align 8
  store i32 0, ptr %1, align 4
  br label %60

60:                                               ; preds = %36, %35, %25, %17, %9
  %61 = load i32, ptr %1, align 4
  ret i32 %61
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
