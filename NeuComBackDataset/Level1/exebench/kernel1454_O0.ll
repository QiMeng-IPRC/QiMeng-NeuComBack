; ModuleID = '../benchmarks/fine_grained/exebench/kernel1454.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1454.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interceptionfun(ptr noundef %0, ptr noundef %1, double noundef %2, double %3, double %4, double noundef %5) #0 {
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = getelementptr inbounds { double, double }, ptr %7, i32 0, i32 0
  store double %3, ptr %12, align 8
  %13 = getelementptr inbounds { double, double }, ptr %7, i32 0, i32 1
  store double %4, ptr %13, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store double %2, ptr %10, align 8
  store double %5, ptr %11, align 8
  %14 = load double, ptr %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i32 0, i32 0
  %16 = load double, ptr %15, align 8
  %17 = fcmp ogt double %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %6
  %19 = load ptr, ptr %8, align 8
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i32 0, i32 1
  %22 = load double, ptr %21, align 8
  %23 = load double, ptr %11, align 8
  %24 = fmul double %22, %23
  %25 = fdiv double %24, 7.500000e-01
  %26 = fmul double %20, %25
  %27 = load ptr, ptr %9, align 8
  store double %26, ptr %27, align 8
  %28 = load ptr, ptr %8, align 8
  %29 = load double, ptr %28, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = load double, ptr %30, align 8
  %32 = fsub double %29, %31
  %33 = load ptr, ptr %8, align 8
  store double %32, ptr %33, align 8
  br label %36

34:                                               ; preds = %6
  %35 = load ptr, ptr %9, align 8
  store double 0.000000e+00, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %18
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
