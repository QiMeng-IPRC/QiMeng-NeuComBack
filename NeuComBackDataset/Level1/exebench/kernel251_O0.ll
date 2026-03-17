; ModuleID = '../benchmarks/fine_grained/exebench/kernel251.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel251.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@mr_mip = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mr_setbase(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 0, ptr %5, align 4
  store i32 32, ptr %6, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, ptr %6, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load i32, ptr %6, align 4
  %12 = sdiv i32 %11, 2
  store i32 %12, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = shl i32 1, %13
  store i32 %14, ptr %4, align 4
  %15 = load i32, ptr %4, align 4
  %16 = load i32, ptr %3, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 1, ptr %5, align 4
  br label %29

19:                                               ; preds = %10
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %6, align 4
  %25 = srem i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  br label %29

28:                                               ; preds = %23
  br label %7, !llvm.loop !6

29:                                               ; preds = %27, %18, %7
  %30 = load i32, ptr %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, ptr %3, align 4
  %34 = load ptr, ptr @mr_mip, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, ptr %34, i32 0, i32 0
  store i32 %33, ptr %35, align 4
  %36 = load i32, ptr %6, align 4
  %37 = sdiv i32 32, %36
  %38 = load ptr, ptr @mr_mip, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, ptr %38, i32 0, i32 1
  store i32 %37, ptr %39, align 4
  %40 = load ptr, ptr @mr_mip, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, ptr %40, i32 0, i32 2
  store i32 0, ptr %41, align 4
  store i32 0, ptr %2, align 4
  br label %77

42:                                               ; preds = %29
  %43 = load i32, ptr %3, align 4
  %44 = load ptr, ptr @mr_mip, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, ptr %44, i32 0, i32 0
  store i32 %43, ptr %45, align 4
  %46 = load ptr, ptr @mr_mip, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, ptr %46, i32 0, i32 1
  store i32 1, ptr %47, align 4
  %48 = load i32, ptr %3, align 4
  %49 = load ptr, ptr @mr_mip, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, ptr %49, i32 0, i32 2
  store i32 %48, ptr %50, align 4
  %51 = load ptr, ptr @mr_mip, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i32 0, ptr %2, align 4
  br label %77

56:                                               ; preds = %42
  %57 = load i32, ptr %3, align 4
  %58 = sdiv i32 -2147483648, %57
  store i32 %58, ptr %4, align 4
  br label %59

59:                                               ; preds = %63, %56
  %60 = load i32, ptr %4, align 4
  %61 = load i32, ptr %3, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32, ptr %4, align 4
  %65 = load i32, ptr %3, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, ptr %4, align 4
  %67 = load i32, ptr %3, align 4
  %68 = load ptr, ptr @mr_mip, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = mul nsw i32 %70, %67
  store i32 %71, ptr %69, align 4
  %72 = load ptr, ptr @mr_mip, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %73, align 4
  br label %59, !llvm.loop !8

76:                                               ; preds = %59
  store i32 0, ptr %2, align 4
  br label %77

77:                                               ; preds = %76, %55, %32
  %78 = load i32, ptr %2, align 4
  ret i32 %78
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
!8 = distinct !{!8, !7}
