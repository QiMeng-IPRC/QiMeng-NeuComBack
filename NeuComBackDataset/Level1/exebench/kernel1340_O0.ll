; ModuleID = '../benchmarks/fine_grained/exebench/kernel1340.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1340.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLAW_ERR_NONE = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @claw_maths_itl(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %6, align 8
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %31, %3
  %10 = load i32, ptr %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 32
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i32, ptr %4, align 4
  %15 = load i32, ptr %7, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = load i32, ptr %7, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, ptr %5, align 4
  %21 = load i32, ptr %7, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = load i32, ptr %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = shl i32 %23, %25
  %27 = or i32 %19, %26
  %28 = load ptr, ptr %6, align 8
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %13
  %32 = load i32, ptr %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %7, align 4
  br label %9, !llvm.loop !6

34:                                               ; preds = %9
  %35 = load i32, ptr @CLAW_ERR_NONE, align 4
  ret i32 %35
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
