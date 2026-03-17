; ModuleID = '../benchmarks/fine_grained/exebench/kernel97.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y_bias = dso_local global float 0.000000e+00, align 4
@Y_angle = dso_local global float 0.000000e+00, align 4
@YP_11 = dso_local global i32 0, align 4
@YP_10 = dso_local global i32 0, align 4
@YP_01 = dso_local global i32 0, align 4
@YQ_angle = dso_local global i64 0, align 8
@YP_00 = dso_local global i32 0, align 4
@YQ_bias = dso_local global i32 0, align 4
@YR_measured = dso_local global i32 0, align 4
@YS = dso_local global i32 0, align 4
@YK_0 = dso_local global float 0.000000e+00, align 4
@YK_1 = dso_local global float 0.000000e+00, align 4
@Yy = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @kalmanFilterY(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, ptr %4, align 4
  store float %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %6, align 4
  %8 = sitofp i32 %7 to float
  %9 = load float, ptr %5, align 4
  %10 = load float, ptr @Y_bias, align 4
  %11 = fsub float %9, %10
  %12 = load float, ptr @Y_angle, align 4
  %13 = call float @llvm.fmuladd.f32(float %8, float %11, float %12)
  store float %13, ptr @Y_angle, align 4
  %14 = load i32, ptr %6, align 4
  %15 = load i32, ptr %6, align 4
  %16 = load i32, ptr @YP_11, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, ptr @YP_10, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load i32, ptr @YP_01, align 4
  %21 = sub nsw i32 %19, %20
  %22 = mul nsw i32 %14, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, ptr @YQ_angle, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, ptr @YP_00, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, ptr @YP_00, align 4
  %30 = load i32, ptr %6, align 4
  %31 = sub nsw i32 0, %30
  %32 = load i32, ptr @YP_11, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, ptr @YP_01, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, ptr @YP_01, align 4
  %36 = load i32, ptr %6, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32, ptr @YP_11, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, ptr @YP_10, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, ptr @YP_10, align 4
  %42 = load i32, ptr @YQ_bias, align 4
  %43 = load i32, ptr @YP_11, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr @YP_11, align 4
  %45 = load i32, ptr @YP_00, align 4
  %46 = load i32, ptr @YR_measured, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, ptr @YS, align 4
  %48 = load i32, ptr @YP_00, align 4
  %49 = load i32, ptr @YS, align 4
  %50 = sdiv i32 %48, %49
  %51 = sitofp i32 %50 to float
  store float %51, ptr @YK_0, align 4
  %52 = load i32, ptr @YP_10, align 4
  %53 = load i32, ptr @YS, align 4
  %54 = sdiv i32 %52, %53
  %55 = sitofp i32 %54 to float
  store float %55, ptr @YK_1, align 4
  %56 = load float, ptr %4, align 4
  %57 = load float, ptr @Y_angle, align 4
  %58 = fsub float %56, %57
  store float %58, ptr @Yy, align 4
  %59 = load float, ptr @YK_0, align 4
  %60 = load float, ptr @Yy, align 4
  %61 = load float, ptr @Y_angle, align 4
  %62 = call float @llvm.fmuladd.f32(float %59, float %60, float %61)
  store float %62, ptr @Y_angle, align 4
  %63 = load float, ptr @YK_1, align 4
  %64 = load float, ptr @Yy, align 4
  %65 = load float, ptr @Y_bias, align 4
  %66 = call float @llvm.fmuladd.f32(float %63, float %64, float %65)
  store float %66, ptr @Y_bias, align 4
  %67 = load float, ptr @YK_0, align 4
  %68 = load i32, ptr @YP_00, align 4
  %69 = sitofp i32 %68 to float
  %70 = load i32, ptr @YP_00, align 4
  %71 = sitofp i32 %70 to float
  %72 = fneg float %67
  %73 = call float @llvm.fmuladd.f32(float %72, float %69, float %71)
  %74 = fptosi float %73 to i32
  store i32 %74, ptr @YP_00, align 4
  %75 = load float, ptr @YK_0, align 4
  %76 = load i32, ptr @YP_01, align 4
  %77 = sitofp i32 %76 to float
  %78 = load i32, ptr @YP_01, align 4
  %79 = sitofp i32 %78 to float
  %80 = fneg float %75
  %81 = call float @llvm.fmuladd.f32(float %80, float %77, float %79)
  %82 = fptosi float %81 to i32
  store i32 %82, ptr @YP_01, align 4
  %83 = load float, ptr @YK_1, align 4
  %84 = load i32, ptr @YP_00, align 4
  %85 = sitofp i32 %84 to float
  %86 = load i32, ptr @YP_10, align 4
  %87 = sitofp i32 %86 to float
  %88 = fneg float %83
  %89 = call float @llvm.fmuladd.f32(float %88, float %85, float %87)
  %90 = fptosi float %89 to i32
  store i32 %90, ptr @YP_10, align 4
  %91 = load float, ptr @YK_1, align 4
  %92 = load i32, ptr @YP_01, align 4
  %93 = sitofp i32 %92 to float
  %94 = load i32, ptr @YP_11, align 4
  %95 = sitofp i32 %94 to float
  %96 = fneg float %91
  %97 = call float @llvm.fmuladd.f32(float %96, float %93, float %95)
  %98 = fptosi float %97 to i32
  store i32 %98, ptr @YP_11, align 4
  %99 = load float, ptr @Y_angle, align 4
  ret float %99
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
