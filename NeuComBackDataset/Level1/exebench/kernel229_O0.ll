; ModuleID = '../benchmarks/fine_grained/exebench/kernel229.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel229.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, float, float, i32, float, i32, float, float, i32, float, float, float, float, i32 }

@MAXLASERRANGE = dso_local global float 0.000000e+00, align 4
@params = dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Init_MbICP_ScanMatching(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, float noundef %5, float noundef %6, i32 noundef %7, float noundef %8, i32 noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13, i32 noundef %14) #0 {
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  store float %0, ptr %16, align 4
  store float %1, ptr %17, align 4
  store float %2, ptr %18, align 4
  store float %3, ptr %19, align 4
  store i32 %4, ptr %20, align 4
  store float %5, ptr %21, align 4
  store float %6, ptr %22, align 4
  store i32 %7, ptr %23, align 4
  store float %8, ptr %24, align 4
  store i32 %9, ptr %25, align 4
  store float %10, ptr %26, align 4
  store float %11, ptr %27, align 4
  store float %12, ptr %28, align 4
  store float %13, ptr %29, align 4
  store i32 %14, ptr %30, align 4
  %31 = load float, ptr %16, align 4
  store float %31, ptr @MAXLASERRANGE, align 4
  %32 = load float, ptr %17, align 4
  store float %32, ptr @params, align 4
  %33 = load float, ptr %18, align 4
  %34 = load float, ptr %18, align 4
  %35 = fmul float %33, %34
  store float %35, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 1), align 4
  %36 = load float, ptr %26, align 4
  store float %36, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 2), align 4
  %37 = load i32, ptr %25, align 4
  store i32 %37, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 3), align 4
  %38 = load float, ptr %19, align 4
  store float %38, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 4), align 4
  %39 = load i32, ptr %20, align 4
  store i32 %39, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 5), align 4
  %40 = load float, ptr %21, align 4
  store float %40, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 6), align 4
  %41 = load float, ptr %22, align 4
  store float %41, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 7), align 4
  %42 = load i32, ptr %23, align 4
  store i32 %42, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 8), align 4
  %43 = load float, ptr %24, align 4
  store float %43, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 9), align 4
  %44 = load float, ptr %27, align 4
  store float %44, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 10), align 4
  %45 = load float, ptr %28, align 4
  store float %45, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 11), align 4
  %46 = load float, ptr %29, align 4
  store float %46, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 12), align 4
  %47 = load i32, ptr %30, align 4
  store i32 %47, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @params, i32 0, i32 13), align 4
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
