; ModuleID = '../benchmarks/fine_grained/exebench/kernel1395.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1395.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec = type { i64, i32, i64, i64, i64, i64 }

@stack = dso_local global i64 0, align 8
@wordpow = dso_local global i64 0, align 8
@A_I8086 = dso_local global i64 0, align 8
@A_SEP = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setstack(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %5 = load i64, ptr @stack, align 8
  store i64 %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load i64, ptr @wordpow, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.exec, ptr %10, i32 0, i32 0
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr @A_I8086, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 2, i32 4
  %17 = sext i32 %16 to i64
  %18 = load i64, ptr %4, align 8
  %19 = mul nsw i64 %18, %17
  store i64 %19, ptr %4, align 8
  %20 = load i64, ptr @wordpow, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, ptr @wordpow, align 8
  br label %6, !llvm.loop !6

22:                                               ; preds = %6
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.exec, ptr %23, i32 0, i32 5
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.exec, ptr %26, i32 0, i32 4
  %28 = load i64, ptr %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load i64, ptr %4, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, ptr %4, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.exec, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = load i32, ptr @A_SEP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %22
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.exec, ptr %39, i32 0, i32 3
  %41 = load i64, ptr %40, align 8
  %42 = load i64, ptr %4, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, ptr %4, align 8
  br label %44

44:                                               ; preds = %38, %22
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.exec, ptr %45, i32 0, i32 0
  %47 = load i64, ptr %46, align 8
  %48 = load i64, ptr @A_I8086, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, ptr %4, align 8
  %52 = icmp sgt i64 %51, 65536
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 65536, ptr %4, align 8
  br label %54

54:                                               ; preds = %53, %50, %44
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct.exec, ptr %55, i32 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = load i64, ptr %4, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, ptr %4, align 8
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct.exec, ptr %62, i32 0, i32 2
  store i64 %61, ptr %63, align 8
  store i32 1, ptr %2, align 4
  br label %65

64:                                               ; preds = %54
  store i32 0, ptr %2, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, ptr %2, align 4
  ret i32 %66
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
