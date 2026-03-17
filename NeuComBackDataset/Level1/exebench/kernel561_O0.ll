; ModuleID = '../benchmarks/fine_grained/exebench/kernel561.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel561.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scalar_mult_sum_antiH(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %7 = load i32, ptr %5, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, ptr %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_7__, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = mul nsw i32 %7, %11
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, ptr %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_7__, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %16, %12
  store i32 %17, ptr %15, align 4
  %18 = load i32, ptr %5, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, ptr %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_7__, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = mul nsw i32 %18, %22
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, ptr %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_7__, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, %23
  store i32 %28, ptr %26, align 4
  %29 = load i32, ptr %5, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, ptr %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_8__, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 4
  %34 = mul nsw i32 %29, %33
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, ptr %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_8__, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = add nsw i32 %38, %34
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr %5, align 4
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, ptr %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_8__, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = mul nsw i32 %40, %44
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, ptr %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_8__, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add nsw i32 %49, %45
  store i32 %50, ptr %48, align 4
  %51 = load i32, ptr %5, align 4
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, ptr %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, ptr %53, i32 0, i32 0
  %55 = load i32, ptr %54, align 4
  %56 = mul nsw i32 %51, %55
  %57 = load ptr, ptr %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, ptr %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 4
  %61 = add nsw i32 %60, %56
  store i32 %61, ptr %59, align 4
  %62 = load i32, ptr %5, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, ptr %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = mul nsw i32 %62, %66
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, ptr %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = add nsw i32 %71, %67
  store i32 %72, ptr %70, align 4
  %73 = load i32, ptr %5, align 4
  %74 = load ptr, ptr %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, ptr %74, i32 0, i32 0
  %76 = load i32, ptr %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = load ptr, ptr %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, ptr %78, i32 0, i32 0
  %80 = load i32, ptr %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, ptr %79, align 4
  %82 = load i32, ptr %5, align 4
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = load ptr, ptr %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, ptr %88, align 4
  %91 = load i32, ptr %5, align 4
  %92 = load ptr, ptr %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load ptr, ptr %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = add nsw i32 %98, %95
  store i32 %99, ptr %97, align 4
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
