; ModuleID = '../benchmarks/fine_grained/exebench/kernel452.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel452.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@block_stack = dso_local global ptr null, align 8
@block_depth = dso_local global i64 0, align 8
@num_blocks = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SET_pop_block() #0 {
  %1 = load ptr, ptr @block_stack, align 8
  %2 = icmp ne ptr %1, null
  br i1 %2, label %3, label %23

3:                                                ; preds = %0
  %4 = load i64, ptr @block_depth, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load ptr, ptr @block_stack, align 8
  %8 = load i64, ptr @block_depth, align 8
  %9 = add i64 %8, -1
  store i64 %9, ptr @block_depth, align 8
  %10 = getelementptr inbounds i64, ptr %7, i64 %9
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  %14 = load i64, ptr @block_depth, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load ptr, ptr @block_stack, align 8
  %18 = load i64, ptr @block_depth, align 8
  %19 = add i64 %18, -1
  store i64 %19, ptr @block_depth, align 8
  %20 = getelementptr inbounds i64, ptr %17, i64 %19
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr @num_blocks, align 8
  br label %22

22:                                               ; preds = %16, %13, %6
  br label %23

23:                                               ; preds = %22, %3, %0
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
