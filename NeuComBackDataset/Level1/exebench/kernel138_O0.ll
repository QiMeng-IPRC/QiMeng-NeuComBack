; ModuleID = '../benchmarks/fine_grained/exebench/kernel138.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel138.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_next_word_lm(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %12

12:                                               ; preds = %67, %4
  %13 = load i32, ptr %10, align 4
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 8
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 97
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load ptr, ptr %9, align 8
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 122
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load ptr, ptr %9, align 8
  %28 = load i8, ptr %27, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 32
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %27, align 1
  br label %32

32:                                               ; preds = %26, %21, %16
  %33 = load i32, ptr %10, align 4
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, ptr %10, align 4
  %37 = load ptr, ptr %8, align 8
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %10, align 4
  %39 = load ptr, ptr %7, align 8
  store i32 %38, ptr %39, align 4
  br label %77

40:                                               ; preds = %32
  %41 = load ptr, ptr %9, align 8
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %67

46:                                               ; preds = %40
  %47 = load i32, ptr %10, align 4
  %48 = add nsw i32 %47, 1
  %49 = load ptr, ptr %8, align 8
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load ptr, ptr %5, align 8
  %54 = load i32, ptr %10, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 13
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, ptr %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, ptr %10, align 4
  br label %64

64:                                               ; preds = %61, %52, %46
  %65 = load i32, ptr %10, align 4
  %66 = load ptr, ptr %7, align 8
  store i32 %65, ptr %66, align 4
  br label %77

67:                                               ; preds = %45
  %68 = load i32, ptr %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %10, align 4
  %70 = load ptr, ptr %9, align 8
  %71 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %71, ptr %9, align 8
  br label %12, !llvm.loop !6

72:                                               ; preds = %12
  %73 = load i32, ptr %6, align 4
  %74 = load ptr, ptr %8, align 8
  store i32 %73, ptr %74, align 4
  %75 = load i32, ptr %6, align 4
  %76 = load ptr, ptr %7, align 8
  store i32 %75, ptr %76, align 4
  br label %77

77:                                               ; preds = %72, %64, %35
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
