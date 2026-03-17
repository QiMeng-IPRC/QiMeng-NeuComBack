; ModuleID = '../benchmarks/fine_grained/exebench/kernel1005.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_bit(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %7 = load i32, ptr %3, align 4
  %8 = load i32, ptr @BITS_PER_LONG, align 4
  %9 = srem i32 %7, %8
  %10 = zext i32 %9 to i64
  %11 = shl i64 1, %10
  store i64 %11, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %3, align 4
  %14 = load i32, ptr @BITS_PER_LONG, align 4
  %15 = sdiv i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, ptr %12, i64 %16
  store ptr %17, ptr %6, align 8
  %18 = load i64, ptr %5, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = load i64, ptr %19, align 8
  %21 = or i64 %20, %18
  store i64 %21, ptr %19, align 8
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
