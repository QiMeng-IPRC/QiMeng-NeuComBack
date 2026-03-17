; ModuleID = '../benchmarks/fine_grained/exebench/kernel676.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel676.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope690() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 3, ptr %1, align 4
  %6 = load i32, ptr @inst, align 4
  %7 = and i32 %6, 7
  %8 = sext i32 %7 to i64
  store i64 %8, ptr %3, align 8
  %9 = load ptr, ptr @reg, align 8
  %10 = load i64, ptr %3, align 8
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %2, align 4
  %13 = load i32, ptr %1, align 4
  %14 = and i32 %13, 63
  store i32 %14, ptr %1, align 4
  %15 = load i32, ptr @status, align 4
  %16 = and i32 %15, -3
  store i32 %16, ptr @status, align 4
  %17 = load i32, ptr %1, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %0
  %20 = load i32, ptr @status, align 4
  %21 = and i32 %20, 16
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr @status, align 4
  %25 = or i32 %24, 1
  store i32 %25, ptr @status, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32, ptr @status, align 4
  %28 = and i32 %27, -2
  store i32 %28, ptr @status, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %72

30:                                               ; preds = %0
  %31 = load i32, ptr %1, align 4
  %32 = srem i32 %31, 33
  store i32 %32, ptr %1, align 4
  %33 = load i32, ptr %2, align 4
  store i32 %33, ptr %4, align 4
  store i32 %33, ptr %5, align 4
  %34 = load i32, ptr %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %30
  %37 = load i32, ptr %5, align 4
  %38 = shl i32 %37, 1
  store i32 %38, ptr %5, align 4
  %39 = load i32, ptr @status, align 4
  %40 = and i32 %39, 16
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, ptr %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, ptr %5, align 4
  %47 = load i32, ptr %1, align 4
  %48 = sub nsw i32 32, %47
  %49 = load i32, ptr %5, align 4
  %50 = shl i32 %49, %48
  store i32 %50, ptr %5, align 4
  %51 = load i32, ptr %1, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, ptr %4, align 4
  %54 = ashr i32 %53, %52
  store i32 %54, ptr %4, align 4
  %55 = load i32, ptr %4, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %36
  %59 = load i32, ptr @status, align 4
  %60 = or i32 %59, 17
  store i32 %60, ptr @status, align 4
  br label %64

61:                                               ; preds = %36
  %62 = load i32, ptr @status, align 4
  %63 = and i32 %62, -18
  store i32 %63, ptr @status, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, ptr %4, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, ptr %4, align 4
  %67 = load i32, ptr %5, align 4
  %68 = load i32, ptr %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, ptr %4, align 4
  %70 = load i32, ptr %4, align 4
  store i32 %70, ptr %2, align 4
  br label %71

71:                                               ; preds = %64, %30
  br label %72

72:                                               ; preds = %71, %29
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
  %93 = getelementptr inbounds i32, ptr %91, i64 %92
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
