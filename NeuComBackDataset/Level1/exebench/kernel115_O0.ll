; ModuleID = '../benchmarks/fine_grained/exebench/kernel115.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel115.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @quaternionMultiply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 4
  %14 = mul nsw i32 %10, %13
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sub nsw i32 %14, %21
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = sub nsw i32 %22, %29
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sub nsw i32 %30, %37
  %39 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 0
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, ptr %50, i32 0, i32 0
  %52 = load i32, ptr %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = add nsw i32 %46, %53
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = add nsw i32 %54, %61
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, ptr %63, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = sub nsw i32 %62, %69
  %71 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, ptr %72, i32 0, i32 0
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sub nsw i32 %78, %85
  %87 = load ptr, ptr %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, ptr %90, i32 0, i32 0
  %92 = load i32, ptr %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = add nsw i32 %86, %93
  %95 = load ptr, ptr %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, ptr %95, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, ptr %98, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = add nsw i32 %94, %101
  %103 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 2
  store i32 %102, ptr %103, align 4
  %104 = load ptr, ptr %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, ptr %104, i32 0, i32 0
  %106 = load i32, ptr %105, align 4
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, ptr %107, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, ptr %111, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = add nsw i32 %110, %117
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, ptr %119, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = load ptr, ptr %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, ptr %122, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = sub nsw i32 %118, %125
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, ptr %127, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = load ptr, ptr %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, ptr %130, i32 0, i32 0
  %132 = load i32, ptr %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = add nsw i32 %126, %133
  %135 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 3
  store i32 %134, ptr %135, align 4
  %136 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %136, ptr align 4 %7, i64 16, i1 false)
  %137 = load ptr, ptr %4, align 8
  ret ptr %137
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
