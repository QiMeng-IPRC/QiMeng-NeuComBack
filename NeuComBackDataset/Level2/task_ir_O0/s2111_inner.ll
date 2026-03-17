; ModuleID = 'task_ir_O0/s2111_inner_ori.ll'
source_filename = "task_c/s2111_inner.c"
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
define dso_local void @s2111_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %4

4:                                                ; preds = %51, %0
  %5 = load i32, ptr %1, align 4
  %6 = icmp slt i32 %5, 39000
  br i1 %6, label %7, label %54

7:                                                ; preds = %4
  store i32 1, ptr %2, align 4
  br label %8

8:                                                ; preds = %46, %7
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %49

11:                                               ; preds = %8
  store i32 1, ptr %3, align 4
  br label %12

12:                                               ; preds = %42, %11
  %13 = load i32, ptr %3, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %17
  %19 = load i32, ptr %3, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x float], ptr %18, i64 0, i64 %21
  %23 = load float, ptr %22, align 4
  %24 = load i32, ptr %2, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %26
  %28 = load i32, ptr %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x float], ptr %27, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = fadd float %23, %31
  %33 = fpext float %32 to double
  %34 = fdiv double %33, 1.900000e+00
  %35 = fptrunc double %34 to float
  %36 = load i32, ptr %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %37
  %39 = load i32, ptr %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x float], ptr %38, i64 0, i64 %40
  store float %35, ptr %41, align 4
  br label %42

42:                                               ; preds = %15
  %43 = load i32, ptr %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %3, align 4
  br label %12, !llvm.loop !6

45:                                               ; preds = %12
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %2, align 4
  br label %8, !llvm.loop !8

49:                                               ; preds = %8
  %50 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, ptr %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %1, align 4
  br label %4, !llvm.loop !9

54:                                               ; preds = %4
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
!9 = distinct !{!9, !7}
