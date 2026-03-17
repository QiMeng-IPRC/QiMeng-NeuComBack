; ModuleID = '../benchmarks/fine_grained/exebench/kernel1085.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1085.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, double }

@libgpio_pwm = dso_local global ptr null, align 8
@libgpio_pwm_mem = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwmSetDuty(i32 noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, ptr %3, align 4
  store double %1, ptr %4, align 8
  %5 = load double, ptr %4, align 8
  %6 = fdiv double %5, 1.000000e+02
  %7 = load ptr, ptr @libgpio_pwm, align 8
  %8 = load i32, ptr %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i32 0, i32 1
  %12 = load double, ptr %11, align 8
  %13 = fmul double %6, %12
  %14 = fptosi double %13 to i32
  %15 = load ptr, ptr @libgpio_pwm_mem, align 8
  %16 = load ptr, ptr @libgpio_pwm, align 8
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, ptr %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %15, i64 %22
  store i32 %14, ptr %23, align 4
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
