; ModuleID = '../benchmarks/fine_grained/exebench/kernel1057.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1057.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op5780() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 3, ptr %1, align 8
  %4 = load i32, ptr @inst, align 4
  %5 = and i32 %4, 7
  %6 = sext i32 %5 to i64
  store i64 %6, ptr %3, align 8
  %7 = load ptr, ptr @reg, align 8
  %8 = load i64, ptr %3, align 8
  %9 = getelementptr inbounds i64, ptr %7, i64 %8
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %2, align 8
  %11 = load i64, ptr %2, align 8
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load i64, ptr %1, align 8
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, ptr @status, align 4
  %20 = or i32 %19, 2
  store i32 %20, ptr @status, align 4
  br label %24

21:                                               ; preds = %0
  %22 = load i32, ptr @status, align 4
  %23 = and i32 %22, -3
  store i32 %23, ptr @status, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, ptr %1, align 8
  %26 = load i64, ptr %2, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, ptr @status, align 4
  %30 = or i32 %29, 17
  store i32 %30, ptr @status, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i32, ptr @status, align 4
  %33 = and i32 %32, -18
  store i32 %33, ptr @status, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i64, ptr %1, align 8
  %36 = load i64, ptr %2, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, ptr %2, align 8
  %38 = load i32, ptr @status, align 4
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load i64, ptr %2, align 8
  %43 = icmp slt i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i64, ptr %1, align 8
  %46 = icmp slt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, ptr @status, align 4
  %51 = or i32 %50, 2
  store i32 %51, ptr @status, align 4
  br label %55

52:                                               ; preds = %41, %34
  %53 = load i32, ptr @status, align 4
  %54 = and i32 %53, -3
  store i32 %54, ptr @status, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, ptr %2, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, ptr @status, align 4
  %60 = and i32 %59, -13
  store i32 %60, ptr @status, align 4
  %61 = load i64, ptr %2, align 8
  %62 = icmp slt i64 %61, 0
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
  %71 = and i32 %70, -9
  store i32 %71, ptr @status, align 4
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i64, ptr %2, align 8
  %74 = load ptr, ptr @reg, align 8
  %75 = load i64, ptr %3, align 8
  %76 = getelementptr inbounds i64, ptr %74, i64 %75
  store i64 %73, ptr %76, align 8
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
