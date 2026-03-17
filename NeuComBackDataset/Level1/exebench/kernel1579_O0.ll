; ModuleID = '../benchmarks/fine_grained/exebench/kernel1579.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1579.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShiftRows(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [4 x i32], align 16
  store ptr %0, ptr %2, align 8
  store i32 1, ptr @i, align 4
  br label %4

4:                                                ; preds = %49, %1
  %5 = load i32, ptr @i, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %52

7:                                                ; preds = %4
  store i32 0, ptr @j, align 4
  br label %8

8:                                                ; preds = %26, %7
  %9 = load i32, ptr @j, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8
  %13 = load i32, ptr @i, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i32], ptr %12, i64 %14
  %16 = load i32, ptr @j, align 4
  %17 = load i32, ptr @i, align 4
  %18 = add nsw i32 %16, %17
  %19 = srem i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], ptr %15, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr @j, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %24
  store i32 %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %11
  %27 = load i32, ptr @j, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr @j, align 4
  br label %8, !llvm.loop !6

29:                                               ; preds = %8
  store i32 0, ptr @j, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, ptr @j, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, ptr @j, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %2, align 8
  %39 = load i32, ptr @i, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], ptr %38, i64 %40
  %42 = load i32, ptr @j, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i32], ptr %41, i64 0, i64 %43
  store i32 %37, ptr %44, align 4
  br label %45

45:                                               ; preds = %33
  %46 = load i32, ptr @j, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr @j, align 4
  br label %30, !llvm.loop !8

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr @i, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr @i, align 4
  br label %4, !llvm.loop !9

52:                                               ; preds = %4
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
