; ModuleID = '../benchmarks/fine_grained/exebench/kernel1275.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1275.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DebugModeAGS = dso_local global i32 0, align 4
@LatestBacktraceAGS = dso_local global i32 0, align 4
@NumBacktracesAGS = dso_local global i32 0, align 4
@BacktracesAGS = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddBacktraceAGS(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @DebugModeAGS, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load i32, ptr @LatestBacktraceAGS, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @LatestBacktraceAGS, align 4
  %9 = load i32, ptr @LatestBacktraceAGS, align 4
  %10 = icmp sge i32 %9, 50
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 0, ptr @LatestBacktraceAGS, align 4
  br label %12

12:                                               ; preds = %11, %6
  %13 = load i32, ptr @NumBacktracesAGS, align 4
  %14 = icmp slt i32 %13, 50
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, ptr @NumBacktracesAGS, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @NumBacktracesAGS, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr @BacktracesAGS, align 8
  %22 = load i32, ptr @LatestBacktraceAGS, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  store i32 %20, ptr %24, align 4
  br label %25

25:                                               ; preds = %18, %5
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
