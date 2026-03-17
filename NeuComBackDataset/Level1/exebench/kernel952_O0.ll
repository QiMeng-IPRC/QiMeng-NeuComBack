; ModuleID = '../benchmarks/fine_grained/exebench/kernel952.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel952.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, ptr, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { ptr }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { float }

@cgs = dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cg = dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PM_STAT_ZOOMTIME = dso_local global i64 0, align 8
@cg_zoomSens = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @CG_SetSensitivityScale(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, ptr %3, align 4
  store float 1.000000e+00, ptr %4, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.TYPE_10__, ptr @cgs, i32 0, i32 2), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = load float, ptr %3, align 4
  %9 = fcmp une float %8, 0.000000e+00
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @cg, i32 0, i32 1), align 8
  %12 = load i64, ptr @PM_STAT_ZOOMTIME, align 8
  %13 = getelementptr inbounds i64, ptr %11, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = load ptr, ptr @cg_zoomSens, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load ptr, ptr @cg_zoomSens, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 4
  %25 = sitofp i32 %24 to float
  %26 = load float, ptr %3, align 4
  %27 = fdiv float %25, %26
  store float %27, ptr %2, align 4
  br label %38

28:                                               ; preds = %16
  %29 = load float, ptr @cg, align 8
  %30 = load ptr, ptr getelementptr inbounds (%struct.TYPE_10__, ptr @cgs, i32 0, i32 1), align 8
  %31 = load i64, ptr @cgs, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, ptr %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, ptr %32, i32 0, i32 0
  %34 = load float, ptr %33, align 4
  %35 = fdiv float %29, %34
  store float %35, ptr %2, align 4
  br label %38

36:                                               ; preds = %10, %7, %1
  %37 = load float, ptr %4, align 4
  store float %37, ptr %2, align 4
  br label %38

38:                                               ; preds = %36, %28, %21
  %39 = load float, ptr %2, align 4
  ret float %39
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
