; ModuleID = '../benchmarks/fine_grained/exebench/kernel1448.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1448.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_comp_hdr_unpack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [4 x i64], align 16
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 0
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 0
  store i64 %16, ptr %17, align 16
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds i64, ptr %18, i64 1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 1
  store i64 %20, ptr %21, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 2
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 2
  store i64 %24, ptr %25, align 16
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds i64, ptr %26, i64 3
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 3
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 0
  %31 = load i64, ptr %30, align 16
  %32 = lshr i64 %31, 5
  %33 = and i64 %32, 7
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr %8, align 8
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 0
  %37 = load i64, ptr %36, align 16
  %38 = and i64 %37, 31
  %39 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 1
  %40 = load i64, ptr %39, align 8
  %41 = lshr i64 %40, 2
  %42 = and i64 %41, 32
  %43 = or i64 %38, %42
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %9, align 8
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 1
  %47 = load i64, ptr %46, align 8
  %48 = shl i64 %47, 4
  %49 = and i64 %48, 2032
  %50 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 2
  %51 = load i64, ptr %50, align 16
  %52 = lshr i64 %51, 4
  %53 = and i64 %52, 15
  %54 = or i64 %49, %53
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %10, align 8
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 2
  %58 = load i64, ptr %57, align 16
  %59 = and i64 %58, 15
  %60 = trunc i64 %59 to i32
  %61 = load ptr, ptr %11, align 8
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds [4 x i64], ptr %13, i64 0, i64 3
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 255
  %65 = trunc i64 %64 to i32
  %66 = load ptr, ptr %12, align 8
  store i32 %65, ptr %66, align 4
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
