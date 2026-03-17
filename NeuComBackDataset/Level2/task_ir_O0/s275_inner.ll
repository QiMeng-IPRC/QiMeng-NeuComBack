; ModuleID = 'task_ir_O0/s275_inner_ori.ll'
source_filename = "task_c/s275_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s275_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %4

4:                                                ; preds = %61, %0
  %5 = load i32, ptr %1, align 4
  %6 = icmp slt i32 %5, 3900
  br i1 %6, label %7, label %64

7:                                                ; preds = %4
  store i32 0, ptr %2, align 4
  br label %8

8:                                                ; preds = %56, %7
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %59

11:                                               ; preds = %8
  %12 = load i32, ptr %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  store i32 1, ptr %3, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i32, ptr %3, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load i32, ptr %3, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %24
  %26 = load i32, ptr %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [256 x float], ptr %25, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %31
  %33 = load i32, ptr %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x float], ptr %32, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %38
  %40 = load i32, ptr %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x float], ptr %39, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = call float @llvm.fmuladd.f32(float %36, float %43, float %29)
  %45 = load i32, ptr %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %46
  %48 = load i32, ptr %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x float], ptr %47, i64 0, i64 %49
  store float %44, ptr %50, align 4
  br label %51

51:                                               ; preds = %21
  %52 = load i32, ptr %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %3, align 4
  br label %18, !llvm.loop !6

54:                                               ; preds = %18
  br label %55

55:                                               ; preds = %54, %11
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %2, align 4
  br label %8, !llvm.loop !8

59:                                               ; preds = %8
  %60 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, ptr %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %1, align 4
  br label %4, !llvm.loop !9

64:                                               ; preds = %4
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
!9 = distinct !{!9, !7}
