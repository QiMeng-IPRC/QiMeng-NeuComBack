; ModuleID = 'task_ir_O0/s278_inner_ori.ll'
source_filename = "task_c/s278_inner.c"
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
define dso_local void @s278_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %75, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 100000
  br i1 %5, label %6, label %78

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %70, %6
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 32000
  br i1 %9, label %10, label %73

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fcmp ogt float %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %35

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
  %29 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = call float @llvm.fmuladd.f32(float %26, float %30, float %22)
  %32 = load i32, ptr %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %33
  store float %31, ptr %34, align 4
  br label %53

35:                                               ; preds = %16
  %36 = load i32, ptr %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fneg float %39
  %41 = load i32, ptr %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = call float @llvm.fmuladd.f32(float %44, float %48, float %40)
  %50 = load i32, ptr %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %51
  store float %49, ptr %52, align 4
  br label %53

53:                                               ; preds = %35, %17
  %54 = load i32, ptr %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = load i32, ptr %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = load i32, ptr %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %63
  %65 = load float, ptr %64, align 4
  %66 = call float @llvm.fmuladd.f32(float %61, float %65, float %57)
  %67 = load i32, ptr %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %68
  store float %66, ptr %69, align 4
  br label %70

70:                                               ; preds = %53
  %71 = load i32, ptr %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %2, align 4
  br label %7, !llvm.loop !6

73:                                               ; preds = %7
  %74 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %75

75:                                               ; preds = %73
  %76 = load i32, ptr %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %1, align 4
  br label %3, !llvm.loop !8

78:                                               ; preds = %3
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
