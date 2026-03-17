; ModuleID = '../benchmarks/fine_grained/exebench/kernel852.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel852.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_zero = dso_local global i32 0, align 4
@F_half = dso_local global i32 0, align 4
@F_one = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee_single(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 126, ptr %7, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = load i32, ptr %9, align 4
  %13 = load i32, ptr @F_zero, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  store i64 2147483648, ptr %6, align 8
  %16 = load i32, ptr %9, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, ptr %9, align 4
  br label %19

18:                                               ; preds = %2
  store i64 0, ptr %6, align 8
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr @F_half, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %9, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, ptr %9, align 4
  %28 = load i32, ptr %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %7, align 4
  %30 = load i32, ptr %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load ptr, ptr %4, align 8
  store i64 0, ptr %33, align 8
  br label %110

34:                                               ; preds = %24
  br label %20, !llvm.loop !6

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, ptr %9, align 4
  %38 = load i32, ptr @F_one, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, ptr @F_half, align 4
  %42 = load i32, ptr %9, align 4
  %43 = mul nsw i32 %42, %41
  store i32 %43, ptr %9, align 4
  %44 = load i32, ptr %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %7, align 4
  %46 = load i32, ptr %7, align 4
  %47 = icmp sge i32 %46, 255
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i64, ptr %6, align 8
  %50 = or i64 %49, 2147483647
  %51 = load ptr, ptr %4, align 8
  store i64 %50, ptr %51, align 8
  br label %110

52:                                               ; preds = %40
  br label %36, !llvm.loop !8

53:                                               ; preds = %36
  store i64 0, ptr %5, align 8
  store i32 0, ptr %8, align 4
  br label %54

54:                                               ; preds = %73, %53
  %55 = load i32, ptr %8, align 4
  %56 = icmp slt i32 %55, 24
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i32, ptr %9, align 4
  %59 = load i32, ptr %9, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, ptr %9, align 4
  %61 = load i64, ptr %5, align 8
  %62 = shl i64 %61, 1
  store i64 %62, ptr %5, align 8
  %63 = load i32, ptr %9, align 4
  %64 = load i32, ptr @F_one, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load i64, ptr %5, align 8
  %68 = or i64 %67, 1
  store i64 %68, ptr %5, align 8
  %69 = load i32, ptr @F_one, align 4
  %70 = load i32, ptr %9, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, ptr %9, align 4
  br label %72

72:                                               ; preds = %66, %57
  br label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %8, align 4
  br label %54, !llvm.loop !9

76:                                               ; preds = %54
  %77 = load i32, ptr %9, align 4
  %78 = load i32, ptr @F_half, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i64, ptr %5, align 8
  %82 = add i64 %81, 1
  store i64 %82, ptr %5, align 8
  %83 = load i64, ptr %5, align 8
  %84 = icmp ugt i64 %83, 33554431
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, ptr %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %7, align 4
  %88 = load i32, ptr %7, align 4
  %89 = icmp sge i32 %88, 255
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i64, ptr %6, align 8
  %92 = or i64 %91, 2147483647
  %93 = load ptr, ptr %4, align 8
  store i64 %92, ptr %93, align 8
  br label %110

94:                                               ; preds = %85
  %95 = load i64, ptr %5, align 8
  %96 = lshr i64 %95, 1
  store i64 %96, ptr %5, align 8
  br label %97

97:                                               ; preds = %94, %80
  br label %98

98:                                               ; preds = %97, %76
  %99 = load i64, ptr %5, align 8
  %100 = and i64 %99, 8388607
  store i64 %100, ptr %5, align 8
  %101 = load i64, ptr %6, align 8
  %102 = load i32, ptr %7, align 4
  %103 = sext i32 %102 to i64
  %104 = shl i64 %103, 23
  %105 = or i64 %101, %104
  %106 = load i64, ptr %5, align 8
  %107 = or i64 %106, %105
  store i64 %107, ptr %5, align 8
  %108 = load i64, ptr %5, align 8
  %109 = load ptr, ptr %4, align 8
  store i64 %108, ptr %109, align 8
  br label %110

110:                                              ; preds = %98, %90, %48, %32
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
