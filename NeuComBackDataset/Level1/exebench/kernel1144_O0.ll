; ModuleID = '../benchmarks/fine_grained/exebench/kernel1144.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1144.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@sysdata = dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_timers() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sysdata, i32 0, i32 1), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sysdata, i32 0, i32 2), align 4
  %3 = mul nsw i32 %1, %2
  store i32 %3, ptr @sysdata, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sysdata, i32 0, i32 2), align 4
  %5 = mul nsw i32 3, %4
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sysdata, i32 0, i32 3), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sysdata, i32 0, i32 2), align 4
  %7 = mul nsw i32 4, %6
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sysdata, i32 0, i32 4), align 4
  %8 = load i32, ptr @sysdata, align 4
  %9 = mul nsw i32 4, %8
  store i32 %9, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @sysdata, i32 0, i32 5), align 4
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
