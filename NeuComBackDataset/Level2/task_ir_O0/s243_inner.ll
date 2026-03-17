; ModuleID = 'task_ir_O0/s243_inner_ori.ll'
source_filename = "task_c/s243_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s243_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %65, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 100000
  br i1 %5, label %6, label %68

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %60, %6
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 31999
  br i1 %9, label %10, label %63

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = load i32, ptr %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %16
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
  %31 = load i32, ptr %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load i32, ptr %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %34, float %38, float %30)
  %40 = load i32, ptr %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %41
  store float %39, ptr %42, align 4
  %43 = load i32, ptr %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %47 = load i32, ptr %2, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %49
  %51 = load float, ptr %50, align 4
  %52 = load i32, ptr %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %53
  %55 = load float, ptr %54, align 4
  %56 = call float @llvm.fmuladd.f32(float %51, float %55, float %46)
  %57 = load i32, ptr %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %58
  store float %56, ptr %59, align 4
  br label %60

60:                                               ; preds = %10
  %61 = load i32, ptr %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %2, align 4
  br label %7, !llvm.loop !6

63:                                               ; preds = %7
  %64 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, ptr %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %1, align 4
  br label %3, !llvm.loop !8

68:                                               ; preds = %3
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
