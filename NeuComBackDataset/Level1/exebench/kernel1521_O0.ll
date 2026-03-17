; ModuleID = '../benchmarks/fine_grained/exebench/kernel1521.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1521.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@geopack1_ = dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geogsm_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load i64, ptr %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %7
  %19 = load i32, ptr @geopack1_, align 4
  %20 = load ptr, ptr %8, align 8
  %21 = load i32, ptr %20, align 4
  %22 = mul nsw i32 %19, %21
  %23 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 1), align 4
  %24 = load ptr, ptr %9, align 8
  %25 = load i32, ptr %24, align 4
  %26 = mul nsw i32 %23, %25
  %27 = add nsw i32 %22, %26
  %28 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 2), align 4
  %29 = load ptr, ptr %10, align 8
  %30 = load i32, ptr %29, align 4
  %31 = mul nsw i32 %28, %30
  %32 = add nsw i32 %27, %31
  %33 = load ptr, ptr %11, align 8
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 3), align 4
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %35, align 4
  %37 = mul nsw i32 %34, %36
  %38 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 4), align 4
  %39 = load ptr, ptr %9, align 8
  %40 = load i32, ptr %39, align 4
  %41 = mul nsw i32 %38, %40
  %42 = add nsw i32 %37, %41
  %43 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 5), align 4
  %44 = load ptr, ptr %10, align 8
  %45 = load i32, ptr %44, align 4
  %46 = mul nsw i32 %43, %45
  %47 = add nsw i32 %42, %46
  %48 = load ptr, ptr %12, align 8
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 6), align 4
  %50 = load ptr, ptr %8, align 8
  %51 = load i32, ptr %50, align 4
  %52 = mul nsw i32 %49, %51
  %53 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 7), align 4
  %54 = load ptr, ptr %9, align 8
  %55 = load i32, ptr %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = add nsw i32 %52, %56
  %58 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 8), align 4
  %59 = load ptr, ptr %10, align 8
  %60 = load i32, ptr %59, align 4
  %61 = mul nsw i32 %58, %60
  %62 = add nsw i32 %57, %61
  %63 = load ptr, ptr %13, align 8
  store i32 %62, ptr %63, align 4
  br label %110

64:                                               ; preds = %7
  %65 = load i32, ptr @geopack1_, align 4
  %66 = load ptr, ptr %11, align 8
  %67 = load i32, ptr %66, align 4
  %68 = mul nsw i32 %65, %67
  %69 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 3), align 4
  %70 = load ptr, ptr %12, align 8
  %71 = load i32, ptr %70, align 4
  %72 = mul nsw i32 %69, %71
  %73 = add nsw i32 %68, %72
  %74 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 6), align 4
  %75 = load ptr, ptr %13, align 8
  %76 = load i32, ptr %75, align 4
  %77 = mul nsw i32 %74, %76
  %78 = add nsw i32 %73, %77
  %79 = load ptr, ptr %8, align 8
  store i32 %78, ptr %79, align 4
  %80 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 1), align 4
  %81 = load ptr, ptr %11, align 8
  %82 = load i32, ptr %81, align 4
  %83 = mul nsw i32 %80, %82
  %84 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 4), align 4
  %85 = load ptr, ptr %12, align 8
  %86 = load i32, ptr %85, align 4
  %87 = mul nsw i32 %84, %86
  %88 = add nsw i32 %83, %87
  %89 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 7), align 4
  %90 = load ptr, ptr %13, align 8
  %91 = load i32, ptr %90, align 4
  %92 = mul nsw i32 %89, %91
  %93 = add nsw i32 %88, %92
  %94 = load ptr, ptr %9, align 8
  store i32 %93, ptr %94, align 4
  %95 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 2), align 4
  %96 = load ptr, ptr %11, align 8
  %97 = load i32, ptr %96, align 4
  %98 = mul nsw i32 %95, %97
  %99 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 5), align 4
  %100 = load ptr, ptr %12, align 8
  %101 = load i32, ptr %100, align 4
  %102 = mul nsw i32 %99, %101
  %103 = add nsw i32 %98, %102
  %104 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 8), align 4
  %105 = load ptr, ptr %13, align 8
  %106 = load i32, ptr %105, align 4
  %107 = mul nsw i32 %104, %106
  %108 = add nsw i32 %103, %107
  %109 = load ptr, ptr %10, align 8
  store i32 %108, ptr %109, align 4
  br label %110

110:                                              ; preds = %64, %18
  ret i32 0
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
