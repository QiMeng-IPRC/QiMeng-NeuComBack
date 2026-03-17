; ModuleID = '../benchmarks/fine_grained/exebench/kernel1112.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Opef80() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 7, ptr %1, align 4
  %5 = load i32, ptr @inst, align 4
  %6 = and i32 %5, 7
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %3, align 8
  %8 = load ptr, ptr @reg, align 8
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = load i32, ptr %1, align 4
  %13 = and i32 %12, 63
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %0
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, 63
  %18 = ashr i32 -2147483648, %17
  store i32 %18, ptr %4, align 4
  %19 = load i32, ptr %4, align 4
  %20 = load i32, ptr %2, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %24, %25
  %27 = load i32, ptr %4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, ptr @status, align 4
  %31 = or i32 %30, 2
  store i32 %31, ptr @status, align 4
  br label %35

32:                                               ; preds = %23, %15
  %33 = load i32, ptr @status, align 4
  %34 = and i32 %33, -3
  store i32 %34, ptr @status, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, ptr %1, align 4
  %37 = and i32 %36, 63
  %38 = sub nsw i32 %37, 1
  %39 = load i32, ptr %2, align 4
  %40 = shl i32 %39, %38
  store i32 %40, ptr %2, align 4
  %41 = load i32, ptr %2, align 4
  %42 = and i32 %41, -2147483648
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, ptr @status, align 4
  %46 = or i32 %45, 17
  store i32 %46, ptr @status, align 4
  br label %50

47:                                               ; preds = %35
  %48 = load i32, ptr @status, align 4
  %49 = and i32 %48, -18
  store i32 %49, ptr @status, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, ptr %2, align 4
  %52 = shl i32 %51, 1
  store i32 %52, ptr %2, align 4
  %53 = load i32, ptr %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, ptr @status, align 4
  %57 = and i32 %56, -13
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

64:                                               ; preds = %50
  %65 = load i32, ptr @status, align 4
  %66 = or i32 %65, 4
  store i32 %66, ptr @status, align 4
  %67 = load i32, ptr @status, align 4
  %68 = and i32 %67, -9
  store i32 %68, ptr @status, align 4
  br label %69

69:                                               ; preds = %64, %63
  br label %88

70:                                               ; preds = %0
  %71 = load i32, ptr %2, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, ptr @status, align 4
  %75 = and i32 %74, -16
  store i32 %75, ptr @status, align 4
  %76 = load i32, ptr %2, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, ptr @status, align 4
  %80 = or i32 %79, 8
  store i32 %80, ptr @status, align 4
  br label %81

81:                                               ; preds = %78, %73
  br label %87

82:                                               ; preds = %70
  %83 = load i32, ptr @status, align 4
  %84 = or i32 %83, 4
  store i32 %84, ptr @status, align 4
  %85 = load i32, ptr @status, align 4
  %86 = and i32 %85, -11
  store i32 %86, ptr @status, align 4
  br label %87

87:                                               ; preds = %82, %81
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i32, ptr %2, align 4
  %90 = load ptr, ptr @reg, align 8
  %91 = load i64, ptr %3, align 8
  %92 = getelementptr inbounds i32, ptr %90, i64 %91
  store i32 %89, ptr %92, align 4
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
