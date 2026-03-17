; ModuleID = '../benchmarks/fine_grained/exebench/kernel752.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel752.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITMASK_31 = dso_local global ptr null, align 8
@BITMASK_LOWER1 = dso_local global ptr null, align 8
@BITMASK_UPPER1_ = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BARRAY_reset_interval(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %10 = load i32, ptr %5, align 4
  %11 = sdiv i32 %10, 32
  store i32 %11, ptr %7, align 4
  %12 = load i32, ptr %6, align 4
  %13 = sdiv i32 %12, 32
  store i32 %13, ptr %9, align 4
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %9, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load i32, ptr %5, align 4
  %19 = srem i32 %18, 32
  store i32 %19, ptr %8, align 4
  br label %20

20:                                               ; preds = %39, %17
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %6, align 4
  %23 = srem i32 %22, 32
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load ptr, ptr @BITMASK_31, align 8
  %27 = load i32, ptr %8, align 4
  %28 = srem i32 %27, 32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, ptr %26, i64 %29
  %31 = load i64, ptr %30, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = load i32, ptr %8, align 4
  %34 = sdiv i32 %33, 32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, ptr %32, i64 %35
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, %31
  store i64 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %25
  %40 = load i32, ptr %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %8, align 4
  br label %20, !llvm.loop !6

42:                                               ; preds = %20
  br label %83

43:                                               ; preds = %3
  %44 = load ptr, ptr @BITMASK_LOWER1, align 8
  %45 = load i32, ptr %5, align 4
  %46 = srem i32 %45, 32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, ptr %44, i64 %47
  %49 = load i64, ptr %48, align 8
  %50 = load ptr, ptr %4, align 8
  %51 = load i32, ptr %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, ptr %50, i64 %52
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, %49
  store i64 %55, ptr %53, align 8
  %56 = load i32, ptr %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %7, align 4
  br label %58

58:                                               ; preds = %67, %43
  %59 = load i32, ptr %7, align 4
  %60 = load i32, ptr %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, ptr %63, i64 %65
  store i64 0, ptr %66, align 8
  br label %67

67:                                               ; preds = %62
  %68 = load i32, ptr %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %7, align 4
  br label %58, !llvm.loop !8

70:                                               ; preds = %58
  %71 = load ptr, ptr @BITMASK_UPPER1_, align 8
  %72 = load i32, ptr %6, align 4
  %73 = srem i32 %72, 32
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, ptr %71, i64 %74
  %76 = load i64, ptr %75, align 8
  %77 = load ptr, ptr %4, align 8
  %78 = load i32, ptr %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, ptr %77, i64 %79
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, %76
  store i64 %82, ptr %80, align 8
  br label %83

83:                                               ; preds = %70, %42
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
