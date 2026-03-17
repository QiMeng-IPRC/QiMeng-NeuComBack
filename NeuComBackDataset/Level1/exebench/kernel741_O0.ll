; ModuleID = '../benchmarks/fine_grained/exebench/kernel741.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel741.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, ptr }

@ivm = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_not() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = load ptr, ptr @ivm, align 8
  %4 = getelementptr inbounds i32, ptr %3, i64 0
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 1), align 8
  %7 = sub nsw i32 %6, 1
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, ptr %1, align 4
  br label %36

10:                                               ; preds = %0
  %11 = load ptr, ptr @ivm, align 8
  %12 = getelementptr inbounds i32, ptr %11, i64 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 1), align 8
  %15 = sub nsw i32 %14, 1
  %16 = icmp sge i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 -1, ptr %1, align 4
  br label %36

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 2), align 8
  %20 = load ptr, ptr @ivm, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %19, i64 %23
  %25 = load i16, ptr %24, align 2
  store i16 %25, ptr %2, align 2
  %26 = load i16, ptr %2, align 2
  %27 = zext i16 %26 to i32
  %28 = xor i32 %27, -1
  %29 = trunc i32 %28 to i16
  %30 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @ivm, i32 0, i32 2), align 8
  %31 = load ptr, ptr @ivm, align 8
  %32 = getelementptr inbounds i32, ptr %31, i64 0
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %30, i64 %34
  store i16 %29, ptr %35, align 2
  store i32 0, ptr %1, align 4
  br label %36

36:                                               ; preds = %18, %17, %9
  %37 = load i32, ptr %1, align 4
  ret i32 %37
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
