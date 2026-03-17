; ModuleID = '../benchmarks/fine_grained/exebench/kernel429.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel429.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope860() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @reg, align 8
  %5 = getelementptr inbounds i64, ptr %4, i64 4
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %1, align 4
  %8 = load i32, ptr @inst, align 4
  %9 = and i32 %8, 7
  %10 = sext i32 %9 to i64
  store i64 %10, ptr %3, align 8
  %11 = load ptr, ptr @reg, align 8
  %12 = load i64, ptr %3, align 8
  %13 = getelementptr inbounds i64, ptr %11, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, 63
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %0
  %20 = load i32, ptr @status, align 4
  %21 = and i32 %20, -3
  store i32 %21, ptr @status, align 4
  %22 = load i32, ptr %1, align 4
  %23 = and i32 %22, 63
  %24 = sub nsw i32 %23, 1
  %25 = load i32, ptr %2, align 4
  %26 = ashr i32 %25, %24
  store i32 %26, ptr %2, align 4
  %27 = load i32, ptr %2, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, ptr @status, align 4
  %32 = or i32 %31, 17
  store i32 %32, ptr @status, align 4
  br label %36

33:                                               ; preds = %19
  %34 = load i32, ptr @status, align 4
  %35 = and i32 %34, -18
  store i32 %35, ptr @status, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, ptr %2, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, ptr %2, align 4
  %39 = load i32, ptr %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, ptr @status, align 4
  %43 = and i32 %42, -13
  store i32 %43, ptr @status, align 4
  %44 = load i32, ptr %2, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, ptr @status, align 4
  %48 = or i32 %47, 8
  store i32 %48, ptr @status, align 4
  br label %49

49:                                               ; preds = %46, %41
  br label %55

50:                                               ; preds = %36
  %51 = load i32, ptr @status, align 4
  %52 = or i32 %51, 4
  store i32 %52, ptr @status, align 4
  %53 = load i32, ptr @status, align 4
  %54 = and i32 %53, -9
  store i32 %54, ptr @status, align 4
  br label %55

55:                                               ; preds = %50, %49
  br label %74

56:                                               ; preds = %0
  %57 = load i32, ptr %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, ptr @status, align 4
  %61 = and i32 %60, -16
  store i32 %61, ptr @status, align 4
  %62 = load i32, ptr %2, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, ptr @status, align 4
  %66 = or i32 %65, 8
  store i32 %66, ptr @status, align 4
  br label %67

67:                                               ; preds = %64, %59
  br label %73

68:                                               ; preds = %56
  %69 = load i32, ptr @status, align 4
  %70 = or i32 %69, 4
  store i32 %70, ptr @status, align 4
  %71 = load i32, ptr @status, align 4
  %72 = and i32 %71, -11
  store i32 %72, ptr @status, align 4
  br label %73

73:                                               ; preds = %68, %67
  br label %74

74:                                               ; preds = %73, %55
  %75 = load i32, ptr %2, align 4
  %76 = load ptr, ptr @reg, align 8
  %77 = load i64, ptr %3, align 8
  %78 = getelementptr inbounds i64, ptr %76, i64 %77
  store i32 %75, ptr %78, align 4
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
