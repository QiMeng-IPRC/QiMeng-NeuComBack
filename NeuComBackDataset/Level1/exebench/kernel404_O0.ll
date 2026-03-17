; ModuleID = '../benchmarks/fine_grained/exebench/kernel404.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel404.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_gc_kthread = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decrease_sleep_time(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %5, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.f2fs_gc_kthread, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %4, align 8
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, ptr %5, align 4
  %25 = zext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = load i32, ptr %5, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, ptr %5, align 4
  %32 = load ptr, ptr %4, align 8
  store i32 %31, ptr %32, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load i32, ptr %5, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %36, %34
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %33, %30
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
