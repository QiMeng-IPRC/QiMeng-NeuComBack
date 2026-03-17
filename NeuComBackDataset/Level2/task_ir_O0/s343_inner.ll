; ModuleID = 'task_ir_O0/s343_inner_ori.ll'
source_filename = "task_c/s343_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bb = external global [256 x [256 x float]], align 64
@aa = external global [256 x [256 x float]], align 64
@flat_2d_array = external global [65536 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s343_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  br label %5

5:                                                ; preds = %48, %0
  %6 = load i32, ptr %2, align 4
  %7 = icmp slt i32 %6, 3900
  br i1 %7, label %8, label %51

8:                                                ; preds = %5
  store i32 -1, ptr %1, align 4
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %43, %8
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  store i32 0, ptr %4, align 4
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %18
  %20 = load i32, ptr %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x float], ptr %19, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = fcmp ogt float %23, 0.000000e+00
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = load i32, ptr %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %1, align 4
  %28 = load i32, ptr %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %29
  %31 = load i32, ptr %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x float], ptr %30, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %36
  store float %34, ptr %37, align 4
  br label %38

38:                                               ; preds = %25, %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %4, align 4
  br label %13, !llvm.loop !6

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %3, align 4
  br label %9, !llvm.loop !8

46:                                               ; preds = %9
  %47 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, ptr %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %2, align 4
  br label %5, !llvm.loop !9

51:                                               ; preds = %5
  ret void
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
