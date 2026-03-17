; ModuleID = 'task_ir_O0/s274_inner_ori.ll'
source_filename = "task_c/s274_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s274_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %64, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 100000
  br i1 %5, label %6, label %67

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %59, %6
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 32000
  br i1 %9, label %10, label %62

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = load i32, ptr %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = load i32, ptr %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = call float @llvm.fmuladd.f32(float %18, float %22, float %14)
  %24 = load i32, ptr %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  store float %23, ptr %26, align 4
  %27 = load i32, ptr %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %45

32:                                               ; preds = %10
  %33 = load i32, ptr %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = load i32, ptr %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = fadd float %36, %40
  %42 = load i32, ptr %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %43
  store float %41, ptr %44, align 4
  br label %58

45:                                               ; preds = %10
  %46 = load i32, ptr %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = load i32, ptr %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = fmul float %49, %53
  %55 = load i32, ptr %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %56
  store float %54, ptr %57, align 4
  br label %58

58:                                               ; preds = %45, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %2, align 4
  br label %7, !llvm.loop !6

62:                                               ; preds = %7
  %63 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, ptr %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %1, align 4
  br label %3, !llvm.loop !8

67:                                               ; preds = %3
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
