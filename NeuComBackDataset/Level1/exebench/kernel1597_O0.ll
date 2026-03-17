; ModuleID = '../benchmarks/fine_grained/exebench/kernel1597.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1597.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, ptr, i64, i64, i32, ptr, i32 }

@GSU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fx_umult_i10() #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @GSU, align 8
  %3 = load i64, ptr %2, align 8
  %4 = mul i64 %3, 10
  store i64 %4, ptr %1, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %6 = getelementptr inbounds i64, ptr %5, i64 15
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8
  %9 = load i64, ptr %1, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  store i64 %9, ptr %10, align 8
  %11 = load i64, ptr %1, align 8
  store i64 %11, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 8
  %12 = load i64, ptr %1, align 8
  store i64 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 4), align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  %14 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 14
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %0
  %18 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %20 = getelementptr inbounds i64, ptr %19, i64 14
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i32, ptr %18, i64 %21
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 7), align 8
  br label %24

24:                                               ; preds = %17, %0
  %25 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %26 = and i32 %25, -4865
  store i32 %26, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %27 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %28 = getelementptr inbounds i64, ptr %27, i64 0
  store ptr %28, ptr @GSU, align 8
  store ptr %28, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
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
