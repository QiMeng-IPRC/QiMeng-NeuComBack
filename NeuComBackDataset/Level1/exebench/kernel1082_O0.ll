; ModuleID = '../benchmarks/fine_grained/exebench/kernel1082.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1082.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Lambert_a = dso_local global double 0.000000e+00, align 8
@Lambert_f = dso_local global double 0.000000e+00, align 8
@Lambert_Std_Parallel_1 = dso_local global double 0.000000e+00, align 8
@Lambert_Std_Parallel_2 = dso_local global double 0.000000e+00, align 8
@Lambert_Origin_Lat = dso_local global double 0.000000e+00, align 8
@Lambert_Origin_Long = dso_local global double 0.000000e+00, align 8
@Lambert_False_Easting = dso_local global double 0.000000e+00, align 8
@Lambert_False_Northing = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Get_Lambert_2_Parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  store ptr %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store ptr %3, ptr %12, align 8
  store ptr %4, ptr %13, align 8
  store ptr %5, ptr %14, align 8
  store ptr %6, ptr %15, align 8
  store ptr %7, ptr %16, align 8
  %17 = load double, ptr @Lambert_a, align 8
  %18 = load ptr, ptr %9, align 8
  store double %17, ptr %18, align 8
  %19 = load double, ptr @Lambert_f, align 8
  %20 = load ptr, ptr %10, align 8
  store double %19, ptr %20, align 8
  %21 = load double, ptr @Lambert_Std_Parallel_1, align 8
  %22 = load ptr, ptr %13, align 8
  store double %21, ptr %22, align 8
  %23 = load double, ptr @Lambert_Std_Parallel_2, align 8
  %24 = load ptr, ptr %14, align 8
  store double %23, ptr %24, align 8
  %25 = load double, ptr @Lambert_Origin_Lat, align 8
  %26 = load ptr, ptr %11, align 8
  store double %25, ptr %26, align 8
  %27 = load double, ptr @Lambert_Origin_Long, align 8
  %28 = load ptr, ptr %12, align 8
  store double %27, ptr %28, align 8
  %29 = load double, ptr @Lambert_False_Easting, align 8
  %30 = load ptr, ptr %15, align 8
  store double %29, ptr %30, align 8
  %31 = load double, ptr @Lambert_False_Northing, align 8
  %32 = load ptr, ptr %16, align 8
  store double %31, ptr %32, align 8
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
