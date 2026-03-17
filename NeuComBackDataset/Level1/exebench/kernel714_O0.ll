; ModuleID = '../benchmarks/fine_grained/exebench/kernel714.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @od_pre_filter4(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4 x i32], align 16
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds i32, ptr %6, i64 0
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds i32, ptr %9, i64 3
  %11 = load i32, ptr %10, align 4
  %12 = sub nsw i32 %8, %11
  %13 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds i32, ptr %14, i64 1
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 2
  %19 = load i32, ptr %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  store i32 %20, ptr %21, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds i32, ptr %22, i64 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %26 = load i32, ptr %25, align 8
  %27 = ashr i32 %26, 1
  %28 = sub nsw i32 %24, %27
  %29 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds i32, ptr %30, i64 0
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %34 = load i32, ptr %33, align 4
  %35 = ashr i32 %34, 1
  %36 = sub nsw i32 %32, %35
  %37 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 0
  store i32 %36, ptr %37, align 16
  %38 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %39 = load i32, ptr %38, align 8
  %40 = mul nsw i32 %39, 85
  %41 = ashr i32 %40, 6
  %42 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %44 = load i32, ptr %43, align 8
  %45 = sub nsw i32 0, %44
  %46 = ashr i32 %45, 31
  %47 = and i32 %46, 1
  %48 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %49 = load i32, ptr %48, align 8
  %50 = add nsw i32 %49, %47
  store i32 %50, ptr %48, align 8
  %51 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %52 = load i32, ptr %51, align 4
  %53 = mul nsw i32 %52, 75
  %54 = ashr i32 %53, 6
  %55 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %57 = load i32, ptr %56, align 4
  %58 = sub nsw i32 0, %57
  %59 = ashr i32 %58, 31
  %60 = and i32 %59, 1
  %61 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %62 = load i32, ptr %61, align 4
  %63 = add nsw i32 %62, %60
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %65 = load i32, ptr %64, align 8
  %66 = mul nsw i32 %65, -15
  %67 = add nsw i32 %66, 32
  %68 = ashr i32 %67, 6
  %69 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %70 = load i32, ptr %69, align 4
  %71 = add nsw i32 %70, %68
  store i32 %71, ptr %69, align 4
  %72 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %73 = load i32, ptr %72, align 4
  %74 = mul nsw i32 %73, 33
  %75 = add nsw i32 %74, 32
  %76 = ashr i32 %75, 6
  %77 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %78 = load i32, ptr %77, align 8
  %79 = add nsw i32 %78, %76
  store i32 %79, ptr %77, align 8
  %80 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %81 = load i32, ptr %80, align 4
  %82 = ashr i32 %81, 1
  %83 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 0
  %84 = load i32, ptr %83, align 16
  %85 = add nsw i32 %84, %82
  store i32 %85, ptr %83, align 16
  %86 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 0
  %87 = load i32, ptr %86, align 16
  %88 = load ptr, ptr %3, align 8
  %89 = getelementptr inbounds i32, ptr %88, i64 0
  store i32 %87, ptr %89, align 4
  %90 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %91 = load i32, ptr %90, align 8
  %92 = ashr i32 %91, 1
  %93 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %94 = load i32, ptr %93, align 4
  %95 = add nsw i32 %94, %92
  store i32 %95, ptr %93, align 4
  %96 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds i32, ptr %98, i64 1
  store i32 %97, ptr %99, align 4
  %100 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 2
  %103 = load i32, ptr %102, align 8
  %104 = sub nsw i32 %101, %103
  %105 = load ptr, ptr %3, align 8
  %106 = getelementptr inbounds i32, ptr %105, i64 2
  store i32 %104, ptr %106, align 4
  %107 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 0
  %108 = load i32, ptr %107, align 16
  %109 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  %110 = load i32, ptr %109, align 4
  %111 = sub nsw i32 %108, %110
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds i32, ptr %112, i64 3
  store i32 %111, ptr %113, align 4
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
