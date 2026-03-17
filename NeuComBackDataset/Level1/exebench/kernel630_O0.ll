; ModuleID = '../benchmarks/fine_grained/exebench/kernel630.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel630.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fifo_tail = dso_local global i32 0, align 4
@fifo_head = dso_local global i32 0, align 4
@fifo = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_enqueue(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %5 = load i32, ptr @fifo_tail, align 4
  %6 = add nsw i32 %5, 1
  %7 = srem i32 %6, 256
  store i32 %7, ptr %4, align 4
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr @fifo_head, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, ptr %3, align 4
  %14 = load ptr, ptr @fifo, align 8
  %15 = load i32, ptr @fifo_tail, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 %13, ptr %17, align 4
  %18 = load i32, ptr %4, align 4
  store i32 %18, ptr @fifo_tail, align 4
  store i32 1, ptr %2, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, ptr %2, align 4
  ret i32 %20
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
