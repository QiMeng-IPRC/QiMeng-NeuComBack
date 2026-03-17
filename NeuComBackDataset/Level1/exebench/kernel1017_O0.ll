; ModuleID = '../benchmarks/fine_grained/exebench/kernel1017.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, ptr, i64, i64, i32, ptr, i32 }

@GSU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fx_and_r2() #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @GSU, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %5 = getelementptr inbounds i64, ptr %4, i64 2
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %3, %6
  store i64 %7, ptr %1, align 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %9 = getelementptr inbounds i64, ptr %8, i64 15
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8
  %12 = load i64, ptr %1, align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  store i64 %12, ptr %13, align 8
  %14 = load i64, ptr %1, align 8
  store i64 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 8
  %15 = load i64, ptr %1, align 8
  store i64 %15, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 4), align 8
  %16 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  %17 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 14
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %0
  %21 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 14
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 7), align 8
  br label %27

27:                                               ; preds = %20, %0
  %28 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %29 = and i32 %28, -4865
  store i32 %29, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %30 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %31 = getelementptr inbounds i64, ptr %30, i64 0
  store ptr %31, ptr @GSU, align 8
  store ptr %31, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
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
