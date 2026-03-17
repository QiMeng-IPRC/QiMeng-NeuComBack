; ModuleID = '../benchmarks/fine_grained/exebench/kernel1199.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1199.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope170() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @reg, align 8
  %7 = getelementptr inbounds i64, ptr %6, i64 0
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, ptr %1, align 4
  %10 = load i32, ptr @inst, align 4
  %11 = and i32 %10, 7
  %12 = sext i32 %11 to i64
  store i64 %12, ptr %3, align 8
  %13 = load ptr, ptr @reg, align 8
  %14 = load i64, ptr %3, align 8
  %15 = getelementptr inbounds i64, ptr %13, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %2, align 4
  %18 = load i32, ptr %1, align 4
  %19 = and i32 %18, 63
  store i32 %19, ptr %1, align 4
  %20 = load i32, ptr @status, align 4
  %21 = and i32 %20, -3
  store i32 %21, ptr @status, align 4
  %22 = load i32, ptr %1, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %0
  %25 = load i32, ptr @status, align 4
  %26 = and i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, ptr @status, align 4
  %30 = or i32 %29, 1
  store i32 %30, ptr @status, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i32, ptr @status, align 4
  %33 = and i32 %32, -2
  store i32 %33, ptr @status, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %73

35:                                               ; preds = %0
  %36 = load i32, ptr %1, align 4
  %37 = srem i32 %36, 17
  store i32 %37, ptr %1, align 4
  %38 = load i32, ptr %2, align 4
  %39 = sext i32 %38 to i64
  %40 = trunc i64 %39 to i32
  store i32 %40, ptr %4, align 4
  %41 = load i32, ptr @status, align 4
  %42 = and i32 %41, 16
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = shl i32 %46, 16
  %48 = load i32, ptr %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, ptr %4, align 4
  %50 = load i32, ptr %4, align 4
  store i32 %50, ptr %5, align 4
  %51 = load i32, ptr %1, align 4
  %52 = sub nsw i32 17, %51
  %53 = load i32, ptr %5, align 4
  %54 = ashr i32 %53, %52
  store i32 %54, ptr %5, align 4
  %55 = load i32, ptr %1, align 4
  %56 = load i32, ptr %4, align 4
  %57 = shl i32 %56, %55
  store i32 %57, ptr %4, align 4
  %58 = load i32, ptr %5, align 4
  %59 = load i32, ptr %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, ptr %4, align 4
  %61 = load i32, ptr %4, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %35
  %66 = load i32, ptr @status, align 4
  %67 = or i32 %66, 17
  store i32 %67, ptr @status, align 4
  br label %71

68:                                               ; preds = %35
  %69 = load i32, ptr @status, align 4
  %70 = and i32 %69, -18
  store i32 %70, ptr @status, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, ptr %4, align 4
  store i32 %72, ptr %2, align 4
  br label %73

73:                                               ; preds = %71, %34
  %74 = load i32, ptr %2, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, ptr @status, align 4
  %78 = and i32 %77, -13
  store i32 %78, ptr @status, align 4
  %79 = load i32, ptr %2, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, ptr @status, align 4
  %83 = or i32 %82, 8
  store i32 %83, ptr @status, align 4
  br label %84

84:                                               ; preds = %81, %76
  br label %90

85:                                               ; preds = %73
  %86 = load i32, ptr @status, align 4
  %87 = or i32 %86, 4
  store i32 %87, ptr @status, align 4
  %88 = load i32, ptr @status, align 4
  %89 = and i32 %88, -9
  store i32 %89, ptr @status, align 4
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i32, ptr %2, align 4
  %92 = load ptr, ptr @reg, align 8
  %93 = load i64, ptr %3, align 8
  %94 = getelementptr inbounds i64, ptr %92, i64 %93
  store i32 %91, ptr %94, align 4
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
