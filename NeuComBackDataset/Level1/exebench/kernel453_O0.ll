; ModuleID = '../benchmarks/fine_grained/exebench/kernel453.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel453.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, ptr }

@cpu_state = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @x87_pop() #0 {
  %1 = alloca double, align 8
  %2 = load ptr, ptr @cpu_state, align 8
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu_state, i32 0, i32 1), align 8
  %4 = and i32 %3, 7
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds double, ptr %2, i64 %5
  %7 = load double, ptr %6, align 8
  store double %7, ptr %1, align 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu_state, i32 0, i32 2), align 8
  %9 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu_state, i32 0, i32 1), align 8
  %10 = and i32 %9, 7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, ptr %8, i64 %11
  store i64 0, ptr %12, align 8
  %13 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu_state, i32 0, i32 1), align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu_state, i32 0, i32 1), align 8
  %15 = load double, ptr %1, align 8
  ret double %15
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
