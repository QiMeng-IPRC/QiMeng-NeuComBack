; ModuleID = '../benchmarks/fine_grained/exebench/kernel1609.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1609.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, ptr, i64, i64, i32, ptr, i32 }

@GSU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fx_mult_i4() #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @GSU, align 8
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = mul nsw i32 %4, 4
  %6 = sext i32 %5 to i64
  store i64 %6, ptr %1, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %8 = getelementptr inbounds i64, ptr %7, i64 15
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, 1
  store i64 %10, ptr %8, align 8
  %11 = load i64, ptr %1, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  store i64 %11, ptr %12, align 8
  %13 = load i64, ptr %1, align 8
  store i64 %13, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 8
  %14 = load i64, ptr %1, align 8
  store i64 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 4), align 8
  %15 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  %16 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 14
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %0
  %20 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  %21 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %22 = getelementptr inbounds i64, ptr %21, i64 14
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i32, ptr %20, i64 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 7), align 8
  br label %26

26:                                               ; preds = %19, %0
  %27 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %28 = and i32 %27, -4865
  store i32 %28, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %29 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 0
  store ptr %30, ptr @GSU, align 8
  store ptr %30, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
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
