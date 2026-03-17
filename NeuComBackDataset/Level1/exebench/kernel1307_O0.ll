; ModuleID = '../benchmarks/fine_grained/exebench/kernel1307.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1307.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recfilter = type { double, double, i64, double, double, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @recfilter_apply_int(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.recfilter, ptr %5, i32 0, i32 1
  %7 = load double, ptr %6, align 8
  %8 = load i32, ptr %4, align 4
  %9 = sitofp i32 %8 to double
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.recfilter, ptr %10, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = sitofp i64 %12 to double
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.recfilter, ptr %14, i32 0, i32 0
  %16 = load double, ptr %15, align 8
  %17 = fmul double %13, %16
  %18 = call double @llvm.fmuladd.f64(double %7, double %9, double %17)
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.recfilter, ptr %19, i32 0, i32 0
  store double %18, ptr %20, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.recfilter, ptr %21, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %2
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.recfilter, ptr %26, i32 0, i32 0
  %28 = load double, ptr %27, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.recfilter, ptr %29, i32 0, i32 3
  %31 = load double, ptr %30, align 8
  %32 = fcmp ogt double %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.recfilter, ptr %34, i32 0, i32 0
  %36 = load double, ptr %35, align 8
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.recfilter, ptr %37, i32 0, i32 3
  store double %36, ptr %38, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.recfilter, ptr %40, i32 0, i32 0
  %42 = load double, ptr %41, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.recfilter, ptr %43, i32 0, i32 4
  %45 = load double, ptr %44, align 8
  %46 = fcmp olt double %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.recfilter, ptr %48, i32 0, i32 0
  %50 = load double, ptr %49, align 8
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.recfilter, ptr %51, i32 0, i32 4
  store double %50, ptr %52, align 8
  br label %53

53:                                               ; preds = %47, %39
  br label %54

54:                                               ; preds = %53, %2
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct.recfilter, ptr %55, i32 0, i32 0
  %57 = load double, ptr %56, align 8
  ret double %57
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
