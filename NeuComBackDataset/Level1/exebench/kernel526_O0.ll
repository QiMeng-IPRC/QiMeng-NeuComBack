; ModuleID = '../benchmarks/fine_grained/exebench/kernel526.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel526.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_t = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @vector_resize(ptr noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vector_t, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.vector_t, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.vector_t, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = mul nsw i32 %14, 2
  store i32 %15, ptr %13, align 4
  store float 2.000000e+00, ptr %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.vector_t, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.vector_t, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %22, 2
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.vector_t, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, ptr %27, align 4
  store float 5.000000e-01, ptr %2, align 4
  br label %32

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  store float 1.000000e+00, ptr %2, align 4
  br label %32

32:                                               ; preds = %31, %25, %11
  %33 = load float, ptr %2, align 4
  ret float %33
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
