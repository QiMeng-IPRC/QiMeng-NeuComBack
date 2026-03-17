; ModuleID = '../benchmarks/fine_grained/exebench/kernel41.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F = dso_local global i32 0, align 4
@E = dso_local global i32 0, align 4
@parrity = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_rle() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @F, align 4
  %3 = and i32 %2, 1
  store i32 %3, ptr %1, align 4
  %4 = load i32, ptr @E, align 4
  %5 = and i32 %4, 128
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, ptr @F, align 4
  %9 = or i32 %8, 1
  store i32 %9, ptr @F, align 4
  br label %13

10:                                               ; preds = %0
  %11 = load i32, ptr @F, align 4
  %12 = and i32 %11, -2
  store i32 %12, ptr @F, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %12, %10 ]
  %15 = load i32, ptr @E, align 4
  %16 = shl i32 %15, 1
  store i32 %16, ptr @E, align 4
  %17 = load i32, ptr %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, ptr @E, align 4
  %21 = or i32 %20, 1
  store i32 %21, ptr @E, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, ptr @F, align 4
  %24 = and i32 %23, -19
  store i32 %24, ptr @F, align 4
  %25 = load i32, ptr @E, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, ptr @F, align 4
  %29 = and i32 %28, -65
  store i32 %29, ptr @F, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, ptr @F, align 4
  %32 = or i32 %31, 64
  store i32 %32, ptr @F, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %30 ]
  %35 = load i32, ptr @E, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, ptr @F, align 4
  %40 = or i32 %39, 128
  store i32 %40, ptr @F, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load i32, ptr @F, align 4
  %43 = and i32 %42, -129
  store i32 %43, ptr @F, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %40, %38 ], [ %43, %41 ]
  %46 = load ptr, ptr @parrity, align 8
  %47 = load i32, ptr @E, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %46, i64 %48
  %50 = load i64, ptr %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, ptr @F, align 4
  %54 = and i32 %53, -5
  store i32 %54, ptr @F, align 4
  br label %58

55:                                               ; preds = %44
  %56 = load i32, ptr @F, align 4
  %57 = or i32 %56, 4
  store i32 %57, ptr @F, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  ret i32 8
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
