; ModuleID = '../benchmarks/fine_grained/exebench/kernel416.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel416.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two2word = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand16_2col2mask(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr @two2word, align 8
  %10 = load i32, ptr %6, align 4
  %11 = and i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 0
  store i32 %14, ptr %16, align 4
  %17 = load ptr, ptr @two2word, align 8
  %18 = load i32, ptr %5, align 4
  %19 = and i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 0
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %22, %25
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds i32, ptr %27, i64 0
  store i32 %26, ptr %28, align 4
  %29 = load ptr, ptr @two2word, align 8
  %30 = load i32, ptr %6, align 4
  %31 = ashr i32 %30, 2
  %32 = and i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %29, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 1
  store i32 %35, ptr %37, align 4
  %38 = load ptr, ptr @two2word, align 8
  %39 = load i32, ptr %5, align 4
  %40 = ashr i32 %39, 2
  %41 = and i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %38, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds i32, ptr %45, i64 1
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %44, %47
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr inbounds i32, ptr %49, i64 1
  store i32 %48, ptr %50, align 4
  %51 = load ptr, ptr @two2word, align 8
  %52 = load i32, ptr %6, align 4
  %53 = ashr i32 %52, 4
  %54 = and i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %51, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %8, align 8
  %59 = getelementptr inbounds i32, ptr %58, i64 2
  store i32 %57, ptr %59, align 4
  %60 = load ptr, ptr @two2word, align 8
  %61 = load i32, ptr %5, align 4
  %62 = ashr i32 %61, 4
  %63 = and i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %60, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %8, align 8
  %68 = getelementptr inbounds i32, ptr %67, i64 2
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %66, %69
  %71 = load ptr, ptr %7, align 8
  %72 = getelementptr inbounds i32, ptr %71, i64 2
  store i32 %70, ptr %72, align 4
  %73 = load ptr, ptr @two2word, align 8
  %74 = load i32, ptr %6, align 4
  %75 = ashr i32 %74, 6
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %73, i64 %76
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %8, align 8
  %80 = getelementptr inbounds i32, ptr %79, i64 3
  store i32 %78, ptr %80, align 4
  %81 = load ptr, ptr @two2word, align 8
  %82 = load i32, ptr %5, align 4
  %83 = ashr i32 %82, 6
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %81, i64 %84
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %8, align 8
  %88 = getelementptr inbounds i32, ptr %87, i64 3
  %89 = load i32, ptr %88, align 4
  %90 = xor i32 %86, %89
  %91 = load ptr, ptr %7, align 8
  %92 = getelementptr inbounds i32, ptr %91, i64 3
  store i32 %90, ptr %92, align 4
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
