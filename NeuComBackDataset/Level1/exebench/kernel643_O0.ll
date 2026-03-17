; ModuleID = '../benchmarks/fine_grained/exebench/kernel643.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel643.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i32, i64 }

@m68ki_cpu = dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@m68ki_remaining_cycles = dso_local global i32 0, align 4
@m68ki_shift_32_table = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_asr_32_r() #0 {
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
  %10 = load ptr, ptr @m68ki_cpu, align 8
  %11 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %12 = ashr i32 %11, 9
  %13 = and i32 %12, 7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 63
  store i32 %17, ptr %2, align 4
  %18 = load ptr, ptr %1, align 8
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %3, align 4
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %2, align 4
  %22 = lshr i32 %20, %21
  store i32 %22, ptr %4, align 4
  %23 = load i32, ptr %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %0
  %26 = load i32, ptr %2, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  %28 = shl i32 %26, %27
  %29 = load i32, ptr @m68ki_remaining_cycles, align 4
  %30 = sub i32 %29, %28
  store i32 %30, ptr @m68ki_remaining_cycles, align 4
  %31 = load i32, ptr %2, align 4
  %32 = icmp ult i32 %31, 32
  br i1 %32, label %33, label %56

33:                                               ; preds = %25
  %34 = load i32, ptr %3, align 4
  %35 = and i32 %34, -2147483648
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load ptr, ptr @m68ki_shift_32_table, align 8
  %39 = load i32, ptr %2, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %38, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, ptr %4, align 4
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i32, ptr %4, align 4
  %47 = load ptr, ptr %1, align 8
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %3, align 4
  %49 = load i32, ptr %2, align 4
  %50 = sub i32 %49, 1
  %51 = lshr i32 %48, %50
  %52 = shl i32 %51, 8
  store i32 %52, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  store i32 %52, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  %53 = load i32, ptr %4, align 4
  %54 = lshr i32 %53, 24
  store i32 %54, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  %55 = load i32, ptr %4, align 4
  store i32 %55, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 7), align 8
  br label %68

56:                                               ; preds = %25
  %57 = load i32, ptr %3, align 4
  %58 = and i32 %57, -2147483648
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %1, align 8
  store i32 -1, ptr %61, align 4
  store i32 256, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  store i32 256, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  store i32 128, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  store i32 -1, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 7), align 8
  br label %68

62:                                               ; preds = %56
  %63 = load ptr, ptr %1, align 8
  store i32 0, ptr %63, align 4
  store i32 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  store i32 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  store i32 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 7), align 8
  br label %68

64:                                               ; preds = %0
  store i32 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  %65 = load i32, ptr %3, align 4
  %66 = lshr i32 %65, 24
  store i32 %66, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  %67 = load i32, ptr %3, align 4
  store i32 %67, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 7), align 8
  br label %68

68:                                               ; preds = %64, %62, %60, %45
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
