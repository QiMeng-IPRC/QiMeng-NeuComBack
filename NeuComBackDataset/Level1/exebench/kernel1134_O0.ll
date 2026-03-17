; ModuleID = '../benchmarks/fine_grained/exebench/kernel1134.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1134.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fftwf_an_INT_guaranteed_to_be_zero = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r2cfII_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #0 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store ptr %0, ptr %11, align 8
  store ptr %1, ptr %12, align 8
  store ptr %2, ptr %13, align 8
  store ptr %3, ptr %14, align 8
  store i64 %4, ptr %15, align 8
  store i64 %5, ptr %16, align 8
  store i64 %6, ptr %17, align 8
  store i64 %7, ptr %18, align 8
  store i64 %8, ptr %19, align 8
  store i64 %9, ptr %20, align 8
  %24 = load i64, ptr %18, align 8
  store i64 %24, ptr %21, align 8
  br label %25

25:                                               ; preds = %42, %10
  %26 = load i64, ptr %21, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load ptr, ptr %11, align 8
  %30 = getelementptr inbounds float, ptr %29, i64 0
  %31 = load float, ptr %30, align 4
  store float %31, ptr %22, align 4
  %32 = load ptr, ptr %12, align 8
  %33 = getelementptr inbounds float, ptr %32, i64 0
  %34 = load float, ptr %33, align 4
  store float %34, ptr %23, align 4
  %35 = load float, ptr %22, align 4
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr inbounds float, ptr %36, i64 0
  store float %35, ptr %37, align 4
  %38 = load float, ptr %23, align 4
  %39 = fneg float %38
  %40 = load ptr, ptr %14, align 8
  %41 = getelementptr inbounds float, ptr %40, i64 0
  store float %39, ptr %41, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i64, ptr %21, align 8
  %44 = sub nsw i64 %43, 1
  store i64 %44, ptr %21, align 8
  %45 = load ptr, ptr %11, align 8
  %46 = load i64, ptr %19, align 8
  %47 = getelementptr inbounds float, ptr %45, i64 %46
  store ptr %47, ptr %11, align 8
  %48 = load ptr, ptr %12, align 8
  %49 = load i64, ptr %19, align 8
  %50 = getelementptr inbounds float, ptr %48, i64 %49
  store ptr %50, ptr %12, align 8
  %51 = load ptr, ptr %13, align 8
  %52 = load i64, ptr %20, align 8
  %53 = getelementptr inbounds float, ptr %51, i64 %52
  store ptr %53, ptr %13, align 8
  %54 = load ptr, ptr %14, align 8
  %55 = load i64, ptr %20, align 8
  %56 = getelementptr inbounds float, ptr %54, i64 %55
  store ptr %56, ptr %14, align 8
  %57 = load i64, ptr %15, align 8
  %58 = load i64, ptr @fftwf_an_INT_guaranteed_to_be_zero, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, ptr %15, align 8
  %60 = load i64, ptr %16, align 8
  %61 = load i64, ptr @fftwf_an_INT_guaranteed_to_be_zero, align 8
  %62 = add nsw i64 %60, %61
  store i64 %62, ptr %16, align 8
  %63 = load i64, ptr %17, align 8
  %64 = load i64, ptr @fftwf_an_INT_guaranteed_to_be_zero, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, ptr %17, align 8
  br label %25, !llvm.loop !6

66:                                               ; preds = %25
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
