; ModuleID = '../benchmarks/fine_grained/exebench/kernel492.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@achar0 = dso_local global i32 0, align 4
@failures = dso_local global i32 0, align 4
@achar1 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_lit2uchar() #0 {
  %1 = load i32, ptr @achar0, align 4
  %2 = add nsw i32 %1, 5
  store i32 %2, ptr @achar0, align 4
  %3 = load i32, ptr @achar0, align 4
  %4 = icmp ne i32 %3, 5
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, ptr @failures, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @failures, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, ptr @achar0, align 4
  %10 = add nsw i32 %9, 10
  store i32 %10, ptr @achar0, align 4
  %11 = load i32, ptr @achar0, align 4
  %12 = icmp ne i32 %11, 15
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, ptr @failures, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @failures, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i32, ptr @achar0, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr @achar0, align 4
  %19 = load i32, ptr @achar0, align 4
  %20 = icmp ne i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, ptr @failures, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @failures, align 4
  br label %24

24:                                               ; preds = %21, %16
  store i32 0, ptr @achar1, align 4
  br label %25

25:                                               ; preds = %31, %24
  %26 = load i32, ptr @achar1, align 4
  %27 = icmp slt i32 %26, 100
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, ptr @achar0, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, ptr @achar0, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, ptr @achar1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @achar1, align 4
  br label %25, !llvm.loop !6

34:                                               ; preds = %25
  %35 = load i32, ptr @achar0, align 4
  %36 = icmp ne i32 %35, 216
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, ptr @failures, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr @failures, align 4
  br label %40

40:                                               ; preds = %37, %34
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
