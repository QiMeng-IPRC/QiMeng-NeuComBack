; ModuleID = '../benchmarks/fine_grained/exebench/kernel1094.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1094.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, double }

@QP_DO_NEVER = dso_local global i64 0, align 8
@QP_DO_ONCE = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qp_check_update(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %6, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = load i64, ptr @QP_DO_NEVER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %13, i32 0, i32 0
  %15 = load i64, ptr %14, align 8
  %16 = load i64, ptr @QP_DO_ONCE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 1
  %21 = load double, ptr %20, align 8
  %22 = fcmp ogt double %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, ptr %3, align 4
  br label %59

24:                                               ; preds = %18, %12
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %25, i32 0, i32 1
  %27 = load double, ptr %26, align 8
  %28 = fcmp ole double %27, 0.000000e+00
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load double, ptr %5, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, ptr %31, i32 0, i32 1
  store double %30, ptr %32, align 8
  store i32 1, ptr %3, align 4
  br label %59

33:                                               ; preds = %24
  %34 = load double, ptr %5, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, ptr %35, i32 0, i32 1
  %37 = load double, ptr %36, align 8
  %38 = fcmp olt double %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load double, ptr %5, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, ptr %41, i32 0, i32 1
  store double %40, ptr %42, align 8
  store i32 1, ptr %3, align 4
  br label %59

43:                                               ; preds = %33
  %44 = load double, ptr %5, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, ptr %45, i32 0, i32 1
  %47 = load double, ptr %46, align 8
  %48 = fsub double %44, %47
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, ptr %49, i32 0, i32 0
  %51 = load i64, ptr %50, align 8
  %52 = sitofp i64 %51 to double
  %53 = fcmp oge double %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load double, ptr %5, align 8
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, ptr %56, i32 0, i32 1
  store double %55, ptr %57, align 8
  store i32 1, ptr %3, align 4
  br label %59

58:                                               ; preds = %43
  store i32 0, ptr %3, align 4
  br label %59

59:                                               ; preds = %58, %54, %39, %29, %23, %11
  %60 = load i32, ptr %3, align 4
  ret i32 %60
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
