; ModuleID = '../benchmarks/fine_grained/exebench/kernel1114.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1114.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_13__ = type { %struct.TYPE_23__, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_two_basic_syncInputEvents(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_14__, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_18__, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_17__, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_16__, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, ptr %11, i32 0, i32 0
  store i32 %7, ptr %12, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_23__, ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_22__, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, ptr %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_21__, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_20__, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_19__, ptr %22, i32 0, i32 0
  store i32 %18, ptr %23, align 4
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
