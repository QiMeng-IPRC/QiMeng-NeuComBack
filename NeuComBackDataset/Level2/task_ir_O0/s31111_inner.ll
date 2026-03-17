; ModuleID = 'task_ir_O0/s31111_inner_ori.ll'
source_filename = "task_c/s31111_inner.c"
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
define dso_local void @s31111_inner() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %33, %0
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 200000000
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  store float 0.000000e+00, ptr %1, align 4
  %7 = call float @test(ptr noundef @a)
  %8 = load float, ptr %1, align 4
  %9 = fadd float %8, %7
  store float %9, ptr %1, align 4
  %10 = call float @test(ptr noundef getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 4))
  %11 = load float, ptr %1, align 4
  %12 = fadd float %11, %10
  store float %12, ptr %1, align 4
  %13 = call float @test(ptr noundef getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 8))
  %14 = load float, ptr %1, align 4
  %15 = fadd float %14, %13
  store float %15, ptr %1, align 4
  %16 = call float @test(ptr noundef getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 12))
  %17 = load float, ptr %1, align 4
  %18 = fadd float %17, %16
  store float %18, ptr %1, align 4
  %19 = call float @test(ptr noundef getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 16))
  %20 = load float, ptr %1, align 4
  %21 = fadd float %20, %19
  store float %21, ptr %1, align 4
  %22 = call float @test(ptr noundef getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 20))
  %23 = load float, ptr %1, align 4
  %24 = fadd float %23, %22
  store float %24, ptr %1, align 4
  %25 = call float @test(ptr noundef getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 24))
  %26 = load float, ptr %1, align 4
  %27 = fadd float %26, %25
  store float %27, ptr %1, align 4
  %28 = call float @test(ptr noundef getelementptr inbounds ([32000 x float], ptr @a, i64 0, i64 28))
  %29 = load float, ptr %1, align 4
  %30 = fadd float %29, %28
  store float %30, ptr %1, align 4
  %31 = load float, ptr %1, align 4
  %32 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef %31)
  br label %33

33:                                               ; preds = %6
  %34 = load i32, ptr %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %2, align 4
  br label %3, !llvm.loop !6

36:                                               ; preds = %3
  ret void
}

declare float @test(ptr noundef) #1

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
