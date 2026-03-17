; ModuleID = '../benchmarks/fine_grained/exebench/kernel1287.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1287.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENTRY = dso_local global i32 0, align 4
@END = dso_local global i32 0, align 4
@SELECTTEST = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @changeState(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %3, align 4
  switch i32 %5, label %15 [
    i32 -1, label %6
    i32 0, label %9
    i32 1, label %12
  ]

6:                                                ; preds = %2
  %7 = load i32, ptr @ENTRY, align 4
  %8 = load ptr, ptr %4, align 8
  store i32 %7, ptr %8, align 4
  br label %18

9:                                                ; preds = %2
  %10 = load i32, ptr @END, align 4
  %11 = load ptr, ptr %4, align 8
  store i32 %10, ptr %11, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load i32, ptr @SELECTTEST, align 4
  %14 = load ptr, ptr %4, align 8
  store i32 %13, ptr %14, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, ptr @ENTRY, align 4
  %17 = load ptr, ptr %4, align 8
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %9, %6
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
