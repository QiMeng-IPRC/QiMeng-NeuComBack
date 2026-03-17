; ModuleID = '../benchmarks/fine_grained/exebench/kernel1169.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_array_grow_exp(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, ptr %3, align 4
  br label %19

9:                                                ; preds = %2
  %10 = load double, ptr %5, align 8
  %11 = fcmp ole double %10, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 3, ptr %3, align 4
  br label %19

13:                                               ; preds = %9
  %14 = load double, ptr %5, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 0
  store double %14, ptr %16, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 1
  store i64 0, ptr %18, align 8
  store i32 0, ptr %3, align 4
  br label %19

19:                                               ; preds = %13, %12, %8
  %20 = load i32, ptr %3, align 4
  ret i32 %20
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
