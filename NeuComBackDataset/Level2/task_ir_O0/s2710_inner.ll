; ModuleID = 'task_ir_O0/s2710_inner_ori.ll'
source_filename = "task_c/s2710_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s2710_inner(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %107, %1
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %6, 50000
  br i1 %7, label %8, label %110

8:                                                ; preds = %5
  store i32 0, ptr %4, align 4
  br label %9

9:                                                ; preds = %102, %8
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 32000
  br i1 %11, label %12, label %105

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fcmp ogt float %16, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %12
  %23 = load i32, ptr %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = call float @llvm.fmuladd.f32(float %26, float %30, float %34)
  store float %35, ptr %33, align 4
  %36 = load i32, ptr %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = load i32, ptr %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = load i32, ptr %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = call float @llvm.fmuladd.f32(float %39, float %43, float %47)
  store float %48, ptr %46, align 4
  br label %101

49:                                               ; preds = %12
  %50 = load i32, ptr %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = load i32, ptr %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %55
  %57 = load float, ptr %56, align 4
  %58 = load i32, ptr %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = call float @llvm.fmuladd.f32(float %57, float %61, float %53)
  %63 = load i32, ptr %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %64
  store float %62, ptr %65, align 4
  %66 = load i32, ptr %2, align 4
  %67 = sitofp i32 %66 to float
  %68 = fcmp ogt float %67, 0.000000e+00
  br i1 %68, label %69, label %86

69:                                               ; preds = %49
  %70 = load i32, ptr %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %71
  %73 = load float, ptr %72, align 4
  %74 = load i32, ptr %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %75
  %77 = load float, ptr %76, align 4
  %78 = load i32, ptr %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %79
  %81 = load float, ptr %80, align 4
  %82 = call float @llvm.fmuladd.f32(float %77, float %81, float %73)
  %83 = load i32, ptr %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %84
  store float %82, ptr %85, align 4
  br label %100

86:                                               ; preds = %49
  %87 = load i32, ptr %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %88
  %90 = load float, ptr %89, align 4
  %91 = load i32, ptr %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %92
  %94 = load float, ptr %93, align 4
  %95 = load i32, ptr %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %96
  %98 = load float, ptr %97, align 4
  %99 = call float @llvm.fmuladd.f32(float %90, float %94, float %98)
  store float %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %86, %69
  br label %101

101:                                              ; preds = %100, %22
  br label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %4, align 4
  br label %9, !llvm.loop !6

105:                                              ; preds = %9
  %106 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, ptr %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %3, align 4
  br label %5, !llvm.loop !8

110:                                              ; preds = %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

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
