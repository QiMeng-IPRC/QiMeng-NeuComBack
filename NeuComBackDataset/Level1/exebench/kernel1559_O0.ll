; ModuleID = '../benchmarks/fine_grained/exebench/kernel1559.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1559.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@port_handle = dso_local global ptr null, align 8
@TR1 = dso_local global i32 0, align 4
@TH1 = dso_local global i32 0, align 4
@TL1 = dso_local global i32 0, align 4
@TF1 = dso_local global i32 0, align 4
@T3CM = dso_local global i32 0, align 4
@TH3 = dso_local global i32 0, align 4
@TL3 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetBaudCOM(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %4, align 4
  switch i32 %6, label %11 [
    i32 0, label %7
    i32 2, label %8
    i32 4, label %9
    i32 6, label %10
  ]

7:                                                ; preds = %2
  store i32 232, ptr %5, align 4
  br label %12

8:                                                ; preds = %2
  store i32 244, ptr %5, align 4
  br label %12

9:                                                ; preds = %2
  store i32 252, ptr %5, align 4
  br label %12

10:                                               ; preds = %2
  store i32 254, ptr %5, align 4
  br label %12

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %10, %9, %8, %7
  %13 = load ptr, ptr @port_handle, align 8
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %28 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %22
  ]

18:                                               ; preds = %12
  store i32 0, ptr @TR1, align 4
  %19 = load i32, ptr %5, align 4
  store i32 %19, ptr @TH1, align 4
  store i32 %19, ptr @TL1, align 4
  store i32 0, ptr @TF1, align 4
  store i32 1, ptr @TR1, align 4
  br label %28

20:                                               ; preds = %12
  store i32 0, ptr @TR1, align 4
  %21 = load i32, ptr %5, align 4
  store i32 %21, ptr @TH1, align 4
  store i32 %21, ptr @TL1, align 4
  store i32 0, ptr @TF1, align 4
  store i32 1, ptr @TR1, align 4
  br label %28

22:                                               ; preds = %12
  %23 = load i32, ptr @T3CM, align 4
  %24 = and i32 %23, -193
  store i32 %24, ptr @T3CM, align 4
  %25 = load i32, ptr %5, align 4
  store i32 %25, ptr @TH3, align 4
  store i32 %25, ptr @TL3, align 4
  %26 = load i32, ptr @T3CM, align 4
  %27 = or i32 %26, 64
  store i32 %27, ptr @T3CM, align 4
  br label %28

28:                                               ; preds = %11, %12, %22, %20, %18
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
