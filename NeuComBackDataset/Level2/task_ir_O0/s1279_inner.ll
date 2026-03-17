; ModuleID = 'task_ir_O0/s1279_inner_ori.ll'
source_filename = "task_c/s1279_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s1279_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %47, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 100000
  br i1 %5, label %6, label %50

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %42, %6
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 32000
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fcmp olt float %14, 0.000000e+00
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = load i32, ptr %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fcmp ogt float %20, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %16
  %27 = load i32, ptr %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %30, float %34, float %38)
  store float %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %26, %16
  br label %41

41:                                               ; preds = %40, %10
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %2, align 4
  br label %7, !llvm.loop !6

45:                                               ; preds = %7
  %46 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %1, align 4
  br label %3, !llvm.loop !8

50:                                               ; preds = %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
