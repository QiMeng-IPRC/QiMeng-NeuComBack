; ModuleID = '../benchmarks/fine_grained/exebench/kernel108.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel108.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope788() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 3, ptr %1, align 4
  %4 = load i32, ptr @inst, align 4
  %5 = and i32 %4, 7
  %6 = sext i32 %5 to i64
  store i64 %6, ptr %3, align 8
  %7 = load ptr, ptr @reg, align 8
  %8 = load i64, ptr %3, align 8
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  %11 = load i32, ptr %1, align 4
  %12 = and i32 %11, 63
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %0
  %15 = load i32, ptr @status, align 4
  %16 = and i32 %15, -3
  store i32 %16, ptr @status, align 4
  %17 = load i32, ptr %1, align 4
  %18 = and i32 %17, 63
  %19 = sub nsw i32 %18, 1
  %20 = load i32, ptr %2, align 4
  %21 = shl i32 %20, %19
  store i32 %21, ptr %2, align 4
  %22 = load i32, ptr %2, align 4
  %23 = and i32 %22, -2147483648
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, ptr @status, align 4
  %27 = or i32 %26, 17
  store i32 %27, ptr @status, align 4
  br label %31

28:                                               ; preds = %14
  %29 = load i32, ptr @status, align 4
  %30 = and i32 %29, -18
  store i32 %30, ptr @status, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, ptr %2, align 4
  %33 = shl i32 %32, 1
  store i32 %33, ptr %2, align 4
  %34 = load i32, ptr %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, ptr @status, align 4
  %38 = and i32 %37, -13
  store i32 %38, ptr @status, align 4
  %39 = load i32, ptr %2, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, ptr @status, align 4
  %43 = or i32 %42, 8
  store i32 %43, ptr @status, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %50

45:                                               ; preds = %31
  %46 = load i32, ptr @status, align 4
  %47 = or i32 %46, 4
  store i32 %47, ptr @status, align 4
  %48 = load i32, ptr @status, align 4
  %49 = and i32 %48, -9
  store i32 %49, ptr @status, align 4
  br label %50

50:                                               ; preds = %45, %44
  br label %69

51:                                               ; preds = %0
  %52 = load i32, ptr %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, ptr @status, align 4
  %56 = and i32 %55, -16
  store i32 %56, ptr @status, align 4
  %57 = load i32, ptr %2, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, ptr @status, align 4
  %61 = or i32 %60, 8
  store i32 %61, ptr @status, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %68

63:                                               ; preds = %51
  %64 = load i32, ptr @status, align 4
  %65 = or i32 %64, 4
  store i32 %65, ptr @status, align 4
  %66 = load i32, ptr @status, align 4
  %67 = and i32 %66, -11
  store i32 %67, ptr @status, align 4
  br label %68

68:                                               ; preds = %63, %62
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32, ptr %2, align 4
  %71 = load ptr, ptr @reg, align 8
  %72 = load i64, ptr %3, align 8
  %73 = getelementptr inbounds i32, ptr %71, i64 %72
  store i32 %70, ptr %73, align 4
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
