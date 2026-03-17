; ModuleID = '../benchmarks/fine_grained/exebench/kernel1119.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1119.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@snb_msr_uncores = dso_local global i32 0, align 4
@uncore_msr_uncores = dso_local global i32 0, align 4
@snb_uncore_cbox = dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@boot_cpu_data = dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snb_uncore_cpu_init() #0 {
  %1 = load i32, ptr @snb_msr_uncores, align 4
  store i32 %1, ptr @uncore_msr_uncores, align 4
  %2 = load i64, ptr @snb_uncore_cbox, align 8
  %3 = load i64, ptr @boot_cpu_data, align 8
  %4 = icmp sgt i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i64, ptr @boot_cpu_data, align 8
  store i64 %6, ptr @snb_uncore_cbox, align 8
  br label %7

7:                                                ; preds = %5, %0
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
