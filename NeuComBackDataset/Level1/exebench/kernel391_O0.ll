; ModuleID = '../benchmarks/fine_grained/exebench/kernel391.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel391.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abuf = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abuf_rdiscard(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.abuf, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8
  %9 = sub nsw i32 %8, %5
  store i32 %9, ptr %7, align 8
  %10 = load i32, ptr %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.abuf, ptr %12, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = add nsw i64 %14, %11
  store i64 %15, ptr %13, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.abuf, ptr %16, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.abuf, ptr %19, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.abuf, ptr %24, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.abuf, ptr %27, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = sub nsw i64 %29, %26
  store i64 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %23, %2
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
