; ModuleID = 'task_ir_O0/s318_inner_ori.ll'
source_filename = "task_c/s318_inner.c"
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
define dso_local float @s318_inner(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %51, %1
  %10 = load i32, ptr %7, align 4
  %11 = icmp slt i32 %10, 50000
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  %13 = load float, ptr @a, align 64
  %14 = call float @llvm.fabs.f32(float %13)
  store float %14, ptr %5, align 4
  %15 = load i32, ptr %2, align 4
  %16 = load i32, ptr %3, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %18

18:                                               ; preds = %41, %12
  %19 = load i32, ptr %8, align 4
  %20 = icmp slt i32 %19, 32000
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, ptr %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = call float @llvm.fabs.f32(float %25)
  %27 = load float, ptr %5, align 4
  %28 = fcmp ole float %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %37

30:                                               ; preds = %21
  %31 = load i32, ptr %8, align 4
  store i32 %31, ptr %4, align 4
  %32 = load i32, ptr %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = call float @llvm.fabs.f32(float %35)
  store float %36, ptr %5, align 4
  br label %37

37:                                               ; preds = %30, %29
  %38 = load i32, ptr %2, align 4
  %39 = load i32, ptr %3, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, ptr %3, align 4
  br label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %8, align 4
  br label %18, !llvm.loop !6

44:                                               ; preds = %18
  %45 = load float, ptr %5, align 4
  %46 = load i32, ptr %4, align 4
  %47 = sitofp i32 %46 to float
  %48 = fadd float %45, %47
  store float %48, ptr %6, align 4
  %49 = load float, ptr %6, align 4
  %50 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, ptr %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %7, align 4
  br label %9, !llvm.loop !8

54:                                               ; preds = %9
  %55 = load float, ptr %5, align 4
  %56 = load i32, ptr %4, align 4
  %57 = sitofp i32 %56 to float
  %58 = fadd float %55, %57
  %59 = fadd float %58, 1.000000e+00
  ret float %59
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
