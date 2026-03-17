; ModuleID = '../benchmarks/fine_grained/exebench/kernel1351.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1351.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rssi2 = dso_local global i64 0, align 8
@maxDeepRssi = dso_local global i64 0, align 8
@now = dso_local global i32 0, align 4
@maxDeepRssiDetectionTime = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @findMaxDeepRssi() #0 {
  %1 = load i64, ptr @rssi2, align 8
  %2 = load i64, ptr @maxDeepRssi, align 8
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, ptr @rssi2, align 8
  store i64 %5, ptr @maxDeepRssi, align 8
  %6 = load i32, ptr @now, align 4
  store i32 %6, ptr @maxDeepRssiDetectionTime, align 4
  br label %7

7:                                                ; preds = %4, %0
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
