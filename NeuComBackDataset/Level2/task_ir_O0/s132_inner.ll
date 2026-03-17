; ModuleID = 'task_ir_O0/s132_inner_ori.ll'
source_filename = "task_c/s132_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@a = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s132_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %1, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %9

9:                                                ; preds = %42, %0
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 40000000
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  store i32 1, ptr %5, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %18
  %20 = load i32, ptr %5, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [256 x float], ptr %19, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load float, ptr getelementptr inbounds ([32000 x float], ptr @c, i64 0, i64 1), align 4
  %30 = call float @llvm.fmuladd.f32(float %28, float %29, float %24)
  %31 = load i32, ptr %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %32
  %34 = load i32, ptr %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x float], ptr %33, i64 0, i64 %35
  store float %30, ptr %36, align 4
  br label %37

37:                                               ; preds = %16
  %38 = load i32, ptr %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %5, align 4
  br label %13, !llvm.loop !6

40:                                               ; preds = %13
  %41 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %4, align 4
  br label %9, !llvm.loop !8

45:                                               ; preds = %9
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
