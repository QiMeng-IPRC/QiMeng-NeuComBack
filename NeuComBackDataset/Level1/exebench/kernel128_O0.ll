; ModuleID = '../benchmarks/fine_grained/exebench/kernel128.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@thread_table = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_to_ready_queue(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %4 = load ptr, ptr @thread_table, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i64 0
  %6 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr %3, align 8
  %8 = load i64, ptr %2, align 8
  %9 = load ptr, ptr @thread_table, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, ptr %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i32 0, i32 0
  store i64 %8, ptr %11, align 8
  %12 = load ptr, ptr @thread_table, align 8
  %13 = load i64, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %14, i32 0, i32 1
  store i64 0, ptr %15, align 8
  %16 = load i64, ptr %3, align 8
  %17 = load ptr, ptr @thread_table, align 8
  %18 = load i64, ptr %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, ptr %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, ptr %19, i32 0, i32 0
  store i64 %16, ptr %20, align 8
  %21 = load i64, ptr %2, align 8
  %22 = load ptr, ptr @thread_table, align 8
  %23 = load i64, ptr %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, ptr %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, ptr %24, i32 0, i32 1
  store i64 %21, ptr %25, align 8
  %26 = load ptr, ptr @thread_table, align 8
  %27 = load i64, ptr %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, ptr %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, ptr %28, i32 0, i32 2
  store i32 1, ptr %29, align 8
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
