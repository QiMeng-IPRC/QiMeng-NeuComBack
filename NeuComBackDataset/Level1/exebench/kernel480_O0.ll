; ModuleID = '../benchmarks/fine_grained/exebench/kernel480.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel480.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_rand48_mult = dso_local global ptr null, align 8
@_rand48_add = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_dorand48(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca [2 x i16], align 2
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr @_rand48_mult, align 8
  %6 = getelementptr inbounds i16, ptr %5, i64 0
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i64
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds i16, ptr %9, i64 0
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i64
  %13 = mul i64 %8, %12
  %14 = load i64, ptr @_rand48_add, align 8
  %15 = add i64 %13, %14
  store i64 %15, ptr %3, align 8
  %16 = load i64, ptr %3, align 8
  %17 = trunc i64 %16 to i16
  %18 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 0
  store i16 %17, ptr %18, align 2
  %19 = load i64, ptr %3, align 8
  %20 = lshr i64 %19, 16
  store i64 %20, ptr %3, align 8
  %21 = load ptr, ptr @_rand48_mult, align 8
  %22 = getelementptr inbounds i16, ptr %21, i64 0
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i64
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds i16, ptr %25, i64 1
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i64
  %29 = mul i64 %24, %28
  %30 = load ptr, ptr @_rand48_mult, align 8
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i64
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds i16, ptr %34, i64 0
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i64
  %38 = mul i64 %33, %37
  %39 = add i64 %29, %38
  %40 = load i64, ptr %3, align 8
  %41 = add i64 %40, %39
  store i64 %41, ptr %3, align 8
  %42 = load i64, ptr %3, align 8
  %43 = trunc i64 %42 to i16
  %44 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  store i16 %43, ptr %44, align 2
  %45 = load i64, ptr %3, align 8
  %46 = lshr i64 %45, 16
  store i64 %46, ptr %3, align 8
  %47 = load ptr, ptr @_rand48_mult, align 8
  %48 = getelementptr inbounds i16, ptr %47, i64 0
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds i16, ptr %51, i64 2
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = mul nsw i32 %50, %54
  %56 = load ptr, ptr @_rand48_mult, align 8
  %57 = getelementptr inbounds i16, ptr %56, i64 1
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds i16, ptr %60, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = mul nsw i32 %59, %63
  %65 = add nsw i32 %55, %64
  %66 = load ptr, ptr @_rand48_mult, align 8
  %67 = getelementptr inbounds i16, ptr %66, i64 2
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds i16, ptr %70, i64 0
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = mul nsw i32 %69, %73
  %75 = add nsw i32 %65, %74
  %76 = sext i32 %75 to i64
  %77 = load i64, ptr %3, align 8
  %78 = add i64 %77, %76
  store i64 %78, ptr %3, align 8
  %79 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 0
  %80 = load i16, ptr %79, align 2
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds i16, ptr %81, i64 0
  store i16 %80, ptr %82, align 2
  %83 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %84 = load i16, ptr %83, align 2
  %85 = load ptr, ptr %2, align 8
  %86 = getelementptr inbounds i16, ptr %85, i64 1
  store i16 %84, ptr %86, align 2
  %87 = load i64, ptr %3, align 8
  %88 = trunc i64 %87 to i16
  %89 = load ptr, ptr %2, align 8
  %90 = getelementptr inbounds i16, ptr %89, i64 2
  store i16 %88, ptr %90, align 2
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
