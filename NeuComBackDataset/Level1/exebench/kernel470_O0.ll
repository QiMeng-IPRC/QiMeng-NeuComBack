; ModuleID = '../benchmarks/fine_grained/exebench/kernel470.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel470.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@DpUserIdTable = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dp_get_result_syntax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %60

12:                                               ; preds = %4
  %13 = load ptr, ptr %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 0
  store i32 0, ptr %14, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, ptr %15, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 4
  store i64 0, ptr %18, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, ptr %19, i32 0, i32 3
  store i64 0, ptr %20, align 8
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i32 0, i32 2
  store i64 0, ptr %22, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %12
  %26 = load ptr, ptr %7, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, ptr %29, i32 0, i32 0
  store i32 4, ptr %30, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, ptr %31, i32 0, i32 1
  store i32 131087, ptr %32, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load i32, ptr %8, align 4
  %35 = icmp sgt i32 %34, 32
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @DpUserIdTable, align 8
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, ptr %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36, %33
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, ptr %45, i32 0, i32 0
  store i32 4, ptr %46, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, ptr %47, i32 0, i32 1
  store i32 131074, ptr %48, align 4
  br label %49

49:                                               ; preds = %44, %36
  br label %50

50:                                               ; preds = %49, %28
  br label %56

51:                                               ; preds = %12
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, ptr %52, i32 0, i32 0
  store i32 4, ptr %53, align 8
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, ptr %54, i32 0, i32 1
  store i32 131086, ptr %55, align 4
  br label %56

56:                                               ; preds = %51, %50
  %57 = load ptr, ptr %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8
  store i32 %59, ptr %5, align 4
  br label %61

60:                                               ; preds = %4
  store i32 4, ptr %5, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, ptr %5, align 4
  ret i32 %62
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
