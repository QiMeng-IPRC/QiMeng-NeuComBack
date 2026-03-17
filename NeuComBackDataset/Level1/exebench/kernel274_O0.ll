; ModuleID = '../benchmarks/fine_grained/exebench/kernel274.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel274.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mapOutput(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds float, ptr %10, i64 0
  %12 = load float, ptr %11, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi float [ %12, %9 ], [ 0.000000e+00, %13 ]
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 0
  store float %15, ptr %17, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds float, ptr %21, i64 1
  %23 = load float, ptr %22, align 4
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi float [ %23, %20 ], [ 0.000000e+00, %24 ]
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, ptr %27, i32 0, i32 1
  store float %26, ptr %28, align 4
  %29 = load i32, ptr %6, align 4
  %30 = icmp sge i32 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds float, ptr %32, i64 2
  %34 = load float, ptr %33, align 4
  br label %36

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi float [ %34, %31 ], [ 0.000000e+00, %35 ]
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, ptr %38, i32 0, i32 2
  store float %37, ptr %39, align 4
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
