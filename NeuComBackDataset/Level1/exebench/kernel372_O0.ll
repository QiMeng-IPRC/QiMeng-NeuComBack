; ModuleID = '../benchmarks/fine_grained/exebench/kernel372.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel372.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_segment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store i64 %5, ptr %13, align 8
  store i64 %6, ptr %14, align 8
  %21 = load ptr, ptr %9, align 8
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %15, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %16, align 8
  %25 = load i64, ptr %15, align 8
  %26 = load ptr, ptr %12, align 8
  %27 = load i64, ptr %26, align 8
  %28 = add nsw i64 %25, %27
  store i64 %28, ptr %17, align 8
  %29 = load i64, ptr %16, align 8
  %30 = load ptr, ptr %12, align 8
  %31 = load i64, ptr %30, align 8
  %32 = add nsw i64 %29, %31
  store i64 %32, ptr %18, align 8
  %33 = load i64, ptr %13, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %7
  %36 = load i64, ptr %15, align 8
  %37 = load i64, ptr %13, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, ptr %15, align 8
  store i64 %40, ptr %13, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, ptr %16, align 8
  %43 = load i64, ptr %13, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, ptr %16, align 8
  store i64 %46, ptr %13, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i64, ptr %13, align 8
  %49 = load i64, ptr %15, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, ptr %15, align 8
  %51 = load i64, ptr %13, align 8
  %52 = load i64, ptr %16, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, ptr %16, align 8
  br label %54

54:                                               ; preds = %47, %7
  %55 = load i64, ptr %14, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load ptr, ptr %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, ptr %58, i32 0, i32 0
  %60 = load i64, ptr %59, align 8
  %61 = load i64, ptr %17, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, ptr %19, align 8
  %63 = load ptr, ptr %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, ptr %63, i32 0, i32 0
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr %18, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, ptr %20, align 8
  %68 = load i64, ptr %19, align 8
  %69 = load i64, ptr %14, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i64, ptr %19, align 8
  store i64 %72, ptr %14, align 8
  br label %73

73:                                               ; preds = %71, %57
  %74 = load i64, ptr %20, align 8
  %75 = load i64, ptr %14, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64, ptr %20, align 8
  store i64 %78, ptr %14, align 8
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i64, ptr %14, align 8
  %81 = load i64, ptr %17, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, ptr %17, align 8
  br label %83

83:                                               ; preds = %79, %54
  %84 = load i64, ptr %15, align 8
  %85 = load ptr, ptr %9, align 8
  store i64 %84, ptr %85, align 8
  %86 = load i64, ptr %16, align 8
  %87 = load ptr, ptr %11, align 8
  store i64 %86, ptr %87, align 8
  %88 = load i64, ptr %17, align 8
  %89 = load i64, ptr %15, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load ptr, ptr %12, align 8
  store i64 %90, ptr %91, align 8
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
