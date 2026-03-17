; ModuleID = '../benchmarks/fine_grained/exebench/kernel98.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel98.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SNORT_FILE_START = dso_local global i64 0, align 8
@SNORT_FILE_FULL = dso_local global i64 0, align 8
@SNORT_FILE_END = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finalFilePosition(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %3, align 8
  %5 = load i64, ptr @SNORT_FILE_START, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, ptr @SNORT_FILE_FULL, align 8
  %9 = load ptr, ptr %2, align 8
  store i64 %8, ptr %9, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr @SNORT_FILE_FULL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i64, ptr @SNORT_FILE_END, align 8
  %17 = load ptr, ptr %2, align 8
  store i64 %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %7
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
