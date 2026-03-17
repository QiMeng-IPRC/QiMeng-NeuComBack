; ModuleID = '../benchmarks/fine_grained/exebench/kernel1213.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1213.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int_array_double_capacity_if_full(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 0
  store i32 100, ptr %11, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @malloc(i32 noundef %18)
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i32 0, i32 2
  store i32 %19, ptr %22, align 4
  br label %23

23:                                               ; preds = %8, %1
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 4
  %32 = icmp sge i32 %27, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %23
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, ptr %36, align 4
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, ptr %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, ptr %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @realloc(i32 noundef %42, i32 noundef %49)
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, ptr %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, ptr %52, i32 0, i32 2
  store i32 %50, ptr %53, align 4
  br label %54

54:                                               ; preds = %33, %23
  ret void
}

declare i32 @malloc(i32 noundef) #1

declare i32 @realloc(i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
