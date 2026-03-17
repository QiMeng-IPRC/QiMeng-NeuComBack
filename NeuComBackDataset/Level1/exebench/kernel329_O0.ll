; ModuleID = '../benchmarks/fine_grained/exebench/kernel329.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel329.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, i32, i32, i32 }

@SIN_TABLE = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @updateBallPosition(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store ptr %0, ptr %2, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %10, i32 0, i32 0
  %12 = load double, ptr %11, align 8
  store double %12, ptr %3, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %13, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  store double %15, ptr %4, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  store i32 %18, ptr %5, align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %6, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  store i32 %24, ptr %7, align 4
  %25 = load i32, ptr %7, align 4
  %26 = load ptr, ptr @SIN_TABLE, align 8
  %27 = load i32, ptr %6, align 4
  %28 = add nsw i32 %27, 90
  %29 = srem i32 %28, 360
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %26, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = mul nsw i32 %25, %32
  %34 = sitofp i32 %33 to double
  %35 = load double, ptr %3, align 8
  %36 = fadd double %34, %35
  store double %36, ptr %8, align 8
  %37 = load i32, ptr %7, align 4
  %38 = load ptr, ptr @SIN_TABLE, align 8
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %38, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = sitofp i32 %43 to double
  %45 = load double, ptr %4, align 8
  %46 = fadd double %44, %45
  store double %46, ptr %9, align 8
  %47 = load double, ptr %8, align 8
  %48 = fcmp ogt double %47, 5.160000e+02
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  store double 5.160000e+02, ptr %8, align 8
  br label %55

50:                                               ; preds = %1
  %51 = load double, ptr %8, align 8
  %52 = fcmp olt double %51, 6.700000e+01
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store double 6.700000e+01, ptr %8, align 8
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %54, %49
  %56 = load double, ptr %9, align 8
  %57 = fcmp olt double %56, 6.700000e+01
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store double 6.700000e+01, ptr %9, align 8
  br label %64

59:                                               ; preds = %55
  %60 = load double, ptr %9, align 8
  %61 = fcmp oge double %60, 4.130000e+02
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store double 4.120000e+02, ptr %9, align 8
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %58
  %65 = load double, ptr %8, align 8
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, ptr %66, i32 0, i32 0
  store double %65, ptr %67, align 8
  %68 = load double, ptr %9, align 8
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, ptr %69, i32 0, i32 1
  store double %68, ptr %70, align 8
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
