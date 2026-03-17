; ModuleID = '../benchmarks/fine_grained/exebench/kernel882.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel882.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope9a8() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @reg, align 8
  %5 = getelementptr inbounds i32, ptr %4, i64 4
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = load i32, ptr @inst, align 4
  %8 = and i32 %7, 7
  %9 = sext i32 %8 to i64
  store i64 %9, ptr %3, align 8
  %10 = load ptr, ptr @reg, align 8
  %11 = load i64, ptr %3, align 8
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, 63
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %0
  %18 = load i32, ptr @status, align 4
  %19 = and i32 %18, -3
  store i32 %19, ptr @status, align 4
  %20 = load i32, ptr %1, align 4
  %21 = and i32 %20, 63
  %22 = sub nsw i32 %21, 1
  %23 = load i32, ptr %2, align 4
  %24 = shl i32 %23, %22
  store i32 %24, ptr %2, align 4
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %25, -2147483648
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, ptr @status, align 4
  %30 = or i32 %29, 17
  store i32 %30, ptr @status, align 4
  br label %34

31:                                               ; preds = %17
  %32 = load i32, ptr @status, align 4
  %33 = and i32 %32, -18
  store i32 %33, ptr @status, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, ptr %2, align 4
  %36 = shl i32 %35, 1
  store i32 %36, ptr %2, align 4
  %37 = load i32, ptr %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, ptr @status, align 4
  %41 = and i32 %40, -13
  store i32 %41, ptr @status, align 4
  %42 = load i32, ptr %2, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, ptr @status, align 4
  %46 = or i32 %45, 8
  store i32 %46, ptr @status, align 4
  br label %47

47:                                               ; preds = %44, %39
  br label %53

48:                                               ; preds = %34
  %49 = load i32, ptr @status, align 4
  %50 = or i32 %49, 4
  store i32 %50, ptr @status, align 4
  %51 = load i32, ptr @status, align 4
  %52 = and i32 %51, -9
  store i32 %52, ptr @status, align 4
  br label %53

53:                                               ; preds = %48, %47
  br label %72

54:                                               ; preds = %0
  %55 = load i32, ptr %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, ptr @status, align 4
  %59 = and i32 %58, -16
  store i32 %59, ptr @status, align 4
  %60 = load i32, ptr %2, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, ptr @status, align 4
  %64 = or i32 %63, 8
  store i32 %64, ptr @status, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %71

66:                                               ; preds = %54
  %67 = load i32, ptr @status, align 4
  %68 = or i32 %67, 4
  store i32 %68, ptr @status, align 4
  %69 = load i32, ptr @status, align 4
  %70 = and i32 %69, -11
  store i32 %70, ptr @status, align 4
  br label %71

71:                                               ; preds = %66, %65
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i32, ptr %2, align 4
  %74 = load ptr, ptr @reg, align 8
  %75 = load i64, ptr %3, align 8
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  store i32 %73, ptr %76, align 4
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
