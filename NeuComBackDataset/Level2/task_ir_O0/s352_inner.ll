; ModuleID = 'task_ir_O0/s352_inner_ori.ll'
source_filename = "task_c/s352_inner.c"
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
define dso_local float @s352_inner() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  br label %4

4:                                                ; preds = %72, %0
  %5 = load i32, ptr %2, align 4
  %6 = icmp slt i32 %5, 800000
  br i1 %6, label %7, label %75

7:                                                ; preds = %4
  store float 0.000000e+00, ptr %1, align 4
  store i32 0, ptr %3, align 4
  br label %8

8:                                                ; preds = %66, %7
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %9, 32000
  br i1 %10, label %11, label %69

11:                                               ; preds = %8
  %12 = load float, ptr %1, align 4
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = call float @llvm.fmuladd.f32(float %16, float %20, float %12)
  %22 = load i32, ptr %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %3, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = call float @llvm.fmuladd.f32(float %26, float %31, float %21)
  %33 = load i32, ptr %3, align 4
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = load i32, ptr %3, align 4
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = call float @llvm.fmuladd.f32(float %37, float %42, float %32)
  %44 = load i32, ptr %3, align 4
  %45 = add nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = load i32, ptr %3, align 4
  %50 = add nsw i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = call float @llvm.fmuladd.f32(float %48, float %53, float %43)
  %55 = load i32, ptr %3, align 4
  %56 = add nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = load i32, ptr %3, align 4
  %61 = add nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = call float @llvm.fmuladd.f32(float %59, float %64, float %54)
  store float %65, ptr %1, align 4
  br label %66

66:                                               ; preds = %11
  %67 = load i32, ptr %3, align 4
  %68 = add nsw i32 %67, 5
  store i32 %68, ptr %3, align 4
  br label %8, !llvm.loop !6

69:                                               ; preds = %8
  %70 = load float, ptr %1, align 4
  %71 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %70)
  br label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %2, align 4
  br label %4, !llvm.loop !8

75:                                               ; preds = %4
  %76 = load float, ptr %1, align 4
  ret float %76
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
