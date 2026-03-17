; ModuleID = 'task_ir_O0/s353_inner_ori.ll'
source_filename = "task_c/s353_inner.c"
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
define dso_local void @s353_inner(ptr noalias noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %6 = load float, ptr @c, align 64
  store float %6, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %7

7:                                                ; preds = %98, %1
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %8, 100000
  br i1 %9, label %10, label %101

10:                                               ; preds = %7
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %93, %10
  %12 = load i32, ptr %5, align 4
  %13 = icmp slt i32 %12, 32000
  br i1 %13, label %14, label %96

14:                                               ; preds = %11
  %15 = load float, ptr %3, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = call float @llvm.fmuladd.f32(float %15, float %23, float %27)
  store float %28, ptr %26, align 4
  %29 = load float, ptr %3, align 4
  %30 = load ptr, ptr %2, align 8
  %31 = load i32, ptr %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = call float @llvm.fmuladd.f32(float %29, float %38, float %43)
  store float %44, ptr %42, align 4
  %45 = load float, ptr %3, align 4
  %46 = load ptr, ptr %2, align 8
  %47 = load i32, ptr %5, align 4
  %48 = add nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %46, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = load i32, ptr %5, align 4
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = call float @llvm.fmuladd.f32(float %45, float %54, float %59)
  store float %60, ptr %58, align 4
  %61 = load float, ptr %3, align 4
  %62 = load ptr, ptr %2, align 8
  %63 = load i32, ptr %5, align 4
  %64 = add nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %62, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %68
  %70 = load float, ptr %69, align 4
  %71 = load i32, ptr %5, align 4
  %72 = add nsw i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %73
  %75 = load float, ptr %74, align 4
  %76 = call float @llvm.fmuladd.f32(float %61, float %70, float %75)
  store float %76, ptr %74, align 4
  %77 = load float, ptr %3, align 4
  %78 = load ptr, ptr %2, align 8
  %79 = load i32, ptr %5, align 4
  %80 = add nsw i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %78, i64 %81
  %83 = load i32, ptr %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %84
  %86 = load float, ptr %85, align 4
  %87 = load i32, ptr %5, align 4
  %88 = add nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %89
  %91 = load float, ptr %90, align 4
  %92 = call float @llvm.fmuladd.f32(float %77, float %86, float %91)
  store float %92, ptr %90, align 4
  br label %93

93:                                               ; preds = %14
  %94 = load i32, ptr %5, align 4
  %95 = add nsw i32 %94, 5
  store i32 %95, ptr %5, align 4
  br label %11, !llvm.loop !6

96:                                               ; preds = %11
  %97 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, ptr %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %4, align 4
  br label %7, !llvm.loop !8

101:                                              ; preds = %7
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
