; ModuleID = '../benchmarks/fine_grained/exebench/kernel1143.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1143.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@NETIF_F_HW_CSUM = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethtool_op_set_tx_hw_csum(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, ptr @NETIF_F_HW_CSUM, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, ptr %10, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, ptr @NETIF_F_HW_CSUM, align 4
  %15 = xor i32 %14, -1
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %13, %7
  ret i32 0
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
