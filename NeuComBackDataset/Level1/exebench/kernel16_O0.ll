; ModuleID = '../benchmarks/fine_grained/exebench/kernel16.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, double }

@kn = dso_local global double 0.000000e+00, align 8
@nu = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @compute_force_right_wall(i32 noundef %0, ptr noundef %1, double noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store double %2, ptr %7, align 8
  %11 = load double, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load i32, ptr %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 0
  %17 = load double, ptr %16, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load i32, ptr %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %21, i32 0, i32 1
  %23 = load double, ptr %22, align 8
  %24 = fadd double %17, %23
  %25 = fsub double %11, %24
  store double %25, ptr %8, align 8
  %26 = load double, ptr %8, align 8
  %27 = fcmp olt double %26, 0.000000e+00
  br i1 %27, label %28, label %61

28:                                               ; preds = %3
  %29 = load ptr, ptr %6, align 8
  %30 = load i32, ptr %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, ptr %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %32, i32 0, i32 2
  %34 = load double, ptr %33, align 8
  %35 = fneg double %34
  store double %35, ptr %9, align 8
  %36 = load double, ptr @kn, align 8
  %37 = fneg double %36
  %38 = load double, ptr %8, align 8
  %39 = load double, ptr @nu, align 8
  %40 = load double, ptr %9, align 8
  %41 = fmul double %39, %40
  %42 = fneg double %41
  %43 = call double @llvm.fmuladd.f64(double %37, double %38, double %42)
  store double %43, ptr %10, align 8
  %44 = load double, ptr %10, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = load i32, ptr %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, ptr %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, ptr %48, i32 0, i32 3
  %50 = load double, ptr %49, align 8
  %51 = fsub double %50, %44
  store double %51, ptr %49, align 8
  %52 = load double, ptr %10, align 8
  %53 = load ptr, ptr %6, align 8
  %54 = load i32, ptr %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, ptr %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, ptr %56, i32 0, i32 4
  %58 = load double, ptr %57, align 8
  %59 = fadd double %58, %52
  store double %59, ptr %57, align 8
  %60 = load double, ptr %10, align 8
  store double %60, ptr %4, align 8
  br label %62

61:                                               ; preds = %3
  store double 0.000000e+00, ptr %4, align 8
  br label %62

62:                                               ; preds = %61, %28
  %63 = load double, ptr %4, align 8
  ret double %63
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

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
