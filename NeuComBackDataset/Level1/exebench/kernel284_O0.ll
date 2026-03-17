; ModuleID = '../benchmarks/fine_grained/exebench/kernel284.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel284.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op9c80() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @reg, align 8
  %5 = load i32, ptr @inst, align 4
  %6 = and i32 %5, 7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i64, ptr %4, i64 %7
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %1, align 8
  store i64 6, ptr %3, align 8
  %10 = load ptr, ptr @reg, align 8
  %11 = load i64, ptr %3, align 8
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %2, align 8
  %14 = load i64, ptr %2, align 8
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i64, ptr %1, align 8
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, ptr @status, align 4
  %23 = or i32 %22, 2
  store i32 %23, ptr @status, align 4
  br label %27

24:                                               ; preds = %0
  %25 = load i32, ptr @status, align 4
  %26 = and i32 %25, -3
  store i32 %26, ptr @status, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, ptr %1, align 8
  %29 = load i64, ptr %2, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, ptr @status, align 4
  %33 = or i32 %32, 17
  store i32 %33, ptr @status, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load i32, ptr @status, align 4
  %36 = and i32 %35, -18
  store i32 %36, ptr @status, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i64, ptr %1, align 8
  %39 = load i64, ptr %2, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, ptr %2, align 8
  %41 = load i32, ptr @status, align 4
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i64, ptr %2, align 8
  %46 = icmp slt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i64, ptr %1, align 8
  %49 = icmp slt i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, ptr @status, align 4
  %54 = or i32 %53, 2
  store i32 %54, ptr @status, align 4
  br label %58

55:                                               ; preds = %44, %37
  %56 = load i32, ptr @status, align 4
  %57 = and i32 %56, -3
  store i32 %57, ptr @status, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, ptr %2, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, ptr @status, align 4
  %63 = and i32 %62, -13
  store i32 %63, ptr @status, align 4
  %64 = load i64, ptr %2, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, ptr @status, align 4
  %68 = or i32 %67, 8
  store i32 %68, ptr @status, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %75

70:                                               ; preds = %58
  %71 = load i32, ptr @status, align 4
  %72 = or i32 %71, 4
  store i32 %72, ptr @status, align 4
  %73 = load i32, ptr @status, align 4
  %74 = and i32 %73, -9
  store i32 %74, ptr @status, align 4
  br label %75

75:                                               ; preds = %70, %69
  %76 = load i64, ptr %2, align 8
  %77 = load ptr, ptr @reg, align 8
  %78 = load i64, ptr %3, align 8
  %79 = getelementptr inbounds i64, ptr %77, i64 %78
  store i64 %76, ptr %79, align 8
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
