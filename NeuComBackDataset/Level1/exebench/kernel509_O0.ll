; ModuleID = '../benchmarks/fine_grained/exebench/kernel509.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@LINES = dso_local global i32 0, align 4
@COLS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_win_params(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 0
  store i32 3, ptr %4, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 1
  store i32 10, ptr %6, align 4
  %7 = load i32, ptr @LINES, align 4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = sub nsw i32 %7, %10
  %12 = sdiv i32 %11, 2
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, ptr %13, i32 0, i32 2
  store i32 %12, ptr %14, align 4
  %15 = load i32, ptr @COLS, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = sdiv i32 %19, 2
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 3
  store i32 %20, ptr %22, align 4
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, ptr %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, ptr %24, i32 0, i32 0
  store i8 124, ptr %25, align 4
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, ptr %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, ptr %27, i32 0, i32 1
  store i8 124, ptr %28, align 1
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, ptr %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, ptr %30, i32 0, i32 2
  store i8 45, ptr %31, align 2
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, ptr %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, ptr %33, i32 0, i32 3
  store i8 45, ptr %34, align 1
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, ptr %36, i32 0, i32 4
  store i8 43, ptr %37, align 4
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, ptr %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, ptr %39, i32 0, i32 5
  store i8 43, ptr %40, align 1
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, ptr %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, ptr %42, i32 0, i32 6
  store i8 43, ptr %43, align 2
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, ptr %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_4__, ptr %45, i32 0, i32 7
  store i8 43, ptr %46, align 1
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
