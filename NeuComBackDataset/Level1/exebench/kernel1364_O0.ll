; ModuleID = '../benchmarks/fine_grained/exebench/kernel1364.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1364.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iterations = dso_local global i32 0, align 4
@blu = dso_local global ptr null, align 8
@nu = dso_local global i32 0, align 4
@img = dso_local global ptr null, align 8
@grn = dso_local global ptr null, align 8
@red = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @color_pixel_continous(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr @iterations, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %88

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  %10 = srem i32 %9, 3
  store i32 %10, ptr %4, align 4
  %11 = load ptr, ptr @blu, align 8
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr @nu, align 4
  %17 = load ptr, ptr @blu, align 8
  %18 = load i32, ptr %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = srem i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %17, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr @blu, align 8
  %25 = load i32, ptr %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sub nsw i32 %23, %28
  %30 = mul nsw i32 %16, %29
  %31 = add nsw i32 %15, %30
  %32 = load ptr, ptr @img, align 8
  %33 = load i32, ptr %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  store i32 %31, ptr %35, align 4
  %36 = load ptr, ptr @grn, align 8
  %37 = load i32, ptr %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr @nu, align 4
  %42 = load ptr, ptr @grn, align 8
  %43 = load i32, ptr %4, align 4
  %44 = add nsw i32 %43, 1
  %45 = srem i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %42, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr @grn, align 8
  %50 = load i32, ptr %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %49, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = sub nsw i32 %48, %53
  %55 = mul nsw i32 %41, %54
  %56 = add nsw i32 %40, %55
  %57 = load ptr, ptr @img, align 8
  %58 = load i32, ptr %3, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %57, i64 %60
  store i32 %56, ptr %61, align 4
  %62 = load ptr, ptr @red, align 8
  %63 = load i32, ptr %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %62, i64 %64
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr @nu, align 4
  %68 = load ptr, ptr @red, align 8
  %69 = load i32, ptr %4, align 4
  %70 = add nsw i32 %69, 1
  %71 = srem i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %68, i64 %72
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr @red, align 8
  %76 = load i32, ptr %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %75, i64 %77
  %79 = load i32, ptr %78, align 4
  %80 = sub nsw i32 %74, %79
  %81 = mul nsw i32 %67, %80
  %82 = add nsw i32 %66, %81
  %83 = load ptr, ptr @img, align 8
  %84 = load i32, ptr %3, align 4
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %83, i64 %86
  store i32 %82, ptr %87, align 4
  br label %103

88:                                               ; preds = %2
  %89 = load ptr, ptr @img, align 8
  %90 = load i32, ptr %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %89, i64 %91
  store i32 0, ptr %92, align 4
  %93 = load ptr, ptr @img, align 8
  %94 = load i32, ptr %3, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %93, i64 %96
  store i32 0, ptr %97, align 4
  %98 = load ptr, ptr @img, align 8
  %99 = load i32, ptr %3, align 4
  %100 = add nsw i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %98, i64 %101
  store i32 0, ptr %102, align 4
  br label %103

103:                                              ; preds = %88, %8
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
