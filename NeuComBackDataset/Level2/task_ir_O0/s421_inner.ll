; ModuleID = 'task_ir_O0/s421_inner_ori.ll'
source_filename = "task_c/s421_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flat_2d_array = external global [65536 x float], align 64
@xx = external global ptr, align 8
@yy = external global ptr, align 8
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s421_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store ptr @flat_2d_array, ptr @xx, align 8
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 400000
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load ptr, ptr @xx, align 8
  store ptr %7, ptr @yy, align 8
  store i32 0, ptr %2, align 4
  br label %8

8:                                                ; preds = %27, %6
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 31999
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load ptr, ptr @yy, align 8
  %13 = load i32, ptr %2, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr %12, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = load i32, ptr %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %17, %21
  %23 = load ptr, ptr @xx, align 8
  %24 = load i32, ptr %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %23, i64 %25
  store float %22, ptr %26, align 4
  br label %27

27:                                               ; preds = %11
  %28 = load i32, ptr %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %2, align 4
  br label %8, !llvm.loop !6

30:                                               ; preds = %8
  %31 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 1.000000e+00)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, ptr %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %1, align 4
  br label %3, !llvm.loop !8

35:                                               ; preds = %3
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
