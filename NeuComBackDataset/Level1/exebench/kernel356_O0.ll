; ModuleID = '../benchmarks/fine_grained/exebench/kernel356.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel356.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rgba = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgba_desaturate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.rgba, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rgba, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add nsw i32 %8, %11
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.rgba, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = sdiv i32 %16, 3
  %18 = sitofp i32 %17 to double
  store double %18, ptr %5, align 8
  %19 = load double, ptr %5, align 8
  %20 = fptosi double %19 to i32
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.rgba, ptr %21, i32 0, i32 0
  store i32 %20, ptr %22, align 4
  %23 = load double, ptr %5, align 8
  %24 = fptosi double %23 to i32
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.rgba, ptr %25, i32 0, i32 1
  store i32 %24, ptr %26, align 4
  %27 = load double, ptr %5, align 8
  %28 = fptosi double %27 to i32
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.rgba, ptr %29, i32 0, i32 2
  store i32 %28, ptr %30, align 4
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.rgba, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.rgba, ptr %34, i32 0, i32 3
  store i32 %33, ptr %35, align 4
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
