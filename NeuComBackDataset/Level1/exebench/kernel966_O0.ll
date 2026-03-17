; ModuleID = '../benchmarks/fine_grained/exebench/kernel966.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel966.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.relax = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_duration(ptr noundef %0, float noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store ptr %0, ptr %3, align 8
  store float %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.relax, ptr %6, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.relax, ptr %9, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.relax, ptr %14, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.relax, ptr %17, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = sub nsw i64 %16, %19
  br label %29

21:                                               ; preds = %2
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.relax, ptr %22, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.relax, ptr %25, i32 0, i32 0
  %27 = load i64, ptr %26, align 8
  %28 = sub nsw i64 %24, %27
  br label %29

29:                                               ; preds = %21, %13
  %30 = phi i64 [ %20, %13 ], [ %28, %21 ]
  %31 = sitofp i64 %30 to float
  store float %31, ptr %5, align 4
  %32 = load float, ptr %4, align 4
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store float 0x3EE4F8B580000000, ptr %4, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load float, ptr %5, align 4
  %37 = fmul float 4.000000e+00, %36
  %38 = load float, ptr %4, align 4
  %39 = load float, ptr %4, align 4
  %40 = fmul float %38, %39
  %41 = fdiv float %37, %40
  %42 = fptosi float %41 to i32
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.relax, ptr %43, i32 0, i32 2
  store i32 %42, ptr %44, align 8
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.relax, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = sitofp i32 %47 to double
  %49 = fcmp olt double %48, 1.000000e+00
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.relax, ptr %51, i32 0, i32 2
  store i32 1, ptr %52, align 8
  br label %53

53:                                               ; preds = %50, %35
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
