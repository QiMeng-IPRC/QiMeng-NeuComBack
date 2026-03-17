; ModuleID = '../benchmarks/fine_grained/exebench/kernel1140.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1140.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sp = dso_local global i32 0, align 4
@ERROR_STACK_EMPTY = dso_local global i32 0, align 4
@errcode = dso_local global i32 0, align 4
@stack = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_math_subtract() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @sp, align 4
  %3 = icmp slt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, ptr @ERROR_STACK_EMPTY, align 4
  store i32 %5, ptr @errcode, align 4
  store i32 -1, ptr %1, align 4
  br label %27

6:                                                ; preds = %0
  %7 = load ptr, ptr @stack, align 8
  %8 = load i32, ptr @sp, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, ptr %7, i64 %10
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr @stack, align 8
  %14 = load i32, ptr @sp, align 4
  %15 = sub nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %13, i64 %16
  %18 = load i64, ptr %17, align 8
  %19 = sub nsw i64 %12, %18
  %20 = load ptr, ptr @stack, align 8
  %21 = load i32, ptr @sp, align 4
  %22 = sub nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, ptr %20, i64 %23
  store i64 %19, ptr %24, align 8
  %25 = load i32, ptr @sp, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, ptr @sp, align 4
  store i32 0, ptr %1, align 4
  br label %27

27:                                               ; preds = %6, %4
  %28 = load i32, ptr %1, align 4
  ret i32 %28
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
