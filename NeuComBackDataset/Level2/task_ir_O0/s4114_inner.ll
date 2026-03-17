; ModuleID = 'task_ir_O0/s4114_inner_ori.ll'
source_filename = "task_c/s4114_inner.c"
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
define dso_local void @s4114_inner(ptr noalias noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %9, 100000
  br i1 %10, label %11, label %52

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, ptr %7, align 4
  br label %14

14:                                               ; preds = %44, %11
  %15 = load i32, ptr %7, align 4
  %16 = icmp slt i32 %15, 32000
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 8
  %19 = load i32, ptr %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %5, align 4
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %5, align 4
  %28 = sub nsw i32 32000, %27
  %29 = add nsw i32 %28, 1
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = call float @llvm.fmuladd.f32(float %33, float %37, float %26)
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %40
  store float %38, ptr %41, align 4
  %42 = load i32, ptr %5, align 4
  %43 = add nsw i32 %42, 5
  store i32 %43, ptr %5, align 4
  br label %44

44:                                               ; preds = %17
  %45 = load i32, ptr %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %7, align 4
  br label %14, !llvm.loop !6

47:                                               ; preds = %14
  %48 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %6, align 4
  br label %8, !llvm.loop !8

52:                                               ; preds = %8
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
