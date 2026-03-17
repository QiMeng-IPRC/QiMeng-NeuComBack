; ModuleID = '../benchmarks/fine_grained/exebench/kernel558.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel558.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GPS_Math_Deg_To_DegMinSec(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store double %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %11 = load double, ptr %5, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load double, ptr %5, align 8
  %15 = fmul double %14, -1.000000e+00
  store double %15, ptr %5, align 8
  store i32 1, ptr %9, align 4
  br label %17

16:                                               ; preds = %4
  store i32 0, ptr %9, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load double, ptr %5, align 8
  %19 = fptosi double %18 to i32
  %20 = load ptr, ptr %6, align 8
  store i32 %19, ptr %20, align 4
  %21 = load double, ptr %5, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load i32, ptr %22, align 4
  %24 = sitofp i32 %23 to double
  %25 = fsub double %21, %24
  %26 = fmul double %25, 6.000000e+01
  store double %26, ptr %10, align 8
  %27 = load double, ptr %10, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load i32, ptr %28, align 4
  %30 = sitofp i32 %29 to double
  %31 = fsub double %27, %30
  %32 = fmul double %31, 6.000000e+01
  %33 = load ptr, ptr %8, align 8
  store double %32, ptr %33, align 8
  %34 = load ptr, ptr %8, align 8
  %35 = load double, ptr %34, align 8
  %36 = fcmp ogt double %35, 5.999900e+01
  br i1 %36, label %37, label %41

37:                                               ; preds = %17
  %38 = load double, ptr %10, align 8
  %39 = fadd double %38, 1.000000e+00
  store double %39, ptr %10, align 8
  %40 = load ptr, ptr %8, align 8
  store double 0.000000e+00, ptr %40, align 8
  br label %41

41:                                               ; preds = %37, %17
  %42 = load double, ptr %10, align 8
  %43 = fcmp ogt double %42, 5.999900e+01
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 8
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %45, align 4
  store double 0.000000e+00, ptr %10, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load double, ptr %10, align 8
  %50 = fptosi double %49 to i32
  %51 = load ptr, ptr %7, align 8
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load ptr, ptr %6, align 8
  %56 = load i32, ptr %55, align 4
  %57 = sub nsw i32 0, %56
  %58 = load ptr, ptr %6, align 8
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %54, %48
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
