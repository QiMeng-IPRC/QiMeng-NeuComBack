; ModuleID = '../benchmarks/fine_grained/exebench/kernel483.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel483.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i32 }

@m68ki_cpu = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_add_8_er_d() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @m68ki_cpu, align 8
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %7 = ashr i32 %6, 9
  %8 = and i32 %7, 7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %5, i64 %9
  store ptr %10, ptr %1, align 8
  %11 = load ptr, ptr @m68ki_cpu, align 8
  %12 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %13 = and i32 %12, 7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 255
  store i32 %17, ptr %2, align 4
  %18 = load ptr, ptr %1, align 8
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 255
  store i32 %20, ptr %3, align 4
  %21 = load i32, ptr %2, align 4
  %22 = load i32, ptr %3, align 4
  %23 = add i32 %21, %22
  store i32 %23, ptr %4, align 4
  %24 = load i32, ptr %4, align 4
  store i32 %24, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  %25 = load i32, ptr %2, align 4
  %26 = load i32, ptr %4, align 4
  %27 = xor i32 %25, %26
  %28 = load i32, ptr %3, align 4
  %29 = load i32, ptr %4, align 4
  %30 = xor i32 %28, %29
  %31 = and i32 %27, %30
  store i32 %31, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  %32 = load i32, ptr %4, align 4
  store i32 %32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  store i32 %32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  %33 = load i32, ptr %4, align 4
  %34 = and i32 %33, 255
  store i32 %34, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  %35 = load ptr, ptr %1, align 8
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -256
  %38 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  %39 = or i32 %37, %38
  %40 = load ptr, ptr %1, align 8
  store i32 %39, ptr %40, align 4
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
