; ModuleID = '../benchmarks/fine_grained/exebench/kernel946.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel946.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_bittiming_const = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_update_spt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %11 = load i32, ptr %8, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, ptr %7, align 4
  %14 = load i32, ptr %8, align 4
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 %13, %15
  %17 = sdiv i32 %16, 1000
  %18 = sub nsw i32 %12, %17
  %19 = load ptr, ptr %10, align 8
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %10, align 8
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.can_bittiming_const, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.can_bittiming_const, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %10, align 8
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %5
  %32 = load ptr, ptr %10, align 8
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %struct.can_bittiming_const, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds %struct.can_bittiming_const, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %10, align 8
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i32, ptr %8, align 4
  %45 = load ptr, ptr %10, align 8
  %46 = load i32, ptr %45, align 4
  %47 = sub nsw i32 %44, %46
  %48 = load ptr, ptr %9, align 8
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %9, align 8
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds %struct.can_bittiming_const, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %43
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.can_bittiming_const, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %9, align 8
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %8, align 4
  %61 = load ptr, ptr %9, align 8
  %62 = load i32, ptr %61, align 4
  %63 = sub nsw i32 %60, %62
  %64 = load ptr, ptr %10, align 8
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %55, %43
  %66 = load i32, ptr %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = load ptr, ptr %10, align 8
  %69 = load i32, ptr %68, align 4
  %70 = sub nsw i32 %67, %69
  %71 = mul nsw i32 1000, %70
  %72 = load i32, ptr %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = sdiv i32 %71, %73
  ret i32 %74
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
