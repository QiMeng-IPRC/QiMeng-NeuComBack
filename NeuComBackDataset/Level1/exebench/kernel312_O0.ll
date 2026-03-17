; ModuleID = '../benchmarks/fine_grained/exebench/kernel312.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel312.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, i32, float, float, float, i32, float, float, float, float, float, float, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GenerateRotatedYPos(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i32 0, i32 0
  %10 = load float, ptr %9, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i32 0, i32 1
  %13 = load float, ptr %12, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = load i32, ptr %6, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sitofp i32 %18 to float
  %20 = fadd float %13, %19
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %21, i32 0, i32 3
  %23 = load float, ptr %22, align 4
  %24 = fsub float %20, %23
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %25, i32 0, i32 4
  %27 = load float, ptr %26, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 5
  %30 = load float, ptr %29, align 4
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, ptr %31, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = load i32, ptr %6, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sitofp i32 %35 to float
  %37 = fadd float %30, %36
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, ptr %38, i32 0, i32 7
  %40 = load float, ptr %39, align 4
  %41 = fsub float %37, %40
  %42 = fmul float %27, %41
  %43 = call float @llvm.fmuladd.f32(float %10, float %24, float %42)
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, ptr %44, i32 0, i32 8
  %46 = load float, ptr %45, align 8
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, ptr %47, i32 0, i32 9
  %49 = load float, ptr %48, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, ptr %50, i32 0, i32 10
  %52 = load float, ptr %51, align 8
  %53 = fsub float %49, %52
  %54 = call float @llvm.fmuladd.f32(float %46, float %53, float %43)
  store float %54, ptr %7, align 4
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %55, i32 0, i32 11
  %57 = load float, ptr %56, align 4
  %58 = load float, ptr %7, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, ptr %59, i32 0, i32 12
  %61 = load float, ptr %60, align 8
  %62 = load i32, ptr %5, align 4
  %63 = sitofp i32 %62 to float
  %64 = call float @llvm.fmuladd.f32(float %61, float %63, float %58)
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, ptr %65, i32 0, i32 13
  %67 = load i64, ptr %66, align 8
  %68 = sitofp i64 %67 to float
  %69 = call float @llvm.fmuladd.f32(float %57, float %64, float %68)
  %70 = fptosi float %69 to i32
  ret i32 %70
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
