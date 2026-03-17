; ModuleID = 'task_ir_O0/s332_inner_ori.ll'
source_filename = "task_c/s332_inner.c"
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
define dso_local float @s332_inner(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %9, 100000
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  store i32 -2, ptr %3, align 4
  store float -1.000000e+00, ptr %4, align 4
  store i32 0, ptr %7, align 4
  br label %12

12:                                               ; preds = %30, %11
  %13 = load i32, ptr %7, align 4
  %14 = icmp slt i32 %13, 32000
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = load i32, ptr %2, align 4
  %21 = sitofp i32 %20 to float
  %22 = fcmp ogt float %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, ptr %7, align 4
  store i32 %24, ptr %3, align 4
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  store float %28, ptr %4, align 4
  br label %34

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %7, align 4
  br label %12, !llvm.loop !6

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33, %23
  %35 = load float, ptr %4, align 4
  %36 = load i32, ptr %3, align 4
  %37 = sitofp i32 %36 to float
  %38 = fadd float %35, %37
  store float %38, ptr %5, align 4
  %39 = load float, ptr %5, align 4
  %40 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, ptr %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %6, align 4
  br label %8, !llvm.loop !8

44:                                               ; preds = %8
  %45 = load float, ptr %4, align 4
  ret float %45
}

declare i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
