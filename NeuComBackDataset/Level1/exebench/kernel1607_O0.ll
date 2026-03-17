; ModuleID = '../benchmarks/fine_grained/exebench/kernel1607.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1607.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Opec10() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 6, ptr %1, align 4
  %6 = load i32, ptr @inst, align 4
  %7 = and i32 %6, 7
  %8 = sext i32 %7 to i64
  store i64 %8, ptr %3, align 8
  %9 = load ptr, ptr @reg, align 8
  %10 = load i64, ptr %3, align 8
  %11 = getelementptr inbounds i64, ptr %9, i64 %10
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %2, align 4
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, 63
  store i32 %15, ptr %1, align 4
  %16 = load i32, ptr @status, align 4
  %17 = and i32 %16, -3
  store i32 %17, ptr @status, align 4
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %0
  %21 = load i32, ptr @status, align 4
  %22 = and i32 %21, 16
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, ptr @status, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr @status, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32, ptr @status, align 4
  %29 = and i32 %28, -2
  store i32 %29, ptr @status, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %72

31:                                               ; preds = %0
  %32 = load i32, ptr %1, align 4
  %33 = srem i32 %32, 9
  store i32 %33, ptr %1, align 4
  %34 = load i32, ptr %2, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, ptr %4, align 8
  %36 = load i32, ptr @status, align 4
  %37 = and i32 %36, 16
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = shl i64 %42, 8
  %44 = load i64, ptr %4, align 8
  %45 = or i64 %44, %43
  store i64 %45, ptr %4, align 8
  %46 = load i64, ptr %4, align 8
  store i64 %46, ptr %5, align 8
  %47 = load i32, ptr %1, align 4
  %48 = sub nsw i32 9, %47
  %49 = load i64, ptr %5, align 8
  %50 = zext i32 %48 to i64
  %51 = shl i64 %49, %50
  store i64 %51, ptr %5, align 8
  %52 = load i32, ptr %1, align 4
  %53 = load i64, ptr %4, align 8
  %54 = zext i32 %52 to i64
  %55 = lshr i64 %53, %54
  store i64 %55, ptr %4, align 8
  %56 = load i64, ptr %5, align 8
  %57 = load i64, ptr %4, align 8
  %58 = or i64 %57, %56
  store i64 %58, ptr %4, align 8
  %59 = load i64, ptr %4, align 8
  %60 = lshr i64 %59, 8
  %61 = and i64 %60, 1
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %31
  %64 = load i32, ptr @status, align 4
  %65 = or i32 %64, 17
  store i32 %65, ptr @status, align 4
  br label %69

66:                                               ; preds = %31
  %67 = load i32, ptr @status, align 4
  %68 = and i32 %67, -18
  store i32 %68, ptr @status, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i64, ptr %4, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, ptr %2, align 4
  br label %72

72:                                               ; preds = %69, %30
  %73 = load i32, ptr %2, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, ptr @status, align 4
  %77 = and i32 %76, -13
  store i32 %77, ptr @status, align 4
  %78 = load i32, ptr %2, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, ptr @status, align 4
  %82 = or i32 %81, 8
  store i32 %82, ptr @status, align 4
  br label %83

83:                                               ; preds = %80, %75
  br label %89

84:                                               ; preds = %72
  %85 = load i32, ptr @status, align 4
  %86 = or i32 %85, 4
  store i32 %86, ptr @status, align 4
  %87 = load i32, ptr @status, align 4
  %88 = and i32 %87, -9
  store i32 %88, ptr @status, align 4
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i32, ptr %2, align 4
  %91 = load ptr, ptr @reg, align 8
  %92 = load i64, ptr %3, align 8
  %93 = getelementptr inbounds i64, ptr %91, i64 %92
  store i32 %90, ptr %93, align 4
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
