; ModuleID = '../benchmarks/fine_grained/exebench/kernel726.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel726.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_fcolor_24(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 0
  store float 1.000000e+00, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds float, ptr %7, i64 0
  %9 = load float, ptr %8, align 4
  %10 = fdiv float %9, 2.550000e+02
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i32 0, i32 1
  store float %10, ptr %12, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds float, ptr %13, i64 1
  %15 = load float, ptr %14, align 4
  %16 = fdiv float %15, 2.550000e+02
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 2
  store float %16, ptr %18, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds float, ptr %19, i64 2
  %21 = load float, ptr %20, align 4
  %22 = fdiv float %21, 2.550000e+02
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %23, i32 0, i32 3
  store float %22, ptr %24, align 4
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
