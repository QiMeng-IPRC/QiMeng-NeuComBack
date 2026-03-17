; ModuleID = '../benchmarks/fine_grained/exebench/kernel560.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel560.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, double, double, double, double }

@bbox = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cover(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = load i32, ptr @bbox, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load double, ptr %3, align 8
  store double %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 2), align 8
  store double %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 1), align 8
  %9 = load double, ptr %4, align 8
  store double %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 4), align 8
  store double %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 3), align 8
  store i32 1, ptr @bbox, align 8
  br label %35

10:                                               ; preds = %2
  %11 = load double, ptr %3, align 8
  %12 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 1), align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load double, ptr %3, align 8
  store double %15, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 1), align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load double, ptr %4, align 8
  %18 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 3), align 8
  %19 = fcmp olt double %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load double, ptr %4, align 8
  store double %21, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 3), align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load double, ptr %3, align 8
  %24 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 2), align 8
  %25 = fcmp ogt double %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load double, ptr %3, align 8
  store double %27, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 2), align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load double, ptr %4, align 8
  %30 = load double, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 4), align 8
  %31 = fcmp ogt double %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load double, ptr %4, align 8
  store double %33, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @bbox, i32 0, i32 4), align 8
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34, %7
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
