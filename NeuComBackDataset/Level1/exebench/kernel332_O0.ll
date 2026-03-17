; ModuleID = '../benchmarks/fine_grained/exebench/kernel332.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel332.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iterations = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@iterations_prev = dso_local global i64 0, align 8
@timeout = dso_local global i64 0, align 8
@SIGUSR1 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigalrm_handler(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, ptr %2, align 4
  %4 = load i64, ptr @iterations, align 8
  store i64 %4, ptr %3, align 8
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr @iterations_prev, align 8
  %7 = sub i64 %5, %6
  %8 = call i32 @printf(ptr noundef @.str, i64 noundef %7)
  %9 = load i64, ptr %3, align 8
  store i64 %9, ptr @iterations_prev, align 8
  %10 = load i64, ptr @timeout, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, ptr @timeout, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, ptr @SIGUSR1, align 4
  %15 = call i32 @kill(i32 noundef 0, i32 noundef %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = call i32 @alarm(i32 noundef 1)
  ret void
}

declare i32 @printf(ptr noundef, i64 noundef) #1

declare i32 @kill(i32 noundef, i32 noundef) #1

declare i32 @alarm(i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
