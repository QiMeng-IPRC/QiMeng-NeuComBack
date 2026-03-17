; ModuleID = '../benchmarks/fine_grained/exebench/kernel93.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel93.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int32ToBytes(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 255
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds i32, ptr %7, i32 1
  store ptr %8, ptr %4, align 8
  store i32 %6, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = ashr i32 %9, 8
  store i32 %10, ptr %3, align 4
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 255
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds i32, ptr %13, i32 1
  store ptr %14, ptr %4, align 8
  store i32 %12, ptr %13, align 4
  %15 = load i32, ptr %3, align 4
  %16 = ashr i32 %15, 8
  store i32 %16, ptr %3, align 4
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, 255
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 8
  store i32 %18, ptr %19, align 4
  %21 = load i32, ptr %3, align 4
  %22 = ashr i32 %21, 8
  store i32 %22, ptr %3, align 4
  %23 = load i32, ptr %3, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %25, ptr %4, align 8
  store i32 %23, ptr %24, align 4
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
