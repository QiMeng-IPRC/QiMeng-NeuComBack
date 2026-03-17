; ModuleID = '../benchmarks/fine_grained/exebench/kernel1080.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1080.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope2b8() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @reg, align 8
  %7 = getelementptr inbounds i32, ptr %6, i64 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %1, align 4
  %9 = load i32, ptr @inst, align 4
  %10 = and i32 %9, 7
  %11 = sext i32 %10 to i64
  store i64 %11, ptr %3, align 8
  %12 = load ptr, ptr @reg, align 8
  %13 = load i64, ptr %3, align 8
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, 63
  store i32 %17, ptr %1, align 4
  %18 = load i32, ptr @status, align 4
  %19 = and i32 %18, -3
  store i32 %19, ptr @status, align 4
  %20 = load i32, ptr %1, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = load i32, ptr @status, align 4
  %24 = and i32 %23, -2
  store i32 %24, ptr @status, align 4
  br label %51

25:                                               ; preds = %0
  %26 = load i32, ptr %1, align 4
  %27 = and i32 %26, 31
  store i32 %27, ptr %1, align 4
  %28 = load i32, ptr %2, align 4
  store i32 %28, ptr %4, align 4
  store i32 %28, ptr %5, align 4
  %29 = load i32, ptr %1, align 4
  %30 = sub nsw i32 32, %29
  %31 = load i32, ptr %5, align 4
  %32 = shl i32 %31, %30
  store i32 %32, ptr %5, align 4
  %33 = load i32, ptr %1, align 4
  %34 = load i32, ptr %4, align 4
  %35 = ashr i32 %34, %33
  store i32 %35, ptr %4, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load i32, ptr %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, ptr %4, align 4
  %39 = load i32, ptr %4, align 4
  %40 = ashr i32 %39, 31
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32, ptr @status, align 4
  %45 = or i32 %44, 1
  store i32 %45, ptr @status, align 4
  br label %49

46:                                               ; preds = %25
  %47 = load i32, ptr @status, align 4
  %48 = and i32 %47, -2
  store i32 %48, ptr @status, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, ptr %4, align 4
  store i32 %50, ptr %2, align 4
  br label %51

51:                                               ; preds = %49, %22
  %52 = load i32, ptr %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, ptr @status, align 4
  %56 = and i32 %55, -13
  store i32 %56, ptr @status, align 4
  %57 = load i32, ptr %2, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, ptr @status, align 4
  %61 = or i32 %60, 8
  store i32 %61, ptr @status, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %68

63:                                               ; preds = %51
  %64 = load i32, ptr @status, align 4
  %65 = or i32 %64, 4
  store i32 %65, ptr @status, align 4
  %66 = load i32, ptr @status, align 4
  %67 = and i32 %66, -9
  store i32 %67, ptr @status, align 4
  br label %68

68:                                               ; preds = %63, %62
  %69 = load i32, ptr %2, align 4
  %70 = load ptr, ptr @reg, align 8
  %71 = load i64, ptr %3, align 8
  %72 = getelementptr inbounds i32, ptr %70, i64 %71
  store i32 %69, ptr %72, align 4
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
