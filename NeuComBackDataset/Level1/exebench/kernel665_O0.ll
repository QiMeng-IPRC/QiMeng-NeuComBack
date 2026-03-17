; ModuleID = '../benchmarks/fine_grained/exebench/kernel665.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel665.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timeval_sub(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, ptr %5, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %8, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, ptr %14, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 0
  %19 = load i64, ptr %18, align 8
  %20 = add nsw i64 %19, 1000000
  store i64 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, ptr %22, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, ptr %25, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = sub nsw i64 %27, %24
  store i64 %28, ptr %26, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, ptr %29, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, ptr %32, i32 0, i32 0
  %34 = load i64, ptr %33, align 8
  %35 = sub nsw i64 %34, %31
  store i64 %35, ptr %33, align 8
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
