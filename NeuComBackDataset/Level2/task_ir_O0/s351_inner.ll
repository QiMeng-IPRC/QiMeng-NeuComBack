; ModuleID = 'task_ir_O0/s351_inner_ori.ll'
source_filename = "task_c/s351_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s351_inner() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load float, ptr @c, align 64
  store float %4, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %5

5:                                                ; preds = %76, %0
  %6 = load i32, ptr %2, align 4
  %7 = icmp slt i32 %6, 800000
  br i1 %7, label %8, label %79

8:                                                ; preds = %5
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %71, %8
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %10, 32000
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  %13 = load float, ptr %1, align 4
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = load i32, ptr %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = call float @llvm.fmuladd.f32(float %13, float %17, float %21)
  store float %22, ptr %20, align 4
  %23 = load float, ptr %1, align 4
  %24 = load i32, ptr %3, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = call float @llvm.fmuladd.f32(float %23, float %28, float %33)
  store float %34, ptr %32, align 4
  %35 = load float, ptr %1, align 4
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = load i32, ptr %3, align 4
  %42 = add nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = call float @llvm.fmuladd.f32(float %35, float %40, float %45)
  store float %46, ptr %44, align 4
  %47 = load float, ptr %1, align 4
  %48 = load i32, ptr %3, align 4
  %49 = add nsw i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = load i32, ptr %3, align 4
  %54 = add nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = call float @llvm.fmuladd.f32(float %47, float %52, float %57)
  store float %58, ptr %56, align 4
  %59 = load float, ptr %1, align 4
  %60 = load i32, ptr %3, align 4
  %61 = add nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = load i32, ptr %3, align 4
  %66 = add nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %67
  %69 = load float, ptr %68, align 4
  %70 = call float @llvm.fmuladd.f32(float %59, float %64, float %69)
  store float %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %12
  %72 = load i32, ptr %3, align 4
  %73 = add nsw i32 %72, 5
  store i32 %73, ptr %3, align 4
  br label %9, !llvm.loop !6

74:                                               ; preds = %9
  %75 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %76

76:                                               ; preds = %74
  %77 = load i32, ptr %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %2, align 4
  br label %5, !llvm.loop !8

79:                                               ; preds = %5
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
