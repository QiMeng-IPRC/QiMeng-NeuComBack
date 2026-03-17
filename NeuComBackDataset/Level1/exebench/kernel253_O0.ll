; ModuleID = '../benchmarks/fine_grained/exebench/kernel253.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel253.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@geopack1_ = dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsmgse_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
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
  br i1 %17, label %18, label %42

18:                                               ; preds = %7
  %19 = load ptr, ptr %8, align 8
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %11, align 8
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %9, align 8
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr @geopack1_, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load ptr, ptr %10, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 1), align 4
  %29 = mul nsw i32 %27, %28
  %30 = sub nsw i32 %25, %29
  %31 = load ptr, ptr %12, align 8
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %9, align 8
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 1), align 4
  %35 = mul nsw i32 %33, %34
  %36 = load ptr, ptr %10, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr @geopack1_, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %35, %39
  %41 = load ptr, ptr %13, align 8
  store i32 %40, ptr %41, align 4
  br label %66

42:                                               ; preds = %7
  %43 = load ptr, ptr %11, align 8
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %8, align 8
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %12, align 8
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr @geopack1_, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load ptr, ptr %13, align 8
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 1), align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %49, %53
  %55 = load ptr, ptr %9, align 8
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %13, align 8
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr @geopack1_, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load ptr, ptr %12, align 8
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @geopack1_, i32 0, i32 1), align 4
  %63 = mul nsw i32 %61, %62
  %64 = sub nsw i32 %59, %63
  %65 = load ptr, ptr %10, align 8
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %42, %18
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
