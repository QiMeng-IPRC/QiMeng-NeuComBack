; ModuleID = '../benchmarks/fine_grained/exebench/kernel1470.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1470.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t1 = dso_local global double 0.000000e+00, align 8
@t2 = dso_local global double 0.000000e+00, align 8
@t3 = dso_local global double 0.000000e+00, align 8
@t4 = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds double, ptr %5, i64 -1
  %7 = load double, ptr %6, align 8
  store double %7, ptr @t1, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds double, ptr %8, i64 0
  %10 = load double, ptr %9, align 8
  store double %10, ptr @t2, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds double, ptr %11, i64 1
  %13 = load double, ptr %12, align 8
  store double %13, ptr @t3, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds double, ptr %14, i64 2
  %16 = load double, ptr %15, align 8
  store double %16, ptr @t4, align 8
  %17 = load double, ptr @t1, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds double, ptr %18, i64 -1
  store double %17, ptr %19, align 8
  %20 = load double, ptr @t2, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds double, ptr %21, i64 0
  store double %20, ptr %22, align 8
  %23 = load double, ptr @t3, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds double, ptr %24, i64 1
  store double %23, ptr %25, align 8
  %26 = load double, ptr @t4, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds double, ptr %27, i64 2
  store double %26, ptr %28, align 8
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
