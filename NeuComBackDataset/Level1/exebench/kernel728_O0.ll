; ModuleID = '../benchmarks/fine_grained/exebench/kernel728.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel728.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op0d80() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @reg, align 8
  %5 = getelementptr inbounds i32, ptr %4, i64 6
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = load i32, ptr @inst, align 4
  %8 = and i32 %7, 7
  %9 = sext i32 %8 to i64
  store i64 %9, ptr %3, align 8
  %10 = load ptr, ptr @reg, align 8
  %11 = load i64, ptr %3, align 8
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  %14 = load i32, ptr %2, align 4
  %15 = load i32, ptr %1, align 4
  %16 = and i32 %15, 31
  %17 = shl i32 1, %16
  %18 = and i32 %14, %17
  %19 = icmp eq i32 0, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load i32, ptr @status, align 4
  %22 = or i32 %21, 4
  store i32 %22, ptr @status, align 4
  br label %26

23:                                               ; preds = %0
  %24 = load i32, ptr @status, align 4
  %25 = and i32 %24, -5
  store i32 %25, ptr @status, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, ptr %1, align 4
  %28 = and i32 %27, 31
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, ptr %2, align 4
  %32 = and i32 %31, %30
  store i32 %32, ptr %2, align 4
  %33 = load i32, ptr %2, align 4
  %34 = load ptr, ptr @reg, align 8
  %35 = load i64, ptr %3, align 8
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  store i32 %33, ptr %36, align 4
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
