; ModuleID = '../benchmarks/fine_grained/exebench/kernel1477.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1477.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trace_top = dso_local global i32 0, align 4
@trace_base = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Zoltan_remove_back_trace() #0 {
  %1 = load i32, ptr @trace_top, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %16

4:                                                ; preds = %0
  %5 = load i32, ptr @trace_top, align 4
  %6 = load i32, ptr @trace_base, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 -1, ptr @trace_base, align 4
  store i32 -1, ptr @trace_top, align 4
  br label %16

9:                                                ; preds = %4
  %10 = load i32, ptr @trace_top, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr @trace_top, align 4
  %12 = load i32, ptr @trace_top, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 29, ptr @trace_top, align 4
  br label %15

15:                                               ; preds = %14, %9
  br label %16

16:                                               ; preds = %3, %15, %8
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
