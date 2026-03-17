; ModuleID = 'task_ir_O0/s141_inner_ori.ll'
source_filename = "task_c/s141_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bb = external global [256 x [256 x float]], align 64
@flat_2d_array = external global [65536 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s141_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  br label %5

5:                                                ; preds = %54, %0
  %6 = load i32, ptr %2, align 4
  %7 = icmp slt i32 %6, 78000
  br i1 %7, label %8, label %57

8:                                                ; preds = %5
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %49, %8
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, ptr %3, align 4
  %16 = add nsw i32 %15, 1
  %17 = sub nsw i32 %16, 1
  %18 = mul nsw i32 %14, %17
  %19 = sdiv i32 %18, 2
  %20 = load i32, ptr %3, align 4
  %21 = add nsw i32 %20, 1
  %22 = add nsw i32 %19, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, ptr %1, align 4
  %24 = load i32, ptr %3, align 4
  store i32 %24, ptr %4, align 4
  br label %25

25:                                               ; preds = %45, %12
  %26 = load i32, ptr %4, align 4
  %27 = icmp slt i32 %26, 256
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %30
  %32 = load i32, ptr %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x float], ptr %31, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load i32, ptr %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [65536 x float], ptr @flat_2d_array, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fadd float %39, %35
  store float %40, ptr %38, align 4
  %41 = load i32, ptr %4, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, ptr %1, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr %1, align 4
  br label %45

45:                                               ; preds = %28
  %46 = load i32, ptr %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %4, align 4
  br label %25, !llvm.loop !6

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %3, align 4
  br label %9, !llvm.loop !8

52:                                               ; preds = %9
  %53 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %2, align 4
  br label %5, !llvm.loop !9

57:                                               ; preds = %5
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
