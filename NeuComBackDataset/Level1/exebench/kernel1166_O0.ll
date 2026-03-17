; ModuleID = '../benchmarks/fine_grained/exebench/kernel1166.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1166.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rng = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @urand() #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @rng, align 8
  %3 = getelementptr inbounds i32, ptr %2, i64 0
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr @rng, align 8
  %6 = getelementptr inbounds i32, ptr %5, i64 0
  %7 = load i32, ptr %6, align 4
  %8 = ashr i32 %7, 7
  %9 = xor i32 %4, %8
  store i32 %9, ptr %1, align 4
  %10 = load ptr, ptr @rng, align 8
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr @rng, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 0
  store i32 %12, ptr %14, align 4
  %15 = load ptr, ptr @rng, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 2
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr @rng, align 8
  %19 = getelementptr inbounds i32, ptr %18, i64 1
  store i32 %17, ptr %19, align 4
  %20 = load ptr, ptr @rng, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 3
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr @rng, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 2
  store i32 %22, ptr %24, align 4
  %25 = load ptr, ptr @rng, align 8
  %26 = getelementptr inbounds i32, ptr %25, i64 4
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr @rng, align 8
  %29 = getelementptr inbounds i32, ptr %28, i64 3
  store i32 %27, ptr %29, align 4
  %30 = load ptr, ptr @rng, align 8
  %31 = getelementptr inbounds i32, ptr %30, i64 4
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr @rng, align 8
  %34 = getelementptr inbounds i32, ptr %33, i64 4
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 6
  %37 = xor i32 %32, %36
  %38 = load i32, ptr %1, align 4
  %39 = load i32, ptr %1, align 4
  %40 = shl i32 %39, 13
  %41 = xor i32 %38, %40
  %42 = xor i32 %37, %41
  %43 = load ptr, ptr @rng, align 8
  %44 = getelementptr inbounds i32, ptr %43, i64 4
  store i32 %42, ptr %44, align 4
  %45 = load ptr, ptr @rng, align 8
  %46 = getelementptr inbounds i32, ptr %45, i64 1
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr @rng, align 8
  %49 = getelementptr inbounds i32, ptr %48, i64 1
  %50 = load i32, ptr %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = add nsw i32 %51, 1
  %53 = load ptr, ptr @rng, align 8
  %54 = getelementptr inbounds i32, ptr %53, i64 4
  %55 = load i32, ptr %54, align 4
  %56 = mul nsw i32 %52, %55
  ret i32 %56
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
