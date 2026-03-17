; ModuleID = '../benchmarks/fine_grained/exebench/kernel825.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel825.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dataInit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store i32 %3, ptr %11, align 4
  store i32 %4, ptr %12, align 4
  store i32 %5, ptr %13, align 4
  store i32 %6, ptr %14, align 4
  %15 = load i32, ptr %9, align 4
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 0
  store i32 %15, ptr %17, align 4
  %18 = load i32, ptr %10, align 4
  %19 = load ptr, ptr %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 1
  store i32 %18, ptr %20, align 4
  %21 = load i32, ptr %11, align 4
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %22, i32 0, i32 2
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr %12, align 4
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %25, i32 0, i32 3
  store i32 %24, ptr %26, align 4
  %27 = load i32, ptr %13, align 4
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 4
  store i32 %27, ptr %29, align 4
  %30 = load i32, ptr %14, align 4
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, ptr %31, i32 0, i32 5
  store i32 %30, ptr %32, align 4
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
