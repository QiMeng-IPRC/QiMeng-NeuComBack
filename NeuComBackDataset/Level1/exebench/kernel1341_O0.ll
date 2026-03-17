; ModuleID = '../benchmarks/fine_grained/exebench/kernel1341.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1341.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_trigger_tags(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1000 x i32], align 16
  store ptr %0, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %61

11:                                               ; preds = %1
  store i32 0, ptr %4, align 4
  br label %12

12:                                               ; preds = %19, %11
  %13 = load i32, ptr %4, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1000 x i32], ptr %7, i64 0, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %4, align 4
  br label %12, !llvm.loop !6

22:                                               ; preds = %12
  store i32 0, ptr %4, align 4
  store i32 0, ptr %6, align 4
  br label %23

23:                                               ; preds = %50, %22
  %24 = load ptr, ptr %3, align 8
  %25 = load i32, ptr %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, ptr %27, i32 0, i32 0
  %29 = load i64, ptr %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %23
  %32 = load ptr, ptr %3, align 8
  %33 = load i32, ptr %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds [1000 x i32], ptr %7, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 4
  store i32 %40, ptr %5, align 4
  %41 = load i32, ptr %5, align 4
  %42 = icmp sgt i32 %41, 6
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, ptr %6, align 4
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, ptr %5, align 4
  %46 = icmp slt i32 7, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %50

48:                                               ; preds = %44
  %49 = load i32, ptr %5, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 7, %47 ], [ %49, %48 ]
  %52 = load ptr, ptr %3, align 8
  %53 = load i32, ptr %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, ptr %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %55, i32 0, i32 2
  store i32 %51, ptr %56, align 8
  %57 = load i32, ptr %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %4, align 4
  br label %23, !llvm.loop !8

59:                                               ; preds = %23
  %60 = load i32, ptr %6, align 4
  store i32 %60, ptr %2, align 4
  br label %61

61:                                               ; preds = %59, %10
  %62 = load i32, ptr %2, align 4
  ret i32 %62
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
