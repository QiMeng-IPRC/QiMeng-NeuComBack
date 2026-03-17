; ModuleID = '../benchmarks/fine_grained/exebench/kernel1148.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1148.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Opdf00() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @reg, align 8
  %5 = load i32, ptr @inst, align 4
  %6 = and i32 %5, 7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i64, ptr %4, i64 %7
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %1, align 8
  store i64 7, ptr %3, align 8
  %10 = load ptr, ptr @reg, align 8
  %11 = load i64, ptr %3, align 8
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %2, align 8
  %14 = load i64, ptr %2, align 8
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i64, ptr %1, align 8
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, ptr @status, align 4
  %23 = or i32 %22, 2
  store i32 %23, ptr @status, align 4
  br label %27

24:                                               ; preds = %0
  %25 = load i32, ptr @status, align 4
  %26 = and i32 %25, -3
  store i32 %26, ptr @status, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, ptr @status, align 4
  %29 = and i32 %28, 16
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i64, ptr %1, align 8
  %33 = load i64, ptr %2, align 8
  %34 = xor i64 %33, -1
  %35 = icmp sge i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, ptr @status, align 4
  %38 = or i32 %37, 17
  store i32 %38, ptr @status, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load i32, ptr @status, align 4
  %41 = and i32 %40, -18
  store i32 %41, ptr @status, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, ptr %1, align 8
  %44 = add nsw i64 %43, 1
  %45 = load i64, ptr %2, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, ptr %2, align 8
  br label %62

47:                                               ; preds = %27
  %48 = load i64, ptr %1, align 8
  %49 = load i64, ptr %2, align 8
  %50 = xor i64 %49, -1
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, ptr @status, align 4
  %54 = or i32 %53, 17
  store i32 %54, ptr @status, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i32, ptr @status, align 4
  %57 = and i32 %56, -18
  store i32 %57, ptr @status, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, ptr %1, align 8
  %60 = load i64, ptr %2, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, ptr %2, align 8
  br label %62

62:                                               ; preds = %58, %42
  %63 = load i32, ptr @status, align 4
  %64 = and i32 %63, 2
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i64, ptr %2, align 8
  %68 = icmp slt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i64, ptr %1, align 8
  %71 = icmp slt i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, ptr @status, align 4
  %76 = or i32 %75, 2
  store i32 %76, ptr @status, align 4
  br label %80

77:                                               ; preds = %66, %62
  %78 = load i32, ptr @status, align 4
  %79 = and i32 %78, -3
  store i32 %79, ptr @status, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, ptr %2, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, ptr @status, align 4
  %85 = and i32 %84, 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %91

87:                                               ; preds = %80
  br i1 false, label %88, label %91

88:                                               ; preds = %87, %83
  %89 = load i32, ptr @status, align 4
  %90 = or i32 %89, 4
  store i32 %90, ptr @status, align 4
  br label %94

91:                                               ; preds = %87, %83
  %92 = load i32, ptr @status, align 4
  %93 = and i32 %92, -5
  store i32 %93, ptr @status, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i64, ptr %2, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, ptr @status, align 4
  %99 = or i32 %98, 8
  store i32 %99, ptr @status, align 4
  br label %103

100:                                              ; preds = %94
  %101 = load i32, ptr @status, align 4
  %102 = and i32 %101, -9
  store i32 %102, ptr @status, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i64, ptr %2, align 8
  %105 = load ptr, ptr @reg, align 8
  %106 = load i64, ptr %3, align 8
  %107 = getelementptr inbounds i64, ptr %105, i64 %106
  store i64 %104, ptr %107, align 8
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
