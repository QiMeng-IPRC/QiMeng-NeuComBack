; ModuleID = '../benchmarks/fine_grained/exebench/kernel17.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msRectIntersect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %6, i32 0, i32 0
  %8 = load i64, ptr %7, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %9, i32 0, i32 0
  %11 = load i64, ptr %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %14, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 0
  store i64 %16, ptr %18, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, ptr %20, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, ptr %28, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, ptr %31, i32 0, i32 1
  store i64 %30, ptr %32, align 8
  br label %33

33:                                               ; preds = %27, %19
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, ptr %34, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, ptr %37, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, ptr %42, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, ptr %45, i32 0, i32 2
  store i64 %44, ptr %46, align 8
  br label %47

47:                                               ; preds = %41, %33
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, ptr %48, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, ptr %51, i32 0, i32 3
  %53 = load i64, ptr %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, ptr %56, i32 0, i32 3
  %58 = load i64, ptr %57, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, ptr %59, i32 0, i32 3
  store i64 %58, ptr %60, align 8
  br label %61

61:                                               ; preds = %55, %47
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, ptr %62, i32 0, i32 0
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, ptr %65, i32 0, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, ptr %70, i32 0, i32 0
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, ptr %73, i32 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69, %61
  store i32 0, ptr %3, align 4
  br label %79

78:                                               ; preds = %69
  store i32 1, ptr %3, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, ptr %3, align 4
  ret i32 %80
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
