; ModuleID = '../benchmarks/fine_grained/exebench/kernel857.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel857.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Opec08() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 6, ptr %1, align 4
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
  br i1 %15, label %16, label %55

16:                                               ; preds = %0
  %17 = load i32, ptr @status, align 4
  %18 = and i32 %17, -3
  store i32 %18, ptr @status, align 4
  %19 = load i32, ptr %2, align 4
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %1, align 4
  %21 = and i32 %20, 63
  %22 = sub nsw i32 %21, 1
  %23 = load i32, ptr %4, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, ptr %4, align 4
  %25 = load i32, ptr %4, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, ptr @status, align 4
  %30 = or i32 %29, 17
  store i32 %30, ptr @status, align 4
  br label %34

31:                                               ; preds = %16
  %32 = load i32, ptr @status, align 4
  %33 = and i32 %32, -18
  store i32 %33, ptr @status, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, ptr %4, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, ptr %4, align 4
  %37 = load i32, ptr %4, align 4
  store i32 %37, ptr %2, align 4
  %38 = load i32, ptr %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, ptr @status, align 4
  %42 = and i32 %41, -13
  store i32 %42, ptr @status, align 4
  %43 = load i32, ptr %2, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, ptr @status, align 4
  %47 = or i32 %46, 8
  store i32 %47, ptr @status, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %54

49:                                               ; preds = %34
  %50 = load i32, ptr @status, align 4
  %51 = or i32 %50, 4
  store i32 %51, ptr @status, align 4
  %52 = load i32, ptr @status, align 4
  %53 = and i32 %52, -9
  store i32 %53, ptr @status, align 4
  br label %54

54:                                               ; preds = %49, %48
  br label %73

55:                                               ; preds = %0
  %56 = load i32, ptr %2, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, ptr @status, align 4
  %60 = and i32 %59, -16
  store i32 %60, ptr @status, align 4
  %61 = load i32, ptr %2, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, ptr @status, align 4
  %65 = or i32 %64, 8
  store i32 %65, ptr @status, align 4
  br label %66

66:                                               ; preds = %63, %58
  br label %72

67:                                               ; preds = %55
  %68 = load i32, ptr @status, align 4
  %69 = or i32 %68, 4
  store i32 %69, ptr @status, align 4
  %70 = load i32, ptr @status, align 4
  %71 = and i32 %70, -11
  store i32 %71, ptr @status, align 4
  br label %72

72:                                               ; preds = %67, %66
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32, ptr %2, align 4
  %75 = load ptr, ptr @reg, align 8
  %76 = load i64, ptr %3, align 8
  %77 = getelementptr inbounds i64, ptr %75, i64 %76
  store i32 %74, ptr %77, align 4
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
