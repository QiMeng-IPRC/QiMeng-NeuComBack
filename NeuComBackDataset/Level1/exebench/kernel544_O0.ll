; ModuleID = '../benchmarks/fine_grained/exebench/kernel544.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel544.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtMul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = sub nsw i32 %13, %20
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sub nsw i32 %21, %28
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = sub nsw i32 %29, %36
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, ptr %38, i32 0, i32 0
  store i32 %37, ptr %39, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, ptr %50, i32 0, i32 0
  %52 = load i32, ptr %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = add nsw i32 %46, %53
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = add nsw i32 %54, %61
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, ptr %63, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = sub nsw i32 %62, %69
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, ptr %71, i32 0, i32 1
  store i32 %70, ptr %72, align 4
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, ptr %83, i32 0, i32 0
  %85 = load i32, ptr %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = add nsw i32 %79, %86
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, ptr %88, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = add nsw i32 %87, %94
  %96 = load ptr, ptr %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, ptr %99, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sub nsw i32 %95, %102
  %104 = load ptr, ptr %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, ptr %104, i32 0, i32 2
  store i32 %103, ptr %105, align 4
  %106 = load ptr, ptr %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, ptr %106, i32 0, i32 0
  %108 = load i32, ptr %107, align 4
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, ptr %109, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, ptr %113, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, ptr %116, i32 0, i32 0
  %118 = load i32, ptr %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = add nsw i32 %112, %119
  %121 = load ptr, ptr %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = add nsw i32 %120, %127
  %129 = load ptr, ptr %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, ptr %132, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = sub nsw i32 %128, %135
  %137 = load ptr, ptr %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, ptr %137, i32 0, i32 3
  store i32 %136, ptr %138, align 4
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
