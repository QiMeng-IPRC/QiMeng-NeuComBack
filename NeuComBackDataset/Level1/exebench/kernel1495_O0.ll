; ModuleID = '../benchmarks/fine_grained/exebench/kernel1495.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1495.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taia = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taia_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.taia, ptr %9, i32 0, i32 0
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %7, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.taia, ptr %12, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %8, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.taia, ptr %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %16, i32 0, i32 0
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.taia, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, ptr %20, i32 0, i32 0
  %22 = load i64, ptr %21, align 8
  %23 = sub nsw i64 %18, %22
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.taia, ptr %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i32 0, i32 0
  store i64 %23, ptr %26, align 8
  %27 = load i64, ptr %7, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.taia, ptr %28, i32 0, i32 0
  %30 = load i64, ptr %29, align 8
  %31 = sub i64 %27, %30
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.taia, ptr %32, i32 0, i32 0
  store i64 %31, ptr %33, align 8
  %34 = load i64, ptr %8, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds %struct.taia, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = sub i64 %34, %37
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.taia, ptr %39, i32 0, i32 1
  store i64 %38, ptr %40, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.taia, ptr %41, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = load i64, ptr %8, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %3
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.taia, ptr %47, i32 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %49, 1000000000
  store i64 %50, ptr %48, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr inbounds %struct.taia, ptr %51, i32 0, i32 0
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, -1
  store i64 %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %46, %3
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds %struct.taia, ptr %56, i32 0, i32 0
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %7, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct.taia, ptr %62, i32 0, i32 0
  %64 = load i64, ptr %63, align 8
  %65 = add i64 %64, 1000000000
  store i64 %65, ptr %63, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds %struct.taia, ptr %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, ptr %67, i32 0, i32 0
  %69 = load i64, ptr %68, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %61, %55
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
