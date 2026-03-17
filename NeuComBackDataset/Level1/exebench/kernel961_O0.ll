; ModuleID = '../benchmarks/fine_grained/exebench/kernel961.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel961.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@DpUserIdTable = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dp_get_cref_syntax(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %63

12:                                               ; preds = %4
  %13 = load ptr, ptr %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 0
  store i32 0, ptr %14, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %15, i32 0, i32 4
  store i64 0, ptr %16, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, ptr %19, i32 0, i32 3
  store i64 0, ptr %20, align 8
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i32 0, i32 2
  store i64 0, ptr %22, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, ptr %26, i32 0, i32 0
  store i32 4, ptr %27, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, ptr %28, i32 0, i32 1
  store i32 131089, ptr %29, align 4
  br label %59

30:                                               ; preds = %12
  %31 = load i32, ptr %6, align 4
  %32 = icmp uge i32 %31, 127
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, ptr %6, align 4
  %35 = icmp ne i32 %34, 255
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, ptr %37, i32 0, i32 0
  store i32 4, ptr %38, align 8
  %39 = load ptr, ptr %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, ptr %39, i32 0, i32 1
  store i32 131078, ptr %40, align 4
  br label %58

41:                                               ; preds = %33, %30
  %42 = load i32, ptr %8, align 4
  %43 = icmp sgt i32 %42, 32
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @DpUserIdTable, align 8
  %46 = load i32, ptr %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, ptr %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44, %41
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, ptr %53, i32 0, i32 0
  store i32 4, ptr %54, align 8
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, ptr %55, i32 0, i32 1
  store i32 131074, ptr %56, align 4
  br label %57

57:                                               ; preds = %52, %44
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58, %25
  %60 = load ptr, ptr %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 8
  store i32 %62, ptr %5, align 4
  br label %64

63:                                               ; preds = %4
  store i32 4, ptr %5, align 4
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32, ptr %5, align 4
  ret i32 %65
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
