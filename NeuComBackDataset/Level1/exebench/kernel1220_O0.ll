; ModuleID = '../benchmarks/fine_grained/exebench/kernel1220.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1220.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_struct = type { i32, double, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randominit(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.rand_struct, ptr %7, i32 0, i32 0
  store i32 1073741823, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rand_struct, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = sitofp i32 %11 to double
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.rand_struct, ptr %13, i32 0, i32 1
  store double %12, ptr %14, align 8
  %15 = load i64, ptr %5, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.rand_struct, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  %19 = sext i32 %18 to i64
  %20 = urem i64 %15, %19
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.rand_struct, ptr %21, i32 0, i32 2
  store i64 %20, ptr %22, align 8
  %23 = load i64, ptr %6, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.rand_struct, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8
  %27 = sext i32 %26 to i64
  %28 = urem i64 %23, %27
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.rand_struct, ptr %29, i32 0, i32 3
  store i64 %28, ptr %30, align 8
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
