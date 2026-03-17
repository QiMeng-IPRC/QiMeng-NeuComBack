; ModuleID = '../benchmarks/fine_grained/exebench/kernel485.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel485.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signal_queue_buf = dso_local global ptr null, align 8
@signal_queue_rd_idx = dso_local global i64 0, align 8
@signal_queue_length = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slinke_readdata(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %5 = load ptr, ptr @signal_queue_buf, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load i64, ptr @signal_queue_rd_idx, align 8
  %10 = load i64, ptr @signal_queue_length, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr @signal_queue_buf, align 8
  %14 = load i64, ptr @signal_queue_rd_idx, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, ptr @signal_queue_rd_idx, align 8
  %16 = getelementptr inbounds i32, ptr %13, i64 %14
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %4, align 4
  br label %19

18:                                               ; preds = %8
  store i32 0, ptr %4, align 4
  br label %19

19:                                               ; preds = %18, %12
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  %22 = load i32, ptr %4, align 4
  store i32 %22, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %7
  %24 = load i32, ptr %2, align 4
  ret i32 %24
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
