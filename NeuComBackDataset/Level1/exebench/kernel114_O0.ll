; ModuleID = '../benchmarks/fine_grained/exebench/kernel114.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel114.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_vfile = dso_local global ptr null, align 8
@NUL = dso_local global i64 0, align 8
@msg_silent = dso_local global i64 0, align 8
@msg_row = dso_local global i32 0, align 4
@cmdline_row = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verbose_leave_scroll() #0 {
  %1 = load ptr, ptr @p_vfile, align 8
  %2 = load i64, ptr %1, align 8
  %3 = load i64, ptr @NUL, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, ptr @msg_silent, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, ptr @msg_silent, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i64 0, ptr @msg_silent, align 8
  br label %10

10:                                               ; preds = %9, %5
  br label %13

11:                                               ; preds = %0
  %12 = load i32, ptr @msg_row, align 4
  store i32 %12, ptr @cmdline_row, align 4
  br label %13

13:                                               ; preds = %11, %10
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
