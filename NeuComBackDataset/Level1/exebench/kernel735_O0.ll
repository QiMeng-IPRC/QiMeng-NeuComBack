; ModuleID = '../benchmarks/fine_grained/exebench/kernel735.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel735.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timeval_subtract(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %8, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %11, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, ptr %16, i32 0, i32 0
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, ptr %19, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = sdiv i64 %22, 1000000
  %24 = add nsw i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr %7, align 4
  %26 = load i32, ptr %7, align 4
  %27 = mul nsw i32 1000000, %26
  %28 = sext i32 %27 to i64
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, ptr %29, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = sub nsw i64 %31, %28
  store i64 %32, ptr %30, align 8
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %15, %3
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, ptr %40, i32 0, i32 0
  %42 = load i64, ptr %41, align 8
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, ptr %43, i32 0, i32 0
  %45 = load i64, ptr %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = icmp sgt i64 %46, 1000000
  br i1 %47, label %48, label %71

48:                                               ; preds = %39
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, ptr %49, i32 0, i32 0
  %51 = load i64, ptr %50, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, ptr %52, i32 0, i32 0
  %54 = load i64, ptr %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = sdiv i64 %55, 1000000
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %7, align 4
  %58 = load i32, ptr %7, align 4
  %59 = mul nsw i32 1000000, %58
  %60 = sext i32 %59 to i64
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, ptr %61, i32 0, i32 0
  %63 = load i64, ptr %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, ptr %62, align 8
  %65 = load i32, ptr %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load ptr, ptr %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, ptr %67, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %48, %39
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, ptr %72, i32 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, ptr %75, i32 0, i32 1
  %77 = load i64, ptr %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, ptr %79, i32 0, i32 1
  store i64 %78, ptr %80, align 8
  %81 = load ptr, ptr %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, ptr %81, i32 0, i32 0
  %83 = load i64, ptr %82, align 8
  %84 = load ptr, ptr %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, ptr %84, i32 0, i32 0
  %86 = load i64, ptr %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, ptr %88, i32 0, i32 0
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, ptr %90, i32 0, i32 1
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, ptr %93, i32 0, i32 1
  %95 = load i64, ptr %94, align 8
  %96 = icmp slt i64 %92, %95
  %97 = zext i1 %96 to i32
  ret i32 %97
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
