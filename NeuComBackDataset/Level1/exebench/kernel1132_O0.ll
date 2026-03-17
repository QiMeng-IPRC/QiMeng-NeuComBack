; ModuleID = '../benchmarks/fine_grained/exebench/kernel1132.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1132.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmli_context = type { i32, i32, double, double, i32, i32, i32, i64 }

@INT_MIN = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmli_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmli_context, ptr %3, i32 0, i32 7
  store i64 0, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.mmli_context, ptr %5, i32 0, i32 0
  store i32 4, ptr %6, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.mmli_context, ptr %7, i32 0, i32 1
  store i32 2, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.mmli_context, ptr %9, i32 0, i32 2
  store double 2.500000e-01, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.mmli_context, ptr %11, i32 0, i32 3
  store double 8.750000e-01, ptr %12, align 8
  %13 = load i32, ptr @INT_MIN, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.mmli_context, ptr %14, i32 0, i32 6
  store i32 %13, ptr %15, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.mmli_context, ptr %16, i32 0, i32 4
  store i32 1, ptr %17, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.mmli_context, ptr %18, i32 0, i32 5
  store i32 1, ptr %19, align 4
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
