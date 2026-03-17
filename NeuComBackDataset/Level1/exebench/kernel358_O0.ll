; ModuleID = '../benchmarks/fine_grained/exebench/kernel358.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel358.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope500() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 2, ptr %1, align 4
  %5 = load i32, ptr @inst, align 4
  %6 = and i32 %5, 7
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %3, align 8
  %8 = load ptr, ptr @reg, align 8
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds i64, ptr %8, i64 %9
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %2, align 4
  %13 = load i32, ptr %1, align 4
  %14 = and i32 %13, 63
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %0
  %17 = load i32, ptr %1, align 4
  %18 = and i32 %17, 63
  %19 = ashr i32 128, %18
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %25, %26
  %28 = load i32, ptr %4, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, ptr @status, align 4
  %32 = or i32 %31, 2
  store i32 %32, ptr @status, align 4
  br label %36

33:                                               ; preds = %24, %16
  %34 = load i32, ptr @status, align 4
  %35 = and i32 %34, -3
  store i32 %35, ptr @status, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, ptr %1, align 4
  %38 = and i32 %37, 63
  %39 = sub nsw i32 %38, 1
  %40 = load i32, ptr %2, align 4
  %41 = shl i32 %40, %39
  store i32 %41, ptr %2, align 4
  %42 = load i32, ptr %2, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, ptr @status, align 4
  %47 = or i32 %46, 17
  store i32 %47, ptr @status, align 4
  br label %51

48:                                               ; preds = %36
  %49 = load i32, ptr @status, align 4
  %50 = and i32 %49, -18
  store i32 %50, ptr @status, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, ptr %2, align 4
  %53 = shl i32 %52, 1
  store i32 %53, ptr %2, align 4
  %54 = load i32, ptr %2, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, ptr @status, align 4
  %58 = and i32 %57, -13
  store i32 %58, ptr @status, align 4
  %59 = load i32, ptr %2, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, ptr @status, align 4
  %63 = or i32 %62, 8
  store i32 %63, ptr @status, align 4
  br label %64

64:                                               ; preds = %61, %56
  br label %70

65:                                               ; preds = %51
  %66 = load i32, ptr @status, align 4
  %67 = or i32 %66, 4
  store i32 %67, ptr @status, align 4
  %68 = load i32, ptr @status, align 4
  %69 = and i32 %68, -9
  store i32 %69, ptr @status, align 4
  br label %70

70:                                               ; preds = %65, %64
  br label %89

71:                                               ; preds = %0
  %72 = load i32, ptr %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, ptr @status, align 4
  %76 = and i32 %75, -16
  store i32 %76, ptr @status, align 4
  %77 = load i32, ptr %2, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, ptr @status, align 4
  %81 = or i32 %80, 8
  store i32 %81, ptr @status, align 4
  br label %82

82:                                               ; preds = %79, %74
  br label %88

83:                                               ; preds = %71
  %84 = load i32, ptr @status, align 4
  %85 = or i32 %84, 4
  store i32 %85, ptr @status, align 4
  %86 = load i32, ptr @status, align 4
  %87 = and i32 %86, -11
  store i32 %87, ptr @status, align 4
  br label %88

88:                                               ; preds = %83, %82
  br label %89

89:                                               ; preds = %88, %70
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
