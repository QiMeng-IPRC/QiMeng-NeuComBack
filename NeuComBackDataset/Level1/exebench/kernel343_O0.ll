; ModuleID = '../benchmarks/fine_grained/exebench/kernel343.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel343.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcs_1q_not_gate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, ptr %10, i32 0, i32 1
  store i32 %8, ptr %11, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, ptr %17, i32 0, i32 0
  store i32 %15, ptr %18, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, ptr %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, ptr %24, i32 0, i32 1
  store i32 %22, ptr %25, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, ptr %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, ptr %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, ptr %31, i32 0, i32 0
  store i32 %29, ptr %32, align 4
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
