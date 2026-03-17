; ModuleID = '../benchmarks/fine_grained/exebench/kernel166.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel166.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@areg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op9248() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @areg, align 8
  %6 = load i32, ptr @inst, align 4
  %7 = and i32 %6, 7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, ptr %5, i64 %8
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %1, align 4
  store i64 1, ptr %3, align 8
  %12 = load ptr, ptr @reg, align 8
  %13 = load i64, ptr %3, align 8
  %14 = getelementptr inbounds i64, ptr %12, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %2, align 4
  %17 = load i32, ptr %2, align 4
  %18 = load i32, ptr %1, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, ptr %2, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %0
  %26 = load i32, ptr @status, align 4
  %27 = or i32 %26, 17
  store i32 %27, ptr @status, align 4
  br label %31

28:                                               ; preds = %0
  %29 = load i32, ptr @status, align 4
  %30 = and i32 %29, -18
  store i32 %30, ptr @status, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, ptr %4, align 4
  %33 = icmp slt i32 %32, -32768
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %4, align 4
  %36 = icmp sgt i32 %35, 32767
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, ptr @status, align 4
  %39 = or i32 %38, 2
  store i32 %39, ptr @status, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i32, ptr @status, align 4
  %42 = and i32 %41, -3
  store i32 %42, ptr @status, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, ptr %4, align 4
  store i32 %44, ptr %2, align 4
  %45 = load i32, ptr %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, ptr @status, align 4
  %49 = and i32 %48, -13
  store i32 %49, ptr @status, align 4
  %50 = load i32, ptr %2, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, ptr @status, align 4
  %54 = or i32 %53, 8
  store i32 %54, ptr @status, align 4
  br label %55

55:                                               ; preds = %52, %47
  br label %61

56:                                               ; preds = %43
  %57 = load i32, ptr @status, align 4
  %58 = or i32 %57, 4
  store i32 %58, ptr @status, align 4
  %59 = load i32, ptr @status, align 4
  %60 = and i32 %59, -9
  store i32 %60, ptr @status, align 4
  br label %61

61:                                               ; preds = %56, %55
  %62 = load i32, ptr %2, align 4
  %63 = load ptr, ptr @reg, align 8
  %64 = load i64, ptr %3, align 8
  %65 = getelementptr inbounds i64, ptr %63, i64 %64
  store i32 %62, ptr %65, align 4
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
