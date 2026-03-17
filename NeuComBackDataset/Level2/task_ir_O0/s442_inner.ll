; ModuleID = 'task_ir_O0/s442_inner_ori.ll'
source_filename = "task_c/s442_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@indx = external global [32000 x i32], align 64
@b = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s442_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %82, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 50000
  br i1 %5, label %6, label %85

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %77, %6
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 32000
  br i1 %9, label %10, label %80

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x i32], ptr @indx, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %19 [
    i32 1, label %15
    i32 2, label %16
    i32 3, label %17
    i32 4, label %18
  ]

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %34

17:                                               ; preds = %10
  br label %48

18:                                               ; preds = %10
  br label %62

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, ptr %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = call float @llvm.fmuladd.f32(float %24, float %28, float %32)
  store float %33, ptr %31, align 4
  br label %76

34:                                               ; preds = %16
  %35 = load i32, ptr %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = load i32, ptr %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %40
  %42 = load float, ptr %41, align 4
  %43 = load i32, ptr %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = call float @llvm.fmuladd.f32(float %38, float %42, float %46)
  store float %47, ptr %45, align 4
  br label %76

48:                                               ; preds = %17
  %49 = load i32, ptr %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = load i32, ptr %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = load i32, ptr %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = call float @llvm.fmuladd.f32(float %52, float %56, float %60)
  store float %61, ptr %59, align 4
  br label %76

62:                                               ; preds = %18
  %63 = load i32, ptr %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %64
  %66 = load float, ptr %65, align 4
  %67 = load i32, ptr %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %68
  %70 = load float, ptr %69, align 4
  %71 = load i32, ptr %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %72
  %74 = load float, ptr %73, align 4
  %75 = call float @llvm.fmuladd.f32(float %66, float %70, float %74)
  store float %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %62, %48, %34, %20
  br label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %2, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %2, align 4
  br label %7, !llvm.loop !6

80:                                               ; preds = %7
  %81 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, ptr %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %1, align 4
  br label %3, !llvm.loop !8

85:                                               ; preds = %3
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
