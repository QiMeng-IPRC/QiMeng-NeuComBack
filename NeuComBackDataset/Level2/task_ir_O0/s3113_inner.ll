; ModuleID = 'task_ir_O0/s3113_inner_ori.ll'
source_filename = "task_c/s3113_inner.c"
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
define dso_local float @s3113_inner() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  br label %4

4:                                                ; preds = %34, %0
  %5 = load i32, ptr %2, align 4
  %6 = icmp slt i32 %5, 400000
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = load float, ptr @a, align 64
  %9 = call float @llvm.fabs.f32(float %8)
  store float %9, ptr %1, align 4
  store i32 0, ptr %3, align 4
  br label %10

10:                                               ; preds = %28, %7
  %11 = load i32, ptr %3, align 4
  %12 = icmp slt i32 %11, 32000
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = call float @llvm.fabs.f32(float %17)
  %19 = load float, ptr %1, align 4
  %20 = fcmp ogt float %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i32, ptr %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = call float @llvm.fabs.f32(float %25)
  store float %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %21, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %3, align 4
  br label %10, !llvm.loop !6

31:                                               ; preds = %10
  %32 = load float, ptr %1, align 4
  %33 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %2, align 4
  br label %4, !llvm.loop !8

37:                                               ; preds = %4
  %38 = load float, ptr %1, align 4
  ret float %38
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

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
