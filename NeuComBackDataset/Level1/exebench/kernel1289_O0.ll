; ModuleID = '../benchmarks/fine_grained/exebench/kernel1289.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1289.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ThreeAxis = type { i32, i32, i32 }

@HardIron = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adj_mag(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @HardIron, i32 0, i32 2), align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.ThreeAxis, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = sub nsw i64 %7, %3
  %9 = trunc i64 %8 to i32
  store i32 %9, ptr %5, align 4
  %10 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @HardIron, i32 0, i32 1), align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.ThreeAxis, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, %10
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %12, align 4
  %17 = load i64, ptr @HardIron, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.ThreeAxis, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr %19, align 4
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
