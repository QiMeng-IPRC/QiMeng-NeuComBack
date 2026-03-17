; ModuleID = '../benchmarks/fine_grained/exebench/kernel668.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel668.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dps_calc_io_data_len_syntax(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store i32 %0, ptr %7, align 4
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %61

14:                                               ; preds = %5
  %15 = load ptr, ptr %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 0
  store i32 0, ptr %16, align 8
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 4
  store i64 0, ptr %18, align 8
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 3
  store i64 0, ptr %20, align 8
  %21 = load ptr, ptr %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %21, i32 0, i32 2
  store i64 0, ptr %22, align 8
  %23 = load i32, ptr %7, align 4
  %24 = icmp sgt i32 %23, 244
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, ptr %26, i32 0, i32 0
  store i32 4, ptr %27, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, ptr %28, i32 0, i32 1
  store i32 196620, ptr %29, align 4
  br label %57

30:                                               ; preds = %14
  %31 = load ptr, ptr %8, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %34, i32 0, i32 0
  store i32 4, ptr %35, align 8
  %36 = load ptr, ptr %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, ptr %36, i32 0, i32 1
  store i32 196621, ptr %37, align 4
  br label %56

38:                                               ; preds = %30
  %39 = load ptr, ptr %9, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, ptr %42, i32 0, i32 0
  store i32 4, ptr %43, align 8
  %44 = load ptr, ptr %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, ptr %44, i32 0, i32 1
  store i32 196622, ptr %45, align 4
  br label %55

46:                                               ; preds = %38
  %47 = load ptr, ptr %10, align 8
  %48 = icmp ne ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, ptr %50, i32 0, i32 0
  store i32 4, ptr %51, align 8
  %52 = load ptr, ptr %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, ptr %52, i32 0, i32 1
  store i32 196623, ptr %53, align 4
  br label %54

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54, %41
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %25
  %58 = load ptr, ptr %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 8
  store i32 %60, ptr %6, align 4
  br label %62

61:                                               ; preds = %5
  store i32 4, ptr %6, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, ptr %6, align 4
  ret i32 %63
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
