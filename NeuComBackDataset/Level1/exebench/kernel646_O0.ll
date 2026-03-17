; ModuleID = '../benchmarks/fine_grained/exebench/kernel646.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel646.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32 }

@m68ki_cpu = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_subq_32_a() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @m68ki_cpu, align 8
  %3 = getelementptr inbounds i32, ptr %2, i64 8
  %4 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %5 = and i32 %4, 7
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  store ptr %7, ptr %1, align 8
  %8 = load ptr, ptr %1, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @m68ki_cpu, i32 0, i32 1), align 8
  %11 = ashr i32 %10, 9
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %12, 7
  %14 = add nsw i32 %13, 1
  %15 = sub i32 %9, %14
  %16 = load ptr, ptr %1, align 8
  store i32 %15, ptr %16, align 4
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
