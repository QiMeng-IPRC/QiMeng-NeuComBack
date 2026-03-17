; ModuleID = '../benchmarks/fine_grained/exebench/kernel577.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel577.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope760() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @reg, align 8
  %6 = getelementptr inbounds i64, ptr %5, i64 3
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %1, align 4
  %9 = load i32, ptr @inst, align 4
  %10 = and i32 %9, 7
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %3, align 8
  %12 = load ptr, ptr @reg, align 8
  %13 = load i64, ptr %3, align 8
  %14 = getelementptr inbounds i64, ptr %12, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %2, align 4
  %17 = load i32, ptr %1, align 4
  %18 = and i32 %17, 63
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %0
  %21 = load i32, ptr %1, align 4
  %22 = and i32 %21, 63
  %23 = ashr i32 32768, %22
  store i32 %23, ptr %4, align 4
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %2, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i32, ptr %4, align 4
  %30 = load i32, ptr %2, align 4
  %31 = and i32 %29, %30
  %32 = load i32, ptr %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, ptr @status, align 4
  %36 = or i32 %35, 2
  store i32 %36, ptr @status, align 4
  br label %40

37:                                               ; preds = %28, %20
  %38 = load i32, ptr @status, align 4
  %39 = and i32 %38, -3
  store i32 %39, ptr @status, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, ptr %1, align 4
  %42 = and i32 %41, 63
  %43 = sub nsw i32 %42, 1
  %44 = load i32, ptr %2, align 4
  %45 = shl i32 %44, %43
  store i32 %45, ptr %2, align 4
  %46 = load i32, ptr %2, align 4
  %47 = and i32 %46, 32768
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, ptr @status, align 4
  %51 = or i32 %50, 17
  store i32 %51, ptr @status, align 4
  br label %55

52:                                               ; preds = %40
  %53 = load i32, ptr @status, align 4
  %54 = and i32 %53, -18
  store i32 %54, ptr @status, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, ptr %2, align 4
  %57 = shl i32 %56, 1
  store i32 %57, ptr %2, align 4
  %58 = load i32, ptr %2, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, ptr @status, align 4
  %62 = and i32 %61, -13
  store i32 %62, ptr @status, align 4
  %63 = load i32, ptr %2, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, ptr @status, align 4
  %67 = or i32 %66, 8
  store i32 %67, ptr @status, align 4
  br label %68

68:                                               ; preds = %65, %60
  br label %74

69:                                               ; preds = %55
  %70 = load i32, ptr @status, align 4
  %71 = or i32 %70, 4
  store i32 %71, ptr @status, align 4
  %72 = load i32, ptr @status, align 4
  %73 = and i32 %72, -9
  store i32 %73, ptr @status, align 4
  br label %74

74:                                               ; preds = %69, %68
  br label %93

75:                                               ; preds = %0
  %76 = load i32, ptr %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32, ptr @status, align 4
  %80 = and i32 %79, -16
  store i32 %80, ptr @status, align 4
  %81 = load i32, ptr %2, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, ptr @status, align 4
  %85 = or i32 %84, 8
  store i32 %85, ptr @status, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %92

87:                                               ; preds = %75
  %88 = load i32, ptr @status, align 4
  %89 = or i32 %88, 4
  store i32 %89, ptr @status, align 4
  %90 = load i32, ptr @status, align 4
  %91 = and i32 %90, -11
  store i32 %91, ptr @status, align 4
  br label %92

92:                                               ; preds = %87, %86
  br label %93

93:                                               ; preds = %92, %74
  %94 = load i32, ptr %2, align 4
  %95 = load ptr, ptr @reg, align 8
  %96 = load i64, ptr %3, align 8
  %97 = getelementptr inbounds i64, ptr %95, i64 %96
  store i32 %94, ptr %97, align 4
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
