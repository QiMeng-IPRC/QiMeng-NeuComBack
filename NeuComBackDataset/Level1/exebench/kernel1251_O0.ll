; ModuleID = '../benchmarks/fine_grained/exebench/kernel1251.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1251.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restoreTreeDataValuesFromCheckpoint(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %7, i32 0, i32 8
  store i32 %6, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, ptr %13, i32 0, i32 7
  store i32 %12, ptr %14, align 4
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, ptr %19, i32 0, i32 6
  store i32 %18, ptr %20, align 4
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %25, i32 0, i32 5
  store i32 %24, ptr %26, align 4
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, ptr %31, i32 0, i32 4
  store i32 %30, ptr %32, align 4
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, ptr %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, ptr %37, i32 0, i32 3
  store i32 %36, ptr %38, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, ptr %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, ptr %43, i32 0, i32 2
  store i32 %42, ptr %44, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, ptr %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, ptr %49, i32 0, i32 1
  store i32 %48, ptr %50, align 4
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
