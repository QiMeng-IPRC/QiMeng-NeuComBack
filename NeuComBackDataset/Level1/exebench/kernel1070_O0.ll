; ModuleID = '../benchmarks/fine_grained/exebench/kernel1070.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1070.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32, i32, i32, i32, i64 }

@m68ki_cpu = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_roxl_32_s() #0 {
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
  %11 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %12 = ashr i32 %11, 9
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %13, 7
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %2, align 4
  %16 = load ptr, ptr %1, align 8
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %3, align 4
  %18 = load i32, ptr %2, align 4
  %19 = icmp ult i32 %18, 32
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %2, align 4
  %23 = shl i32 %21, %22
  br label %25

24:                                               ; preds = %0
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  %27 = load i32, ptr %2, align 4
  %28 = sub i32 33, %27
  %29 = icmp ult i32 %28, 32
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, ptr %3, align 4
  %32 = load i32, ptr %2, align 4
  %33 = sub i32 33, %32
  %34 = lshr i32 %31, %33
  br label %36

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i32 [ %34, %30 ], [ 0, %35 ]
  %38 = or i32 %26, %37
  %39 = load i32, ptr %2, align 4
  %40 = sub i32 %39, 1
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 1
  %47 = load i32, ptr %2, align 4
  %48 = sub i32 %47, 1
  %49 = shl i32 %46, %48
  %50 = or i32 %43, %49
  store i32 %50, ptr %4, align 4
  %51 = load i32, ptr %3, align 4
  %52 = load i32, ptr %2, align 4
  %53 = sub i32 32, %52
  %54 = shl i32 1, %53
  %55 = and i32 %51, %54
  store i32 %55, ptr %5, align 4
  %56 = load i32, ptr %4, align 4
  %57 = load ptr, ptr %1, align 8
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %5, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = shl i32 %60, 8
  store i32 %61, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 2), align 4
  store i32 %61, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 3), align 8
  %62 = load i32, ptr %4, align 4
  %63 = lshr i32 %62, 24
  store i32 %63, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 4), align 4
  %64 = load i32, ptr %4, align 4
  store i32 %64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 6), align 8
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
