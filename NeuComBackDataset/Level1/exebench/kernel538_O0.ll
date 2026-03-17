; ModuleID = '../benchmarks/fine_grained/exebench/kernel538.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel538.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i32 }

@m68ki_cpu = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_addq_32_d() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @m68ki_cpu, align 8
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %7 = and i32 %6, 7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store ptr %9, ptr %1, align 8
  %10 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %11 = ashr i32 %10, 9
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %12, 7
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %2, align 4
  %15 = load ptr, ptr %1, align 8
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  %17 = load i32, ptr %2, align 4
  %18 = load i32, ptr %3, align 4
  %19 = add i32 %17, %18
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %4, align 4
  %21 = lshr i32 %20, 24
  store i32 %21, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  %22 = load i32, ptr %2, align 4
  %23 = load i32, ptr %4, align 4
  %24 = xor i32 %22, %23
  %25 = load i32, ptr %3, align 4
  %26 = load i32, ptr %4, align 4
  %27 = xor i32 %25, %26
  %28 = and i32 %24, %27
  %29 = lshr i32 %28, 24
  store i32 %29, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  %30 = load i32, ptr %2, align 4
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %30, %31
  %33 = load i32, ptr %4, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, ptr %2, align 4
  %36 = load i32, ptr %3, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = or i32 %32, %38
  %40 = lshr i32 %39, 23
  store i32 %40, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  store i32 %40, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  %41 = load i32, ptr %4, align 4
  store i32 %41, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  %42 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  %43 = load ptr, ptr %1, align 8
  store i32 %42, ptr %43, align 4
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
