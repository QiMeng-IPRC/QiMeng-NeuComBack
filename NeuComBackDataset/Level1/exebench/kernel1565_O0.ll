; ModuleID = '../benchmarks/fine_grained/exebench/kernel1565.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope200() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 1, ptr %1, align 4
  %4 = load i32, ptr @inst, align 4
  %5 = and i32 %4, 7
  %6 = sext i32 %5 to i64
  store i64 %6, ptr %3, align 8
  %7 = load ptr, ptr @reg, align 8
  %8 = load i64, ptr %3, align 8
  %9 = getelementptr inbounds i64, ptr %7, i64 %8
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %2, align 4
  %12 = load i32, ptr %1, align 4
  %13 = and i32 %12, 63
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %0
  %16 = load i32, ptr @status, align 4
  %17 = and i32 %16, -3
  store i32 %17, ptr @status, align 4
  %18 = load i32, ptr %1, align 4
  %19 = and i32 %18, 63
  %20 = sub nsw i32 %19, 1
  %21 = load i32, ptr %2, align 4
  %22 = ashr i32 %21, %20
  store i32 %22, ptr %2, align 4
  %23 = load i32, ptr %2, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, ptr @status, align 4
  %28 = or i32 %27, 17
  store i32 %28, ptr @status, align 4
  br label %32

29:                                               ; preds = %15
  %30 = load i32, ptr @status, align 4
  %31 = and i32 %30, -18
  store i32 %31, ptr @status, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, ptr %2, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, ptr %2, align 4
  %35 = load i32, ptr %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, ptr @status, align 4
  %39 = and i32 %38, -13
  store i32 %39, ptr @status, align 4
  %40 = load i32, ptr %2, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, ptr @status, align 4
  %44 = or i32 %43, 8
  store i32 %44, ptr @status, align 4
  br label %45

45:                                               ; preds = %42, %37
  br label %51

46:                                               ; preds = %32
  %47 = load i32, ptr @status, align 4
  %48 = or i32 %47, 4
  store i32 %48, ptr @status, align 4
  %49 = load i32, ptr @status, align 4
  %50 = and i32 %49, -9
  store i32 %50, ptr @status, align 4
  br label %51

51:                                               ; preds = %46, %45
  br label %70

52:                                               ; preds = %0
  %53 = load i32, ptr %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, ptr @status, align 4
  %57 = and i32 %56, -16
  store i32 %57, ptr @status, align 4
  %58 = load i32, ptr %2, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, ptr @status, align 4
  %62 = or i32 %61, 8
  store i32 %62, ptr @status, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %69

64:                                               ; preds = %52
  %65 = load i32, ptr @status, align 4
  %66 = or i32 %65, 4
  store i32 %66, ptr @status, align 4
  %67 = load i32, ptr @status, align 4
  %68 = and i32 %67, -11
  store i32 %68, ptr @status, align 4
  br label %69

69:                                               ; preds = %64, %63
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i32, ptr %2, align 4
  %72 = load ptr, ptr @reg, align 8
  %73 = load i64, ptr %3, align 8
  %74 = getelementptr inbounds i64, ptr %72, i64 %73
  store i32 %71, ptr %74, align 4
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
