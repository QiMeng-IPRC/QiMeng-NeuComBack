; ModuleID = '../benchmarks/fine_grained/exebench/kernel219.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel219.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }

@GSU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fx_adc_i8() #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @GSU, align 8
  %3 = load i32, ptr %2, align 4
  %4 = sext i32 %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = add nsw i32 %5, 8
  %7 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %8 = sext i32 %7 to i64
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %6, %9
  store i32 %10, ptr %1, align 4
  %11 = load i32, ptr %1, align 4
  %12 = icmp sge i32 %11, 65536
  %13 = zext i1 %12 to i32
  store i32 %13, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %14 = load ptr, ptr @GSU, align 8
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, 8
  %17 = xor i32 %16, -1
  %18 = load i32, ptr %1, align 4
  %19 = xor i32 8, %18
  %20 = and i32 %17, %19
  %21 = and i32 %20, 32768
  store i32 %21, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 4
  %22 = load i32, ptr %1, align 4
  store i32 %22, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 8
  %23 = load i32, ptr %1, align 4
  store i32 %23, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 4), align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %25 = getelementptr inbounds i32, ptr %24, i64 15
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = load i32, ptr %1, align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %32 = getelementptr inbounds i32, ptr %31, i64 14
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %0
  %35 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 8), align 8
  %36 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 14
  %38 = load i32, ptr %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %35, i64 %39
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 9), align 8
  br label %42

42:                                               ; preds = %34, %0
  %43 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 7), align 8
  %44 = and i32 %43, -4865
  store i32 %44, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 7), align 8
  %45 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %46 = getelementptr inbounds i32, ptr %45, i64 0
  store ptr %46, ptr @GSU, align 8
  store ptr %46, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
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
