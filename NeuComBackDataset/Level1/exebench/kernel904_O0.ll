; ModuleID = '../benchmarks/fine_grained/exebench/kernel904.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel904.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@singri = dso_local global i32 0, align 4
@arjunsingri = dso_local global float 0.000000e+00, align 4
@c = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @function(i64 noundef %0, float noundef %1, i64 noundef %2, i16 noundef signext %3, float noundef %4, float noundef %5, i64 noundef %6, float noundef %7, i64 noundef %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca i64, align 8
  store i64 %0, ptr %10, align 8
  store float %1, ptr %11, align 4
  store i64 %2, ptr %12, align 8
  store i16 %3, ptr %13, align 2
  store float %4, ptr %14, align 4
  store float %5, ptr %15, align 4
  store i64 %6, ptr %16, align 8
  store float %7, ptr %17, align 4
  store i64 %8, ptr %18, align 8
  %19 = load i64, ptr %10, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, ptr %10, align 8
  %21 = load float, ptr %11, align 4
  %22 = fadd float %21, 1.000000e+00
  store float %22, ptr %11, align 4
  %23 = load i64, ptr %12, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, ptr %12, align 8
  %25 = load i16, ptr %13, align 2
  %26 = add i16 %25, 1
  store i16 %26, ptr %13, align 2
  %27 = load float, ptr %14, align 4
  %28 = fadd float %27, 1.000000e+00
  store float %28, ptr %14, align 4
  %29 = load float, ptr %17, align 4
  %30 = fadd float %29, 1.000000e+00
  store float %30, ptr %17, align 4
  %31 = load float, ptr %11, align 4
  %32 = fptosi float %31 to i64
  store i64 %32, ptr %16, align 8
  %33 = load float, ptr %11, align 4
  store float %33, ptr %15, align 4
  %34 = load i32, ptr @singri, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @singri, align 4
  %36 = load i64, ptr %16, align 8
  %37 = load i16, ptr %13, align 2
  %38 = sext i16 %37 to i64
  %39 = sdiv i64 %36, %38
  %40 = sitofp i64 %39 to float
  %41 = load float, ptr %11, align 4
  %42 = fadd float %40, %41
  %43 = load i64, ptr %12, align 8
  %44 = sitofp i64 %43 to float
  %45 = fsub float %42, %44
  %46 = load float, ptr %14, align 4
  %47 = fadd float %45, %46
  %48 = load float, ptr %15, align 4
  %49 = load float, ptr %11, align 4
  %50 = call float @llvm.fmuladd.f32(float %48, float %49, float %47)
  store float %50, ptr @arjunsingri, align 4
  %51 = load float, ptr @arjunsingri, align 4
  %52 = load float, ptr %14, align 4
  %53 = fadd float %51, %52
  %54 = load float, ptr @c, align 4
  %55 = fadd float %53, %54
  %56 = fptosi float %55 to i16
  store i16 %56, ptr %13, align 2
  %57 = load i64, ptr %18, align 8
  %58 = sitofp i64 %57 to float
  %59 = load float, ptr %17, align 4
  %60 = fadd float %58, %59
  %61 = load i16, ptr %13, align 2
  %62 = sext i16 %61 to i32
  %63 = sitofp i32 %62 to float
  %64 = fadd float %60, %63
  %65 = fptosi float %64 to i64
  store i64 %65, ptr %16, align 8
  %66 = load i64, ptr %16, align 8
  %67 = sitofp i64 %66 to float
  store float %67, ptr @arjunsingri, align 4
  %68 = load float, ptr @arjunsingri, align 4
  %69 = fadd float %68, 1.000000e+00
  store float %69, ptr @arjunsingri, align 4
  %70 = load i64, ptr %16, align 8
  %71 = trunc i64 %70 to i32
  ret i32 %71
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
