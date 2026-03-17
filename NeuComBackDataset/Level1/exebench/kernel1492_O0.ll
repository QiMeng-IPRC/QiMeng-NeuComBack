; ModuleID = '../benchmarks/fine_grained/exebench/kernel1492.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8 }

@SCH_tasks = dso_local global ptr null, align 8
@Error_code = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @SCH_Delete_Task(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, ptr %2, align 4
  %4 = load ptr, ptr @SCH_tasks, align 8
  %5 = load i32, ptr %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 2, ptr @Error_code, align 4
  store i8 -1, ptr %3, align 1
  br label %13

12:                                               ; preds = %1
  store i8 0, ptr %3, align 1
  br label %13

13:                                               ; preds = %12, %11
  %14 = load ptr, ptr @SCH_tasks, align 8
  %15 = load i32, ptr %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, ptr %17, i32 0, i32 0
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr @SCH_tasks, align 8
  %20 = load i32, ptr %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, ptr %22, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = load ptr, ptr @SCH_tasks, align 8
  %25 = load i32, ptr %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, ptr %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, ptr %27, i32 0, i32 2
  store i32 0, ptr %28, align 4
  %29 = load ptr, ptr @SCH_tasks, align 8
  %30 = load i32, ptr %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, ptr %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, ptr %32, i32 0, i32 3
  store i8 0, ptr %33, align 4
  %34 = load i8, ptr %3, align 1
  ret i8 %34
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
