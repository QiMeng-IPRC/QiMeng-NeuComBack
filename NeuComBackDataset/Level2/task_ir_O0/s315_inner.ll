; ModuleID = 'task_ir_O0/s315_inner_ori.ll'
source_filename = "task_c/s315_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @s315_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %7

7:                                                ; preds = %18, %0
  %8 = load i32, ptr %1, align 4
  %9 = icmp slt i32 %8, 32000
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i32, ptr %1, align 4
  %12 = mul nsw i32 %11, 7
  %13 = srem i32 %12, 32000
  %14 = sitofp i32 %13 to float
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %16
  store float %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %1, align 4
  br label %7, !llvm.loop !6

21:                                               ; preds = %7
  store i32 0, ptr %5, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, ptr %5, align 4
  %24 = icmp slt i32 %23, 100000
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load float, ptr @a, align 64
  store float %26, ptr %2, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %6, align 4
  br label %27

27:                                               ; preds = %44, %25
  %28 = load i32, ptr %6, align 4
  %29 = icmp slt i32 %28, 32000
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load float, ptr %2, align 4
  %36 = fcmp ogt float %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %39
  %41 = load float, ptr %40, align 4
  store float %41, ptr %2, align 4
  %42 = load i32, ptr %6, align 4
  store i32 %42, ptr %4, align 4
  br label %43

43:                                               ; preds = %37, %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %6, align 4
  br label %27, !llvm.loop !8

47:                                               ; preds = %27
  %48 = load float, ptr %2, align 4
  %49 = load i32, ptr %4, align 4
  %50 = sitofp i32 %49 to float
  %51 = fadd float %48, %50
  store float %51, ptr %3, align 4
  %52 = load float, ptr %3, align 4
  %53 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %52)
  br label %54

54:                                               ; preds = %47
  %55 = load i32, ptr %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %5, align 4
  br label %22, !llvm.loop !9

57:                                               ; preds = %22
  %58 = load i32, ptr %4, align 4
  %59 = sitofp i32 %58 to float
  %60 = load float, ptr %2, align 4
  %61 = fadd float %59, %60
  %62 = fadd float %61, 1.000000e+00
  ret float %62
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
