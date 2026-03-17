; ModuleID = '../benchmarks/fine_grained/exebench/kernel154.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel154.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op5d40() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 6, ptr %1, align 4
  %5 = load i32, ptr @inst, align 4
  %6 = and i32 %5, 7
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %3, align 8
  %8 = load ptr, ptr @reg, align 8
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds i64, ptr %8, i64 %9
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %2, align 4
  %13 = load i32, ptr %2, align 4
  %14 = load i32, ptr %1, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, ptr %4, align 4
  %16 = load i32, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, ptr %2, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, ptr @status, align 4
  %23 = or i32 %22, 17
  store i32 %23, ptr @status, align 4
  br label %27

24:                                               ; preds = %0
  %25 = load i32, ptr @status, align 4
  %26 = and i32 %25, -18
  store i32 %26, ptr @status, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, ptr %4, align 4
  %29 = icmp slt i32 %28, -32768
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %4, align 4
  %32 = icmp sgt i32 %31, 32767
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27
  %34 = load i32, ptr @status, align 4
  %35 = or i32 %34, 2
  store i32 %35, ptr @status, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32, ptr @status, align 4
  %38 = and i32 %37, -3
  store i32 %38, ptr @status, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, ptr %4, align 4
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, ptr @status, align 4
  %45 = and i32 %44, -13
  store i32 %45, ptr @status, align 4
  %46 = load i32, ptr %2, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, ptr @status, align 4
  %50 = or i32 %49, 8
  store i32 %50, ptr @status, align 4
  br label %51

51:                                               ; preds = %48, %43
  br label %57

52:                                               ; preds = %39
  %53 = load i32, ptr @status, align 4
  %54 = or i32 %53, 4
  store i32 %54, ptr @status, align 4
  %55 = load i32, ptr @status, align 4
  %56 = and i32 %55, -9
  store i32 %56, ptr @status, align 4
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i32, ptr %2, align 4
  %59 = load ptr, ptr @reg, align 8
  %60 = load i64, ptr %3, align 8
  %61 = getelementptr inbounds i64, ptr %59, i64 %60
  store i32 %58, ptr %61, align 4
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
