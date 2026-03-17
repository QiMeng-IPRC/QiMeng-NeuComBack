; ModuleID = '../benchmarks/fine_grained/exebench/kernel1446.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1446.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@thread_table = dso_local global ptr null, align 8
@current_task = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syscall_query_ids(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %42 [
    i32 0, label %6
    i32 1, label %15
    i32 2, label %24
    i32 3, label %33
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr @thread_table, align 8
  %8 = load i64, ptr @current_task, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %9, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 1
  store i32 %12, ptr %14, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load ptr, ptr @thread_table, align 8
  %17 = load i64, ptr @current_task, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, ptr %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, ptr %18, i32 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, ptr %22, i32 0, i32 1
  store i32 %21, ptr %23, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load ptr, ptr @thread_table, align 8
  %26 = load i64, ptr @current_task, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, ptr %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, ptr %27, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, ptr %31, i32 0, i32 1
  store i32 %30, ptr %32, align 4
  br label %45

33:                                               ; preds = %1
  %34 = load ptr, ptr @thread_table, align 8
  %35 = load i64, ptr @current_task, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, ptr %36, i32 0, i32 0
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, ptr %40, i32 0, i32 1
  store i32 %39, ptr %41, align 4
  br label %45

42:                                               ; preds = %1
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, ptr %43, i32 0, i32 1
  store i32 -1, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %33, %24, %15, %6
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
