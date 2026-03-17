; ModuleID = 'task_ir_O0/s279_inner_ori.ll'
source_filename = "task_c/s279_inner.c"
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
define dso_local void @s279_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %99, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 50000
  br i1 %5, label %6, label %102

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %94, %6
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 32000
  br i1 %9, label %10, label %97

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fcmp ogt float %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %59

17:                                               ; preds = %10
  %18 = load i32, ptr %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fneg float %21
  %23 = load i32, ptr %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = call float @llvm.fmuladd.f32(float %26, float %30, float %22)
  %32 = load i32, ptr %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %33
  store float %31, ptr %34, align 4
  %35 = load i32, ptr %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = fcmp ole float %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %17
  br label %77

45:                                               ; preds = %17
  %46 = load i32, ptr %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %47
  %49 = load float, ptr %48, align 4
  %50 = load i32, ptr %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = load i32, ptr %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = call float @llvm.fmuladd.f32(float %49, float %53, float %57)
  store float %58, ptr %56, align 4
  br label %77

59:                                               ; preds = %16
  %60 = load i32, ptr %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = fneg float %63
  %65 = load i32, ptr %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %66
  %68 = load float, ptr %67, align 4
  %69 = load i32, ptr %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %70
  %72 = load float, ptr %71, align 4
  %73 = call float @llvm.fmuladd.f32(float %68, float %72, float %64)
  %74 = load i32, ptr %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %75
  store float %73, ptr %76, align 4
  br label %77

77:                                               ; preds = %59, %45, %44
  %78 = load i32, ptr %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %79
  %81 = load float, ptr %80, align 4
  %82 = load i32, ptr %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %83
  %85 = load float, ptr %84, align 4
  %86 = load i32, ptr %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %87
  %89 = load float, ptr %88, align 4
  %90 = call float @llvm.fmuladd.f32(float %85, float %89, float %81)
  %91 = load i32, ptr %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %92
  store float %90, ptr %93, align 4
  br label %94

94:                                               ; preds = %77
  %95 = load i32, ptr %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %2, align 4
  br label %7, !llvm.loop !6

97:                                               ; preds = %7
  %98 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %99

99:                                               ; preds = %97
  %100 = load i32, ptr %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %1, align 4
  br label %3, !llvm.loop !8

102:                                              ; preds = %3
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
