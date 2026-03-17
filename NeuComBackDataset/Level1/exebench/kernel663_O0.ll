; ModuleID = '../benchmarks/fine_grained/exebench/kernel663.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel663.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID_table = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @is_right(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ID_table, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 101
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.ID_table, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 100
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.ID_table, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 99
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.ID_table, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 98
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12, %7, %1
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.ID_table, ptr %23, i32 0, i32 1
  store i32 1, ptr %24, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.ID_table, ptr %26, i32 0, i32 1
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.ID_table, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.ID_table, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %46

38:                                               ; preds = %33, %28
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.ID_table, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.ID_table, ptr %44, i32 0, i32 1
  store i32 1, ptr %45, align 4
  br label %49

46:                                               ; preds = %38, %33
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds %struct.ID_table, ptr %47, i32 0, i32 1
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.ID_table, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.ID_table, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %67

59:                                               ; preds = %54, %49
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds %struct.ID_table, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.ID_table, ptr %65, i32 0, i32 1
  store i32 1, ptr %66, align 4
  br label %70

67:                                               ; preds = %59, %54
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.ID_table, ptr %68, i32 0, i32 1
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %67, %64
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
