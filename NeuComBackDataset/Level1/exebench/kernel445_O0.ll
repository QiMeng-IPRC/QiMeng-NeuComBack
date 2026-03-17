; ModuleID = '../benchmarks/fine_grained/exebench/kernel445.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel445.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @ExtractHex(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  br label %8

8:                                                ; preds = %13, %2
  %9 = load ptr, ptr %4, align 8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %15, ptr %4, align 8
  br label %8, !llvm.loop !6

16:                                               ; preds = %8
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %60, %16
  %18 = load ptr, ptr %4, align 8
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %7, align 1
  %20 = load i8, ptr %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sge i32 %21, 48
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i8, ptr %7, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 57
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8, ptr %7, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 48
  store i32 %30, ptr %6, align 4
  br label %60

31:                                               ; preds = %23, %17
  %32 = load i8, ptr %7, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 65
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i8, ptr %7, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 70
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8, ptr %7, align 1
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 65
  %43 = add nsw i32 %42, 10
  store i32 %43, ptr %6, align 4
  br label %59

44:                                               ; preds = %35, %31
  %45 = load i8, ptr %7, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 97
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i8, ptr %7, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %50, 102
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i8, ptr %7, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 97
  %56 = add nsw i32 %55, 10
  store i32 %56, ptr %6, align 4
  br label %58

57:                                               ; preds = %48, %44
  br label %68

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %27
  %61 = load i32, ptr %5, align 4
  %62 = shl i32 %61, 4
  store i32 %62, ptr %5, align 4
  %63 = load i32, ptr %6, align 4
  %64 = load i32, ptr %5, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, ptr %5, align 4
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %67, ptr %4, align 8
  br label %17

68:                                               ; preds = %57
  %69 = load i32, ptr %5, align 4
  %70 = load ptr, ptr %3, align 8
  store i32 %69, ptr %70, align 4
  %71 = load ptr, ptr %4, align 8
  ret ptr %71
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
