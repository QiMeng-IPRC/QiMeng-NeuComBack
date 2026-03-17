; ModuleID = '../benchmarks/fine_grained/exebench/kernel1576.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1576.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eCAP_VINTF = dso_local global i64 0, align 8
@pfnCAP_IntHandlerTable = dso_local global ptr null, align 8
@eCAP_ADDRMINTF = dso_local global i64 0, align 8
@eCAP_MEINTF = dso_local global i64 0, align 8
@eCAP_MDINTF = dso_local global i64 0, align 8
@E_CAP_INVALID_INT = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CAP_InstallCallback(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load i64, ptr %5, align 8
  %9 = load i64, ptr @eCAP_VINTF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8
  %13 = getelementptr inbounds i64, ptr %12, i64 0
  %14 = load i64, ptr %13, align 8
  %15 = load ptr, ptr %7, align 8
  store i64 %14, ptr %15, align 8
  %16 = load i64, ptr %6, align 8
  %17 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 0
  store i64 %16, ptr %18, align 8
  br label %60

19:                                               ; preds = %3
  %20 = load i64, ptr %5, align 8
  %21 = load i64, ptr @eCAP_ADDRMINTF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8
  %25 = getelementptr inbounds i64, ptr %24, i64 1
  %26 = load i64, ptr %25, align 8
  %27 = load ptr, ptr %7, align 8
  store i64 %26, ptr %27, align 8
  %28 = load i64, ptr %6, align 8
  %29 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8
  %30 = getelementptr inbounds i64, ptr %29, i64 1
  store i64 %28, ptr %30, align 8
  br label %59

31:                                               ; preds = %19
  %32 = load i64, ptr %5, align 8
  %33 = load i64, ptr @eCAP_MEINTF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8
  %37 = getelementptr inbounds i64, ptr %36, i64 2
  %38 = load i64, ptr %37, align 8
  %39 = load ptr, ptr %7, align 8
  store i64 %38, ptr %39, align 8
  %40 = load i64, ptr %6, align 8
  %41 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8
  %42 = getelementptr inbounds i64, ptr %41, i64 2
  store i64 %40, ptr %42, align 8
  br label %58

43:                                               ; preds = %31
  %44 = load i64, ptr %5, align 8
  %45 = load i64, ptr @eCAP_MDINTF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8
  %49 = getelementptr inbounds i64, ptr %48, i64 3
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %7, align 8
  store i64 %50, ptr %51, align 8
  %52 = load i64, ptr %6, align 8
  %53 = load ptr, ptr @pfnCAP_IntHandlerTable, align 8
  %54 = getelementptr inbounds i64, ptr %53, i64 3
  store i64 %52, ptr %54, align 8
  br label %57

55:                                               ; preds = %43
  %56 = load i32, ptr @E_CAP_INVALID_INT, align 4
  store i32 %56, ptr %4, align 4
  br label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59, %11
  store i32 0, ptr %4, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, ptr %4, align 4
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
