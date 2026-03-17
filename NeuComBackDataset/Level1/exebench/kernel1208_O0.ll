; ModuleID = '../benchmarks/fine_grained/exebench/kernel1208.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1208.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ar8316_hw_setup = dso_local global i32 0, align 4
@ar8316_hw_global_setup = dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOUBLE_TAG = dso_local global i32 0, align 4
@AR8X16_MAX_VLANS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8316_attach(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @ar8316_hw_setup, align 4
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.arswitch_softc, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 1
  store i32 %3, ptr %6, align 4
  %7 = load i32, ptr @ar8316_hw_global_setup, align 4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.arswitch_softc, ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %9, i32 0, i32 0
  store i32 %7, ptr %10, align 4
  %11 = load i32, ptr @ETHERSWITCH_VLAN_DOT1Q, align 4
  %12 = load i32, ptr @ETHERSWITCH_VLAN_PORT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, ptr @ETHERSWITCH_VLAN_DOUBLE_TAG, align 4
  %15 = or i32 %13, %14
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.arswitch_softc, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 0
  store i32 %15, ptr %18, align 4
  %19 = load i32, ptr @AR8X16_MAX_VLANS, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.arswitch_softc, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i32 0, i32 1
  store i32 %19, ptr %22, align 4
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
