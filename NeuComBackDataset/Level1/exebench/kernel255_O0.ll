; ModuleID = '../benchmarks/fine_grained/exebench/kernel255.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel255.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i32, i64 }

@m68ki_cpu = dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@m68ki_remaining_cycles = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_roxr_16_r() #0 {
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
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %0
  %22 = load i32, ptr %2, align 4
  %23 = urem i32 %22, 17
  store i32 %23, ptr %3, align 4
  %24 = load ptr, ptr %1, align 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 65535
  store i32 %26, ptr %4, align 4
  %27 = load i32, ptr %4, align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 1
  %31 = shl i32 %30, 16
  %32 = or i32 %27, %31
  %33 = load i32, ptr %3, align 4
  %34 = lshr i32 %32, %33
  %35 = load i32, ptr %4, align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 1
  %39 = shl i32 %38, 16
  %40 = or i32 %35, %39
  %41 = load i32, ptr %3, align 4
  %42 = sub i32 17, %41
  %43 = shl i32 %40, %42
  %44 = or i32 %34, %43
  store i32 %44, ptr %5, align 4
  %45 = load i32, ptr %2, align 4
  %46 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  %47 = shl i32 %45, %46
  %48 = load i32, ptr @m68ki_remaining_cycles, align 4
  %49 = sub i32 %48, %47
  store i32 %49, ptr @m68ki_remaining_cycles, align 4
  %50 = load i32, ptr %5, align 4
  %51 = lshr i32 %50, 8
  store i32 %51, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  store i32 %51, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  %52 = load i32, ptr %5, align 4
  %53 = and i32 %52, 65535
  store i32 %53, ptr %5, align 4
  %54 = load ptr, ptr %1, align 8
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, -65536
  %57 = load i32, ptr %5, align 4
  %58 = or i32 %56, %57
  %59 = load ptr, ptr %1, align 8
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %5, align 4
  %61 = lshr i32 %60, 8
  store i32 %61, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  %62 = load i32, ptr %5, align 4
  store i32 %62, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 7), align 8
  br label %71

63:                                               ; preds = %0
  %64 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  store i32 %64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  %65 = load ptr, ptr %1, align 8
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 8
  store i32 %67, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  %68 = load ptr, ptr %1, align 8
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 65535
  store i32 %70, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 7), align 8
  br label %71

71:                                               ; preds = %63, %21
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
