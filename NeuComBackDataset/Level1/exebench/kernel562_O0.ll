; ModuleID = '../benchmarks/fine_grained/exebench/kernel562.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel562.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScrollList_Init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 7
  store i64 0, ptr %5, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, ptr %6, i32 0, i32 6
  store i64 0, ptr %7, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %8, i32 0, i32 5
  store i64 0, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, ptr %15, i32 0, i32 0
  store i32 1, ptr %16, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, ptr %17, i32 0, i32 1
  store i32 0, ptr %18, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %25, i32 0, i32 1
  store i32 3, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27, %14
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = mul nsw i32 %43, 8
  store i32 %44, ptr %3, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, ptr %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_4__, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, ptr %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_4__, ptr %50, i32 0, i32 0
  store i32 %48, ptr %51, align 8
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, ptr %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, ptr %53, i32 0, i32 4
  %55 = load i64, ptr %54, align 8
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, ptr %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, ptr %57, i32 0, i32 6
  store i64 %55, ptr %58, align 8
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, ptr %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_4__, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %3, align 4
  %64 = add nsw i32 %62, %63
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, ptr %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, ptr %66, i32 0, i32 2
  store i32 %64, ptr %67, align 8
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, ptr %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, ptr %69, i32 0, i32 4
  %71 = load i64, ptr %70, align 8
  %72 = load ptr, ptr %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, ptr %72, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = mul nsw i32 %74, 16
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %71, %76
  %78 = load ptr, ptr %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, ptr %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_4__, ptr %79, i32 0, i32 5
  store i64 %77, ptr %80, align 8
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, ptr %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %28
  %88 = load i32, ptr %3, align 4
  %89 = sdiv i32 %88, 2
  %90 = load ptr, ptr %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, ptr %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_4__, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8
  %94 = sub nsw i32 %93, %89
  store i32 %94, ptr %92, align 8
  %95 = load i32, ptr %3, align 4
  %96 = sdiv i32 %95, 2
  %97 = load ptr, ptr %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, ptr %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, ptr %98, i32 0, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = sub nsw i32 %100, %96
  store i32 %101, ptr %99, align 8
  br label %102

102:                                              ; preds = %87, %28
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
