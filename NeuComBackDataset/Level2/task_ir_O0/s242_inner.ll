; ModuleID = 'task_ir_O0/s242_inner_ori.ll'
source_filename = "task_c/s242_inner.c"
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
define dso_local void @s242_inner(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %49, %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 20000
  br i1 %9, label %10, label %52

10:                                               ; preds = %7
  store i32 1, ptr %6, align 4
  br label %11

11:                                               ; preds = %44, %10
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 32000
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load i32, ptr %6, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = load i32, ptr %3, align 4
  %21 = sitofp i32 %20 to float
  %22 = fadd float %19, %21
  %23 = load i32, ptr %4, align 4
  %24 = sitofp i32 %23 to float
  %25 = fadd float %22, %24
  %26 = load i32, ptr %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fadd float %25, %29
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = fadd float %30, %34
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fadd float %35, %39
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %42
  store float %40, ptr %43, align 4
  br label %44

44:                                               ; preds = %14
  %45 = load i32, ptr %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %6, align 4
  br label %11, !llvm.loop !6

47:                                               ; preds = %11
  %48 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %5, align 4
  br label %7, !llvm.loop !8

52:                                               ; preds = %7
  ret void
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
