; ModuleID = '../benchmarks/fine_grained/exebench/kernel1462.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1462.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, ptr, ptr, ptr, i64, i64 }

@GSU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fx_inc_r2() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %2 = getelementptr inbounds i64, ptr %1, i64 2
  %3 = load i64, ptr %2, align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, ptr %2, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %6 = getelementptr inbounds i64, ptr %5, i64 2
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %9 = getelementptr inbounds i64, ptr %8, i64 2
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 4), align 8
  %11 = load i32, ptr @GSU, align 8
  %12 = and i32 %11, -4865
  store i32 %12, ptr @GSU, align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %14 = getelementptr inbounds i64, ptr %13, i64 0
  store ptr %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  store ptr %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 8
  %15 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %16 = getelementptr inbounds i64, ptr %15, i64 15
  %17 = load i64, ptr %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr %16, align 8
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
