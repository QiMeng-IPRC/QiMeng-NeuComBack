; ModuleID = '../benchmarks/fine_grained/exebench/kernel207.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel207.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readCoord(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds i64, ptr %6, i64 0
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 24
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds i64, ptr %11, i64 1
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 16
  %16 = add nsw i32 %10, %15
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 2
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 8
  %22 = add nsw i32 %16, %21
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds i64, ptr %23, i64 3
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 0
  %28 = add nsw i32 %22, %27
  store i32 %28, ptr %5, align 4
  %29 = load i32, ptr %5, align 4
  %30 = load ptr, ptr %4, align 8
  store i32 %29, ptr %30, align 4
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
