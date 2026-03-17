; ModuleID = '../benchmarks/fine_grained/exebench/kernel1359.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1359.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ix = dso_local global i64 0, align 8
@iy = dso_local global i64 0, align 8
@iz = dso_local global i64 0, align 8
@RandN_usePrevious = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetSeed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load i64, ptr @ix, align 8
  %8 = load ptr, ptr %4, align 8
  store i64 %7, ptr %8, align 8
  %9 = load i64, ptr @iy, align 8
  %10 = load ptr, ptr %5, align 8
  store i64 %9, ptr %10, align 8
  %11 = load i64, ptr @iz, align 8
  %12 = load ptr, ptr %6, align 8
  store i64 %11, ptr %12, align 8
  store i64 0, ptr @RandN_usePrevious, align 8
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
