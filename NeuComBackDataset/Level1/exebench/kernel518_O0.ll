; ModuleID = '../benchmarks/fine_grained/exebench/kernel518.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel518.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double, double, double, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@STATE_Tieline_reset = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Tieline_preinit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, ptr %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.TYPE_8__, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_7__, ptr %5, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, ptr %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_8__, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, ptr %9, i32 0, i32 0
  store i64 0, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, ptr %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_9__, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, ptr %13, i32 0, i32 0
  store i64 0, ptr %14, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, ptr %15, i32 0, i32 0
  store double 1.000000e-01, ptr %16, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, ptr %17, i32 0, i32 1
  store double 0x3FB219652BD3C361, ptr %18, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, ptr %19, i32 0, i32 2
  store double 3.141590e+00, ptr %20, align 8
  %21 = load i32, ptr @STATE_Tieline_reset, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, ptr %22, i32 0, i32 4
  store i32 %21, ptr %23, align 4
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, ptr %24, i32 0, i32 3
  store i32 1, ptr %25, align 8
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
