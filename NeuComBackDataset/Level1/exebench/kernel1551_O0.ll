; ModuleID = '../benchmarks/fine_grained/exebench/kernel1551.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1551.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_halo = type { i64, float }

@UNPHYSICAL = dso_local global float 0.000000e+00, align 4
@LAST_DITCH_VMAX_RATIO_2 = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @last_ditch_metric(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.tree_halo, ptr %7, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.tree_halo, ptr %12, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.tree_halo, ptr %17, i32 0, i32 1
  %19 = load float, ptr %18, align 8
  %20 = fcmp ogt float %19, 0.000000e+00
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.tree_halo, ptr %22, i32 0, i32 1
  %24 = load float, ptr %23, align 8
  %25 = fcmp ogt float %24, 0.000000e+00
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %16, %11, %2
  %27 = load float, ptr @UNPHYSICAL, align 4
  store float %27, ptr %3, align 4
  br label %61

28:                                               ; preds = %21
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.tree_halo, ptr %29, i32 0, i32 1
  %31 = load float, ptr %30, align 8
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.tree_halo, ptr %32, i32 0, i32 1
  %34 = load float, ptr %33, align 8
  %35 = fcmp ogt float %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.tree_halo, ptr %37, i32 0, i32 1
  %39 = load float, ptr %38, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.tree_halo, ptr %40, i32 0, i32 1
  %42 = load float, ptr %41, align 8
  %43 = fdiv float %39, %42
  br label %52

44:                                               ; preds = %28
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.tree_halo, ptr %45, i32 0, i32 1
  %47 = load float, ptr %46, align 8
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.tree_halo, ptr %48, i32 0, i32 1
  %50 = load float, ptr %49, align 8
  %51 = fdiv float %47, %50
  br label %52

52:                                               ; preds = %44, %36
  %53 = phi float [ %43, %36 ], [ %51, %44 ]
  store float %53, ptr %6, align 4
  %54 = load float, ptr %6, align 4
  %55 = load float, ptr @LAST_DITCH_VMAX_RATIO_2, align 4
  %56 = fcmp ogt float %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load float, ptr @UNPHYSICAL, align 4
  store float %58, ptr %3, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load float, ptr %6, align 4
  store float %60, ptr %3, align 4
  br label %61

61:                                               ; preds = %59, %57, %26
  %62 = load float, ptr %3, align 4
  ret float %62
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
