; ModuleID = '../benchmarks/fine_grained/exebench/kernel770.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel770.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, float, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @JBKFPSCounter_Update(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, ptr %6, align 8
  %9 = load double, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %10, i32 0, i32 0
  %12 = load double, ptr %11, align 8
  %13 = fadd double %12, %9
  store double %13, ptr %11, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 0
  %16 = load double, ptr %15, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 1
  %19 = load double, ptr %18, align 8
  %20 = fcmp oge double %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %22, i32 0, i32 3
  %24 = load i64, ptr %23, align 8
  %25 = sitofp i64 %24 to double
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %26, i32 0, i32 0
  %28 = load double, ptr %27, align 8
  %29 = fdiv double %25, %28
  %30 = fptrunc double %29 to float
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, ptr %31, i32 0, i32 2
  store float %30, ptr %32, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, ptr %33, i32 0, i32 3
  store i64 0, ptr %34, align 8
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, ptr %35, i32 0, i32 0
  store double 0.000000e+00, ptr %36, align 8
  br label %37

37:                                               ; preds = %21, %2
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
