; ModuleID = '../benchmarks/fine_grained/exebench/kernel802.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel802.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double }

@df = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @find_df(ptr noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load double, ptr @df, align 8
  %5 = fcmp oeq double %4, 0.000000e+00
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @df, i32 0, i32 1), align 8
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store double 0.000000e+00, ptr %2, align 8
  br label %24

10:                                               ; preds = %6
  %11 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @df, i32 0, i32 1), align 8
  %12 = fneg double %11
  store double %12, ptr %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @df, i32 0, i32 1), align 8
  %15 = fcmp oeq double %14, 0.000000e+00
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load double, ptr @df, align 8
  store double %17, ptr %2, align 8
  br label %24

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 8
  store i32 1, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  store double 0.000000e+00, ptr %2, align 8
  br label %24

24:                                               ; preds = %23, %16, %10, %9
  %25 = load double, ptr %2, align 8
  ret double %25
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
