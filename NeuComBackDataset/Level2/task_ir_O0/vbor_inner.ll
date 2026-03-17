; ModuleID = 'task_ir_O0/vbor_inner_ori.ll'
source_filename = "task_c/vbor_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external global [32000 x float], align 64
@b = external global [32000 x float], align 64
@c = external global [32000 x float], align 64
@d = external global [32000 x float], align 64
@e = external global [32000 x float], align 64
@aa = external global [256 x [256 x float]], align 64
@x = external global [32000 x float], align 64
@bb = external global [256 x [256 x float]], align 64
@cc = external global [256 x [256 x float]], align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vbor_inner() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %156, %0
  %10 = load i32, ptr %7, align 4
  %11 = icmp slt i32 %10, 1000000
  br i1 %11, label %12, label %159

12:                                               ; preds = %9
  store i32 0, ptr %8, align 4
  br label %13

13:                                               ; preds = %151, %12
  %14 = load i32, ptr %8, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %154

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [32000 x float], ptr @a, i64 0, i64 %18
  %20 = load float, ptr %19, align 4
  store float %20, ptr %1, align 4
  %21 = load i32, ptr %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32000 x float], ptr @b, i64 0, i64 %22
  %24 = load float, ptr %23, align 4
  store float %24, ptr %2, align 4
  %25 = load i32, ptr %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [32000 x float], ptr @c, i64 0, i64 %26
  %28 = load float, ptr %27, align 4
  store float %28, ptr %3, align 4
  %29 = load i32, ptr %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32000 x float], ptr @d, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  store float %32, ptr %4, align 4
  %33 = load i32, ptr %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [32000 x float], ptr @e, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  store float %36, ptr %5, align 4
  %37 = load i32, ptr %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x float], ptr @aa, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  store float %40, ptr %6, align 4
  %41 = load float, ptr %1, align 4
  %42 = load float, ptr %2, align 4
  %43 = fmul float %41, %42
  %44 = load float, ptr %3, align 4
  %45 = load float, ptr %1, align 4
  %46 = load float, ptr %2, align 4
  %47 = fmul float %45, %46
  %48 = load float, ptr %4, align 4
  %49 = fmul float %47, %48
  %50 = call float @llvm.fmuladd.f32(float %43, float %44, float %49)
  %51 = load float, ptr %1, align 4
  %52 = load float, ptr %2, align 4
  %53 = fmul float %51, %52
  %54 = load float, ptr %5, align 4
  %55 = call float @llvm.fmuladd.f32(float %53, float %54, float %50)
  %56 = load float, ptr %1, align 4
  %57 = load float, ptr %2, align 4
  %58 = fmul float %56, %57
  %59 = load float, ptr %6, align 4
  %60 = call float @llvm.fmuladd.f32(float %58, float %59, float %55)
  %61 = load float, ptr %1, align 4
  %62 = load float, ptr %3, align 4
  %63 = fmul float %61, %62
  %64 = load float, ptr %4, align 4
  %65 = call float @llvm.fmuladd.f32(float %63, float %64, float %60)
  %66 = load float, ptr %1, align 4
  %67 = load float, ptr %3, align 4
  %68 = fmul float %66, %67
  %69 = load float, ptr %5, align 4
  %70 = call float @llvm.fmuladd.f32(float %68, float %69, float %65)
  %71 = load float, ptr %1, align 4
  %72 = load float, ptr %3, align 4
  %73 = fmul float %71, %72
  %74 = load float, ptr %6, align 4
  %75 = call float @llvm.fmuladd.f32(float %73, float %74, float %70)
  %76 = load float, ptr %1, align 4
  %77 = load float, ptr %4, align 4
  %78 = fmul float %76, %77
  %79 = load float, ptr %5, align 4
  %80 = call float @llvm.fmuladd.f32(float %78, float %79, float %75)
  %81 = load float, ptr %1, align 4
  %82 = load float, ptr %4, align 4
  %83 = fmul float %81, %82
  %84 = load float, ptr %6, align 4
  %85 = call float @llvm.fmuladd.f32(float %83, float %84, float %80)
  %86 = load float, ptr %1, align 4
  %87 = load float, ptr %5, align 4
  %88 = fmul float %86, %87
  %89 = load float, ptr %6, align 4
  %90 = call float @llvm.fmuladd.f32(float %88, float %89, float %85)
  store float %90, ptr %1, align 4
  %91 = load float, ptr %2, align 4
  %92 = load float, ptr %3, align 4
  %93 = fmul float %91, %92
  %94 = load float, ptr %4, align 4
  %95 = load float, ptr %2, align 4
  %96 = load float, ptr %3, align 4
  %97 = fmul float %95, %96
  %98 = load float, ptr %5, align 4
  %99 = fmul float %97, %98
  %100 = call float @llvm.fmuladd.f32(float %93, float %94, float %99)
  %101 = load float, ptr %2, align 4
  %102 = load float, ptr %3, align 4
  %103 = fmul float %101, %102
  %104 = load float, ptr %6, align 4
  %105 = call float @llvm.fmuladd.f32(float %103, float %104, float %100)
  %106 = load float, ptr %2, align 4
  %107 = load float, ptr %4, align 4
  %108 = fmul float %106, %107
  %109 = load float, ptr %5, align 4
  %110 = call float @llvm.fmuladd.f32(float %108, float %109, float %105)
  %111 = load float, ptr %2, align 4
  %112 = load float, ptr %4, align 4
  %113 = fmul float %111, %112
  %114 = load float, ptr %6, align 4
  %115 = call float @llvm.fmuladd.f32(float %113, float %114, float %110)
  %116 = load float, ptr %2, align 4
  %117 = load float, ptr %5, align 4
  %118 = fmul float %116, %117
  %119 = load float, ptr %6, align 4
  %120 = call float @llvm.fmuladd.f32(float %118, float %119, float %115)
  store float %120, ptr %2, align 4
  %121 = load float, ptr %3, align 4
  %122 = load float, ptr %4, align 4
  %123 = fmul float %121, %122
  %124 = load float, ptr %5, align 4
  %125 = load float, ptr %3, align 4
  %126 = load float, ptr %4, align 4
  %127 = fmul float %125, %126
  %128 = load float, ptr %6, align 4
  %129 = fmul float %127, %128
  %130 = call float @llvm.fmuladd.f32(float %123, float %124, float %129)
  %131 = load float, ptr %3, align 4
  %132 = load float, ptr %5, align 4
  %133 = fmul float %131, %132
  %134 = load float, ptr %6, align 4
  %135 = call float @llvm.fmuladd.f32(float %133, float %134, float %130)
  store float %135, ptr %3, align 4
  %136 = load float, ptr %4, align 4
  %137 = load float, ptr %5, align 4
  %138 = fmul float %136, %137
  %139 = load float, ptr %6, align 4
  %140 = fmul float %138, %139
  store float %140, ptr %4, align 4
  %141 = load float, ptr %1, align 4
  %142 = load float, ptr %2, align 4
  %143 = fmul float %141, %142
  %144 = load float, ptr %3, align 4
  %145 = fmul float %143, %144
  %146 = load float, ptr %4, align 4
  %147 = fmul float %145, %146
  %148 = load i32, ptr %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [32000 x float], ptr @x, i64 0, i64 %149
  store float %147, ptr %150, align 4
  br label %151

151:                                              ; preds = %16
  %152 = load i32, ptr %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %8, align 4
  br label %13, !llvm.loop !6

154:                                              ; preds = %13
  %155 = call i32 @dummy(ptr noundef @a, ptr noundef @b, ptr noundef @c, ptr noundef @d, ptr noundef @e, ptr noundef @aa, ptr noundef @bb, ptr noundef @cc, float noundef 0.000000e+00)
  br label %156

156:                                              ; preds = %154
  %157 = load i32, ptr %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr %7, align 4
  br label %9, !llvm.loop !8

159:                                              ; preds = %9
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
