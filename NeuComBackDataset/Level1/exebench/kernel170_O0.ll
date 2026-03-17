; ModuleID = '../benchmarks/fine_grained/exebench/kernel170.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel170.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_influenza(float noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds float, ptr %11, i64 0
  %13 = load float, ptr %12, align 4
  store float %13, ptr %7, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds float, ptr %14, i64 1
  %16 = load float, ptr %15, align 4
  store float %16, ptr %8, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds float, ptr %17, i64 2
  %19 = load float, ptr %18, align 4
  store float %19, ptr %9, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds float, ptr %20, i64 3
  %22 = load float, ptr %21, align 4
  store float %22, ptr %10, align 4
  %23 = load ptr, ptr @x, align 8
  %24 = getelementptr inbounds float, ptr %23, i64 1
  %25 = load float, ptr %24, align 4
  %26 = fneg float %25
  %27 = load float, ptr %7, align 4
  %28 = fmul float %26, %27
  %29 = load float, ptr %10, align 4
  %30 = fmul float %28, %29
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds float, ptr %31, i64 0
  store float %30, ptr %32, align 4
  %33 = load ptr, ptr @x, align 8
  %34 = getelementptr inbounds float, ptr %33, i64 1
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr %7, align 4
  %37 = fmul float %35, %36
  %38 = load float, ptr %10, align 4
  %39 = load float, ptr %8, align 4
  %40 = load ptr, ptr @x, align 8
  %41 = getelementptr inbounds float, ptr %40, i64 2
  %42 = load float, ptr %41, align 4
  %43 = fdiv float %39, %42
  %44 = fneg float %43
  %45 = call float @llvm.fmuladd.f32(float %37, float %38, float %44)
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds float, ptr %46, i64 1
  store float %45, ptr %47, align 4
  %48 = load float, ptr %8, align 4
  %49 = load ptr, ptr @x, align 8
  %50 = getelementptr inbounds float, ptr %49, i64 2
  %51 = load float, ptr %50, align 4
  %52 = fdiv float %48, %51
  %53 = load float, ptr %9, align 4
  %54 = load ptr, ptr @x, align 8
  %55 = getelementptr inbounds float, ptr %54, i64 3
  %56 = load float, ptr %55, align 4
  %57 = fdiv float %53, %56
  %58 = fsub float %52, %57
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds float, ptr %59, i64 2
  store float %58, ptr %60, align 4
  %61 = load ptr, ptr @x, align 8
  %62 = getelementptr inbounds float, ptr %61, i64 4
  %63 = load float, ptr %62, align 4
  %64 = load float, ptr %9, align 4
  %65 = fmul float %63, %64
  %66 = load ptr, ptr @x, align 8
  %67 = getelementptr inbounds float, ptr %66, i64 5
  %68 = load float, ptr %67, align 4
  %69 = fdiv float %65, %68
  %70 = load ptr, ptr @x, align 8
  %71 = getelementptr inbounds float, ptr %70, i64 6
  %72 = load float, ptr %71, align 4
  %73 = load float, ptr %10, align 4
  %74 = fneg float %72
  %75 = call float @llvm.fmuladd.f32(float %74, float %73, float %69)
  %76 = load ptr, ptr %6, align 8
  %77 = getelementptr inbounds float, ptr %76, i64 3
  store float %75, ptr %77, align 4
  ret void
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
