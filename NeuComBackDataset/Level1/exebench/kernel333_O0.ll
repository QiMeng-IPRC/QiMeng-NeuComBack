; ModuleID = '../benchmarks/fine_grained/exebench/kernel333.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel333.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_shots(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store i32 %3, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  store i32 %5, ptr %12, align 4
  %14 = load i32, ptr %12, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 -1
  store i32 %17, ptr %13, align 4
  %18 = load ptr, ptr %7, align 8
  %19 = load i32, ptr %10, align 4
  %20 = load i32, ptr %13, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, ptr %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, ptr %23, i32 0, i32 0
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %63

28:                                               ; preds = %6
  %29 = load ptr, ptr %8, align 8
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load i32, ptr %12, align 4
  %35 = load ptr, ptr %9, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, ptr %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, ptr %39, i32 0, i32 0
  store i32 %34, ptr %40, align 4
  %41 = load i32, ptr %10, align 4
  %42 = load i32, ptr %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = load ptr, ptr %9, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, ptr %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, ptr %48, i32 0, i32 1
  store i32 %43, ptr %49, align 4
  %50 = load ptr, ptr %7, align 8
  %51 = load ptr, ptr %9, align 8
  %52 = load ptr, ptr %8, align 8
  %53 = load i32, ptr %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %52, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, ptr %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, ptr %50, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, ptr %60, i32 0, i32 0
  store i8 45, ptr %61, align 1
  br label %62

62:                                               ; preds = %33, %28
  br label %63

63:                                               ; preds = %62, %6
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
