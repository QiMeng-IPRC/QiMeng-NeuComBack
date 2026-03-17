; ModuleID = '../benchmarks/fine_grained/exebench/kernel839.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel839.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@areg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op3808() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @areg, align 8
  %5 = load i32, ptr @inst, align 4
  %6 = and i32 %5, 7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i64, ptr %4, i64 %7
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %1, align 8
  store i64 4, ptr %3, align 8
  %10 = load i64, ptr %1, align 8
  store i64 %10, ptr %2, align 8
  %11 = load i64, ptr %2, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %0
  %14 = load i32, ptr @status, align 4
  %15 = and i32 %14, -16
  store i32 %15, ptr @status, align 4
  %16 = load i64, ptr %2, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, ptr @status, align 4
  %20 = or i32 %19, 8
  store i32 %20, ptr @status, align 4
  br label %21

21:                                               ; preds = %18, %13
  br label %27

22:                                               ; preds = %0
  %23 = load i32, ptr @status, align 4
  %24 = or i32 %23, 4
  store i32 %24, ptr @status, align 4
  %25 = load i32, ptr @status, align 4
  %26 = and i32 %25, -11
  store i32 %26, ptr @status, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i64, ptr %2, align 8
  %29 = load ptr, ptr @reg, align 8
  %30 = load i64, ptr %3, align 8
  %31 = getelementptr inbounds i32, ptr %29, i64 %30
  store i64 %28, ptr %31, align 8
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
