; ModuleID = '../benchmarks/fine_grained/exebench/kernel361.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel361.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tax_percent = dso_local global double 0.000000e+00, align 8
@total = dso_local global float 0.000000e+00, align 4
@count = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @add_with_tax(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, ptr %2, align 4
  %4 = load double, ptr @tax_percent, align 8
  %5 = fdiv double %4, 1.000000e+02
  %6 = fadd double 1.000000e+00, %5
  %7 = fptrunc double %6 to float
  store float %7, ptr %3, align 4
  %8 = load float, ptr @total, align 4
  %9 = load float, ptr %2, align 4
  %10 = load float, ptr %3, align 4
  %11 = call float @llvm.fmuladd.f32(float %9, float %10, float %8)
  store float %11, ptr @total, align 4
  %12 = load i64, ptr @count, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr @count, align 8
  %14 = load float, ptr @total, align 4
  ret float %14
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
