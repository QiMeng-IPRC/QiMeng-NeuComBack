; ModuleID = '../benchmarks/fine_grained/exebench/kernel1013.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1013.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aint0 = dso_local global i32 0, align 4
@failures = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compare_int_to_lits2() #0 {
  %1 = load i32, ptr @aint0, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @failures, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @failures, align 4
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, ptr @aint0, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, ptr @failures, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @failures, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, ptr @aint0, align 4
  %14 = icmp eq i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, ptr @failures, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @failures, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, ptr @aint0, align 4
  %20 = icmp ne i32 %19, 5
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, ptr @failures, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @failures, align 4
  br label %24

24:                                               ; preds = %21, %18
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
