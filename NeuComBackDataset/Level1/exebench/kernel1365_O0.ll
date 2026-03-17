; ModuleID = '../benchmarks/fine_grained/exebench/kernel1365.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1365.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32, i64 }

@entities = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @html_named_entity_decode(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %7, align 4
  store i64 0, ptr %8, align 8
  store i32 0, ptr %9, align 4
  %10 = load ptr, ptr %6, align 8
  store i64 0, ptr %10, align 8
  br label %11

11:                                               ; preds = %74, %55, %3
  %12 = load i64, ptr %8, align 8
  %13 = load i64, ptr %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %77

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8
  %17 = load i64, ptr %8, align 8
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load ptr, ptr @entities, align 8
  %22 = load i32, ptr %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, ptr %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, ptr %24, i32 0, i32 0
  %26 = load i8, ptr %25, align 8
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %20, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %15
  %30 = load ptr, ptr @entities, align 8
  %31 = load i32, ptr %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, ptr %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load ptr, ptr @entities, align 8
  %39 = load i32, ptr %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, ptr %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %7, align 4
  %44 = load i64, ptr %8, align 8
  %45 = add i64 %44, 1
  %46 = load ptr, ptr %6, align 8
  store i64 %45, ptr %46, align 8
  br label %47

47:                                               ; preds = %37, %29
  %48 = load ptr, ptr @entities, align 8
  %49 = load i32, ptr %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, ptr %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load ptr, ptr @entities, align 8
  %57 = load i32, ptr %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, ptr %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  store i32 %61, ptr %9, align 4
  %62 = load i64, ptr %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, ptr %8, align 8
  br label %11, !llvm.loop !6

64:                                               ; preds = %47
  br label %77

65:                                               ; preds = %15
  %66 = load ptr, ptr @entities, align 8
  %67 = load i32, ptr %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, ptr %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, ptr %69, i32 0, i32 3
  %71 = load i64, ptr %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %77

74:                                               ; preds = %65
  %75 = load i32, ptr %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %9, align 4
  br label %11, !llvm.loop !6

77:                                               ; preds = %73, %64, %11
  %78 = load i32, ptr %7, align 4
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
