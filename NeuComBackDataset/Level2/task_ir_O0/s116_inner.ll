; ModuleID = 'task_ir_O0/s116_inner_ori.ll'
source_filename = "task_c/s116_inner.c"
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
define dso_local void @s116_inner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %3

3:                                                ; preds = %89, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 1000000
  br i1 %5, label %6, label %92

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %84, %6
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %8, 31995
  br i1 %9, label %10, label %87

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = load i32, ptr %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = fmul float %15, %19
  %21 = load i32, ptr %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %22
  store float %20, ptr %23, align 4
  %24 = load i32, ptr %2, align 4
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = load i32, ptr %2, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = fmul float %28, %33
  %35 = load i32, ptr %2, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %37
  store float %34, ptr %38, align 4
  %39 = load i32, ptr %2, align 4
  %40 = add nsw i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = load i32, ptr %2, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = fmul float %43, %48
  %50 = load i32, ptr %2, align 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %52
  store float %49, ptr %53, align 4
  %54 = load i32, ptr %2, align 4
  %55 = add nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %56
  %58 = load float, ptr %57, align 4
  %59 = load i32, ptr %2, align 4
  %60 = add nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = fmul float %58, %63
  %65 = load i32, ptr %2, align 4
  %66 = add nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %67
  store float %64, ptr %68, align 4
  %69 = load i32, ptr %2, align 4
  %70 = add nsw i32 %69, 5
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %71
  %73 = load float, ptr %72, align 4
  %74 = load i32, ptr %2, align 4
  %75 = add nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %76
  %78 = load float, ptr %77, align 4
  %79 = fmul float %73, %78
  %80 = load i32, ptr %2, align 4
  %81 = add nsw i32 %80, 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %82
  store float %79, ptr %83, align 4
  br label %84

84:                                               ; preds = %10
  %85 = load i32, ptr %2, align 4
  %86 = add nsw i32 %85, 5
  store i32 %86, ptr %2, align 4
  br label %7, !llvm.loop !6

87:                                               ; preds = %7
  %88 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %89

89:                                               ; preds = %87
  %90 = load i32, ptr %1, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %1, align 4
  br label %3, !llvm.loop !8

92:                                               ; preds = %3
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
