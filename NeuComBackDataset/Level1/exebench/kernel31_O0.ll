; ModuleID = '../benchmarks/fine_grained/exebench/kernel31.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_litobj = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitLightDistAttn(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store float %1, ptr %6, align 4
  store float %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %13 = load ptr, ptr %5, align 8
  store ptr %13, ptr %12, align 8
  %14 = load float, ptr %6, align 4
  %15 = fcmp olt float %14, 0.000000e+00
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load float, ptr %7, align 4
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load float, ptr %7, align 4
  %21 = fcmp oge float %20, 1.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %4
  store i32 129, ptr %8, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, ptr %8, align 4
  switch i32 %24, label %59 [
    i32 131, label %25
    i32 130, label %32
    i32 128, label %49
    i32 129, label %58
  ]

25:                                               ; preds = %23
  store float 1.000000e+00, ptr %9, align 4
  %26 = load float, ptr %7, align 4
  %27 = fsub float 1.000000e+00, %26
  %28 = load float, ptr %7, align 4
  %29 = load float, ptr %6, align 4
  %30 = fmul float %28, %29
  %31 = fdiv float %27, %30
  store float %31, ptr %10, align 4
  store float 0.000000e+00, ptr %11, align 4
  br label %60

32:                                               ; preds = %23
  store float 1.000000e+00, ptr %9, align 4
  %33 = load float, ptr %7, align 4
  %34 = fsub float 1.000000e+00, %33
  %35 = fmul float 5.000000e-01, %34
  %36 = load float, ptr %7, align 4
  %37 = load float, ptr %6, align 4
  %38 = fmul float %36, %37
  %39 = fdiv float %35, %38
  store float %39, ptr %10, align 4
  %40 = load float, ptr %7, align 4
  %41 = fsub float 1.000000e+00, %40
  %42 = fmul float 5.000000e-01, %41
  %43 = load float, ptr %7, align 4
  %44 = load float, ptr %6, align 4
  %45 = fmul float %43, %44
  %46 = load float, ptr %6, align 4
  %47 = fmul float %45, %46
  %48 = fdiv float %42, %47
  store float %48, ptr %11, align 4
  br label %60

49:                                               ; preds = %23
  store float 1.000000e+00, ptr %9, align 4
  store float 0.000000e+00, ptr %10, align 4
  %50 = load float, ptr %7, align 4
  %51 = fsub float 1.000000e+00, %50
  %52 = load float, ptr %7, align 4
  %53 = load float, ptr %6, align 4
  %54 = fmul float %52, %53
  %55 = load float, ptr %6, align 4
  %56 = fmul float %54, %55
  %57 = fdiv float %51, %56
  store float %57, ptr %11, align 4
  br label %60

58:                                               ; preds = %23
  br label %59

59:                                               ; preds = %23, %58
  store float 1.000000e+00, ptr %9, align 4
  store float 0.000000e+00, ptr %10, align 4
  store float 0.000000e+00, ptr %11, align 4
  br label %60

60:                                               ; preds = %59, %49, %32, %25
  %61 = load float, ptr %9, align 4
  %62 = load ptr, ptr %12, align 8
  %63 = getelementptr inbounds %struct.__gx_litobj, ptr %62, i32 0, i32 0
  store float %61, ptr %63, align 4
  %64 = load float, ptr %10, align 4
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds %struct.__gx_litobj, ptr %65, i32 0, i32 1
  store float %64, ptr %66, align 4
  %67 = load float, ptr %11, align 4
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds %struct.__gx_litobj, ptr %68, i32 0, i32 2
  store float %67, ptr %69, align 4
  ret void
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
