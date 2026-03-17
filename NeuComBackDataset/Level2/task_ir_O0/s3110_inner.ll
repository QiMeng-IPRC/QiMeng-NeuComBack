; ModuleID = 'task_ir_O0/s3110_inner_ori.ll'
source_filename = "task_c/s3110_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @s3110_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %58, %0
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %9, 39000
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  %12 = load float, ptr @aa, align 64
  store float %12, ptr %3, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  store i32 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %45, %11
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  store i32 0, ptr %7, align 4
  br label %17

17:                                               ; preds = %41, %16
  %18 = load i32, ptr %7, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %22
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x float], ptr %23, i64 0, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load float, ptr %3, align 4
  %29 = fcmp ogt float %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %32
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x float], ptr %33, i64 0, i64 %35
  %37 = load float, ptr %36, align 4
  store float %37, ptr %3, align 4
  %38 = load i32, ptr %6, align 4
  store i32 %38, ptr %1, align 4
  %39 = load i32, ptr %7, align 4
  store i32 %39, ptr %2, align 4
  br label %40

40:                                               ; preds = %30, %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %7, align 4
  br label %17, !llvm.loop !6

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %6, align 4
  br label %13, !llvm.loop !8

48:                                               ; preds = %13
  %49 = load float, ptr %3, align 4
  %50 = load i32, ptr %1, align 4
  %51 = sitofp i32 %50 to float
  %52 = fadd float %49, %51
  %53 = load i32, ptr %2, align 4
  %54 = sitofp i32 %53 to float
  %55 = fadd float %52, %54
  store float %55, ptr %4, align 4
  %56 = load float, ptr %4, align 4
  %57 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, ptr %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %5, align 4
  br label %8, !llvm.loop !9

61:                                               ; preds = %8
  %62 = load float, ptr %3, align 4
  %63 = load i32, ptr %1, align 4
  %64 = sitofp i32 %63 to float
  %65 = fadd float %62, %64
  %66 = fadd float %65, 1.000000e+00
  %67 = load i32, ptr %2, align 4
  %68 = sitofp i32 %67 to float
  %69 = fadd float %66, %68
  %70 = fadd float %69, 1.000000e+00
  ret float %70
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
!9 = distinct !{!9, !7}
