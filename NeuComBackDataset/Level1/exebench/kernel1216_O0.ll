; ModuleID = '../benchmarks/fine_grained/exebench/kernel1216.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_next_sector(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %3, i32 0, i32 6
  %5 = load i64, ptr %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %12
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %26, i32 0, i32 0
  store i32 1, ptr %27, align 8
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, ptr %29, align 8
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %32, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, ptr %35, i32 0, i32 3
  %37 = load i64, ptr %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %25
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, ptr %40, i32 0, i32 2
  store i64 0, ptr %41, align 8
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %42, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %39, %25
  br label %47

47:                                               ; preds = %46, %12
  br label %48

48:                                               ; preds = %47, %7
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
