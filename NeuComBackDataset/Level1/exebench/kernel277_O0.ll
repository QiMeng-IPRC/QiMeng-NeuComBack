; ModuleID = '../benchmarks/fine_grained/exebench/kernel277.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel277.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@columns = dso_local global ptr null, align 8
@lock = dso_local global i32 0, align 4
@htindex = dso_local global i32 0, align 4
@stride = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @columns, align 8
  %5 = getelementptr inbounds i32, ptr %4, i64 1
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 7
  %8 = load ptr, ptr @columns, align 8
  %9 = getelementptr inbounds i32, ptr %8, i64 2
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %7, %10
  %12 = shl i32 %11, 7
  %13 = load ptr, ptr @columns, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 3
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %12, %15
  store i32 %16, ptr %1, align 4
  %17 = load ptr, ptr @columns, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 7
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 7
  %21 = load ptr, ptr @columns, align 8
  %22 = getelementptr inbounds i32, ptr %21, i64 6
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %20, %23
  %25 = shl i32 %24, 7
  %26 = load ptr, ptr @columns, align 8
  %27 = getelementptr inbounds i32, ptr %26, i64 5
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %25, %28
  store i32 %29, ptr %2, align 4
  %30 = load i32, ptr %1, align 4
  %31 = load i32, ptr %2, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %0
  %34 = load i32, ptr %1, align 4
  %35 = shl i32 %34, 7
  %36 = load ptr, ptr @columns, align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 4
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %35, %38
  %40 = shl i32 %39, 21
  %41 = load i32, ptr %2, align 4
  %42 = or i32 %40, %41
  br label %53

43:                                               ; preds = %0
  %44 = load i32, ptr %2, align 4
  %45 = shl i32 %44, 7
  %46 = load ptr, ptr @columns, align 8
  %47 = getelementptr inbounds i32, ptr %46, i64 4
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %45, %48
  %50 = shl i32 %49, 21
  %51 = load i32, ptr %1, align 4
  %52 = or i32 %50, %51
  br label %53

53:                                               ; preds = %43, %33
  %54 = phi i32 [ %42, %33 ], [ %52, %43 ]
  store i32 %54, ptr %3, align 4
  %55 = load i32, ptr %3, align 4
  %56 = ashr i32 %55, 17
  store i32 %56, ptr @lock, align 4
  %57 = load i32, ptr %3, align 4
  %58 = srem i32 %57, 1050011
  store i32 %58, ptr @htindex, align 4
  %59 = load i32, ptr @lock, align 4
  %60 = srem i32 %59, 179
  %61 = add nsw i32 131072, %60
  store i32 %61, ptr @stride, align 4
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
