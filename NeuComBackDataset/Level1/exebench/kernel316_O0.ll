; ModuleID = '../benchmarks/fine_grained/exebench/kernel316.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel316.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmd_part = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.driver_pmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmd_part_loop_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pmd_part, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.driver_pmd, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %8
  store i32 %13, ptr %11, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.pmd_part, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.driver_pmd, ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %17
  store i32 %22, ptr %20, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.pmd_part, ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.driver_pmd, ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %26
  store i32 %31, ptr %29, align 4
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
