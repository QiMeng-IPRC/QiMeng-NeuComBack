; ModuleID = '../benchmarks/fine_grained/exebench/kernel103.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel103.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @display_map_color_rgb_bgr24(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 255
  %9 = shl i32 %8, 24
  %10 = load i32, ptr %5, align 4
  %11 = and i32 %10, 255
  %12 = ashr i32 %11, -16
  %13 = add nsw i32 %9, %12
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds i32, ptr %14, i64 0
  store i32 %13, ptr %15, align 4
  %16 = load i32, ptr %5, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = shl i32 %18, 24
  %20 = load i32, ptr %5, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = ashr i32 %22, -16
  %24 = add nsw i32 %19, %23
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %24, ptr %26, align 4
  %27 = load i32, ptr %5, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 24
  %31 = load i32, ptr %5, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = ashr i32 %33, -16
  %35 = add nsw i32 %30, %34
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 2
  store i32 %35, ptr %37, align 4
  ret i32 0
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
