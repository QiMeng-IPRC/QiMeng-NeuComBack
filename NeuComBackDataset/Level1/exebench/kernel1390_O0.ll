; ModuleID = '../benchmarks/fine_grained/exebench/kernel1390.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.planet = type { double, double, double, double, double, double, i32 }

@PLPOINTMASS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initializePlanets(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.planet, ptr %3, i64 0
  %5 = getelementptr inbounds %struct.planet, ptr %4, i32 0, i32 0
  store double 1.000000e+00, ptr %5, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.planet, ptr %6, i64 0
  %8 = getelementptr inbounds %struct.planet, ptr %7, i32 0, i32 1
  store double 0.000000e+00, ptr %8, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.planet, ptr %9, i64 0
  %11 = getelementptr inbounds %struct.planet, ptr %10, i32 0, i32 2
  store double 0.000000e+00, ptr %11, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.planet, ptr %12, i64 0
  %14 = getelementptr inbounds %struct.planet, ptr %13, i32 0, i32 3
  store double 0.000000e+00, ptr %14, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.planet, ptr %15, i64 0
  %17 = getelementptr inbounds %struct.planet, ptr %16, i32 0, i32 4
  store double 0.000000e+00, ptr %17, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.planet, ptr %18, i64 0
  %20 = getelementptr inbounds %struct.planet, ptr %19, i32 0, i32 5
  store double 0.000000e+00, ptr %20, align 8
  %21 = load i32, ptr @PLPOINTMASS, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.planet, ptr %22, i64 0
  %24 = getelementptr inbounds %struct.planet, ptr %23, i32 0, i32 6
  store i32 %21, ptr %24, align 8
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
