; ModuleID = '../benchmarks/fine_grained/exebench/kernel1363.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1363.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@enabled = dso_local global i64 0, align 8
@pm25data = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getPM25Index(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 0, ptr %4, align 4
  %6 = load i64, ptr @enabled, align 8
  %7 = icmp eq i64 0, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %52

9:                                                ; preds = %1
  store i32 0, ptr %5, align 4
  %10 = load ptr, ptr @pm25data, align 8
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr @pm25data, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 2
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = load ptr, ptr @pm25data, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 3
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = load ptr, ptr @pm25data, align 8
  %22 = getelementptr inbounds i32, ptr %21, i64 4
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %20, %23
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %5, align 4
  %26 = load ptr, ptr @pm25data, align 8
  %27 = getelementptr inbounds i32, ptr %26, i64 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  store i32 0, ptr %2, align 4
  br label %52

31:                                               ; preds = %9
  %32 = load ptr, ptr @pm25data, align 8
  %33 = getelementptr inbounds i32, ptr %32, i64 1
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, ptr %4, align 4
  %37 = load i32, ptr %4, align 4
  %38 = shl i32 %37, 8
  store i32 %38, ptr %4, align 4
  %39 = load ptr, ptr @pm25data, align 8
  %40 = getelementptr inbounds i32, ptr %39, i64 2
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, ptr %4, align 4
  %44 = load i32, ptr %4, align 4
  %45 = sitofp i32 %44 to double
  %46 = fmul double %45, 1.000000e+00
  %47 = fmul double %46, 8.000000e+02
  %48 = fdiv double %47, 1.024000e+03
  %49 = fmul double %48, 5.000000e+00
  %50 = fptrunc double %49 to float
  %51 = load ptr, ptr %3, align 8
  store float %50, ptr %51, align 4
  store i64 0, ptr @enabled, align 8
  store i32 1, ptr %2, align 4
  br label %52

52:                                               ; preds = %31, %30, %8
  %53 = load i32, ptr %2, align 4
  ret i32 %53
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
