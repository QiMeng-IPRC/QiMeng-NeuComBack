; ModuleID = 'task_ir_O0/s233_inner_ori.ll'
source_filename = "task_c/s233_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s233_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %5

5:                                                ; preds = %78, %0
  %6 = load i32, ptr %1, align 4
  %7 = icmp slt i32 %6, 39000
  br i1 %7, label %8, label %81

8:                                                ; preds = %5
  store i32 1, ptr %2, align 4
  br label %9

9:                                                ; preds = %73, %8
  %10 = load i32, ptr %2, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %76

12:                                               ; preds = %9
  store i32 1, ptr %3, align 4
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %19
  %21 = load i32, ptr %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [256 x float], ptr %20, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = load i32, ptr %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %26
  %28 = load i32, ptr %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x float], ptr %27, i64 0, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = fadd float %24, %31
  %33 = load i32, ptr %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x [256 x float]], ptr @aa, i64 0, i64 %34
  %36 = load i32, ptr %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x float], ptr %35, i64 0, i64 %37
  store float %32, ptr %38, align 4
  br label %39

39:                                               ; preds = %16
  %40 = load i32, ptr %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %3, align 4
  br label %13, !llvm.loop !6

42:                                               ; preds = %13
  store i32 1, ptr %4, align 4
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, ptr %4, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load i32, ptr %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %48
  %50 = load i32, ptr %2, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x float], ptr %49, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = load i32, ptr %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [256 x [256 x float]], ptr @cc, i64 0, i64 %56
  %58 = load i32, ptr %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [256 x float], ptr %57, i64 0, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = fadd float %54, %61
  %63 = load i32, ptr %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [256 x [256 x float]], ptr @bb, i64 0, i64 %64
  %66 = load i32, ptr %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [256 x float], ptr %65, i64 0, i64 %67
  store float %62, ptr %68, align 4
  br label %69

69:                                               ; preds = %46
  %70 = load i32, ptr %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %4, align 4
  br label %43, !llvm.loop !8

72:                                               ; preds = %43
  br label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %2, align 4
  br label %9, !llvm.loop !9

76:                                               ; preds = %9
  %77 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, ptr %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %1, align 4
  br label %5, !llvm.loop !10

81:                                               ; preds = %5
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
!10 = distinct !{!10, !7}
