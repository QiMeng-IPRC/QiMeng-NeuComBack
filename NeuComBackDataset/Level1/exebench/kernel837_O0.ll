; ModuleID = '../benchmarks/fine_grained/exebench/kernel837.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel837.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@exp_cst1 = dso_local global float 0.000000e+00, align 4
@exp_cst2 = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @expapprox(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon, align 4
  %4 = alloca %union.anon, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store float %0, ptr %2, align 4
  %10 = load float, ptr %2, align 4
  %11 = call float @llvm.fmuladd.f32(float 0x4167154760000000, float %10, float 0x41CFC00000000000)
  store float %11, ptr %5, align 4
  %12 = load float, ptr %5, align 4
  %13 = load float, ptr @exp_cst1, align 4
  %14 = fcmp olt float %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load float, ptr %5, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load float, ptr @exp_cst1, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi float [ %16, %15 ], [ %18, %17 ]
  store float %20, ptr %6, align 4
  %21 = load float, ptr %6, align 4
  %22 = load float, ptr @exp_cst2, align 4
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load float, ptr %6, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load float, ptr @exp_cst2, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi float [ %25, %24 ], [ %27, %26 ]
  store float %29, ptr %7, align 4
  %30 = load float, ptr %7, align 4
  %31 = fptosi float %30 to i32
  store i32 %31, ptr %9, align 4
  %32 = load i32, ptr %9, align 4
  %33 = and i32 %32, 2139095040
  store i32 %33, ptr %3, align 4
  %34 = load i32, ptr %9, align 4
  %35 = and i32 %34, 8388607
  %36 = or i32 %35, 1065353216
  store i32 %36, ptr %4, align 4
  %37 = load float, ptr %4, align 4
  store float %37, ptr %8, align 4
  %38 = load float, ptr %3, align 4
  %39 = load float, ptr %8, align 4
  %40 = load float, ptr %8, align 4
  %41 = load float, ptr %8, align 4
  %42 = load float, ptr %8, align 4
  %43 = call float @llvm.fmuladd.f32(float %42, float 0x3F8BFF8DC0000000, float 0xBF6799C2A0000000)
  %44 = call float @llvm.fmuladd.f32(float %41, float %43, float 0x3FC585B960000000)
  %45 = call float @llvm.fmuladd.f32(float %40, float %44, float 0x3FD3E20820000000)
  %46 = call float @llvm.fmuladd.f32(float %39, float %45, float 0x3FE0552CE0000000)
  %47 = fmul float %38, %46
  ret float %47
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
