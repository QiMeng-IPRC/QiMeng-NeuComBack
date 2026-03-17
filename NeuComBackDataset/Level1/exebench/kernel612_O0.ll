; ModuleID = '../benchmarks/fine_grained/exebench/kernel612.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel612.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, ptr, ptr }

@_sasl_mutex_utils = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sasl_set_mutex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @_sasl_mutex_utils, i32 0, i32 3), align 8
  %10 = load ptr, ptr %6, align 8
  store ptr %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @_sasl_mutex_utils, i32 0, i32 2), align 8
  %11 = load ptr, ptr %7, align 8
  store ptr %11, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @_sasl_mutex_utils, i32 0, i32 1), align 8
  %12 = load ptr, ptr %8, align 8
  store ptr %12, ptr @_sasl_mutex_utils, align 8
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
