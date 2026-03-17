; ModuleID = '../benchmarks/fine_grained/exebench/kernel495.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel495.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @mm_setr_clipped_pd(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store double %1, ptr %7, align 8
  store double %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %11 = load double, ptr %7, align 8
  %12 = load ptr, ptr %10, align 8
  %13 = getelementptr inbounds double, ptr %12, i64 0
  %14 = load double, ptr %13, align 8
  %15 = fcmp ogt double %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load ptr, ptr %10, align 8
  %18 = getelementptr inbounds double, ptr %17, i64 0
  %19 = load double, ptr %18, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 0
  store double %19, ptr %21, align 8
  br label %39

22:                                               ; preds = %5
  %23 = load double, ptr %7, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 0
  %26 = load double, ptr %25, align 8
  %27 = fcmp olt double %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr inbounds double, ptr %29, i64 0
  %31 = load double, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds double, ptr %32, i64 0
  store double %31, ptr %33, align 8
  br label %38

34:                                               ; preds = %22
  %35 = load double, ptr %7, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds double, ptr %36, i64 0
  store double %35, ptr %37, align 8
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %16
  %40 = load double, ptr %8, align 8
  %41 = load ptr, ptr %10, align 8
  %42 = getelementptr inbounds double, ptr %41, i64 1
  %43 = load double, ptr %42, align 8
  %44 = fcmp ogt double %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load ptr, ptr %10, align 8
  %47 = getelementptr inbounds double, ptr %46, i64 1
  %48 = load double, ptr %47, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds double, ptr %49, i64 1
  store double %48, ptr %50, align 8
  br label %68

51:                                               ; preds = %39
  %52 = load double, ptr %8, align 8
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds double, ptr %53, i64 1
  %55 = load double, ptr %54, align 8
  %56 = fcmp olt double %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds double, ptr %58, i64 1
  %60 = load double, ptr %59, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds double, ptr %61, i64 1
  store double %60, ptr %62, align 8
  br label %67

63:                                               ; preds = %51
  %64 = load double, ptr %8, align 8
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds double, ptr %65, i64 1
  store double %64, ptr %66, align 8
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %45
  %69 = load ptr, ptr %6, align 8
  ret ptr %69
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
