; ModuleID = '../benchmarks/fine_grained/exebench/kernel827.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel827.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i64 }

@m68ki_cpu = dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@m68ki_remaining_cycles = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_ror_8_r() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @m68ki_cpu, align 8
  %7 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %8 = and i32 %7, 7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  store ptr %10, ptr %1, align 8
  %11 = load ptr, ptr @m68ki_cpu, align 8
  %12 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %13 = ashr i32 %12, 9
  %14 = and i32 %13, 7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 63
  store i32 %18, ptr %2, align 4
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, 7
  store i32 %20, ptr %3, align 4
  %21 = load ptr, ptr %1, align 8
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 255
  store i32 %23, ptr %4, align 4
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %3, align 4
  %26 = lshr i32 %24, %25
  %27 = load i32, ptr %4, align 4
  %28 = load i32, ptr %3, align 4
  %29 = sub i32 8, %28
  %30 = shl i32 %27, %29
  %31 = or i32 %26, %30
  %32 = and i32 %31, 255
  store i32 %32, ptr %5, align 4
  %33 = load i32, ptr %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %0
  %36 = load i32, ptr %2, align 4
  %37 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  %38 = shl i32 %36, %37
  %39 = load i32, ptr @m68ki_remaining_cycles, align 4
  %40 = sub i32 %39, %38
  store i32 %40, ptr @m68ki_remaining_cycles, align 4
  %41 = load ptr, ptr %1, align 8
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, -256
  %44 = load i32, ptr %5, align 4
  %45 = or i32 %43, %44
  %46 = load ptr, ptr %1, align 8
  store i32 %45, ptr %46, align 4
  %47 = load i32, ptr %4, align 4
  %48 = load i32, ptr %3, align 4
  %49 = sub i32 %48, 1
  %50 = and i32 %49, 7
  %51 = sub i32 8, %50
  %52 = shl i32 %47, %51
  store i32 %52, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  %53 = load i32, ptr %5, align 4
  store i32 %53, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  %54 = load i32, ptr %5, align 4
  store i32 %54, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 8
  br label %58

55:                                               ; preds = %0
  store i32 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  %56 = load i32, ptr %4, align 4
  store i32 %56, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  %57 = load i32, ptr %4, align 4
  store i32 %57, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 8
  br label %58

58:                                               ; preds = %55, %35
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
