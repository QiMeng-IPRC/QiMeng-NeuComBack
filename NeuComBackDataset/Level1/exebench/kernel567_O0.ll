; ModuleID = '../benchmarks/fine_grained/exebench/kernel567.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel567.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, ptr }

@que = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_pop(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i64, ptr @que, align 8
  %4 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @que, i32 0, i32 1), align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @que, i32 0, i32 2), align 8
  %8 = load i64, ptr @que, align 8
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %2, align 8
  store i32 %10, ptr %11, align 4
  %12 = load i64, ptr @que, align 8
  %13 = add i64 %12, 1
  %14 = urem i64 %13, 90
  store i64 %14, ptr @que, align 8
  br label %15

15:                                               ; preds = %6, %1
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
