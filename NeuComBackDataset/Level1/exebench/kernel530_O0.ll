; ModuleID = '../benchmarks/fine_grained/exebench/kernel530.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel530.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ope318() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, ptr %1, align 4
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
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load i32, ptr @status, align 4
  %22 = and i32 %21, -2
  store i32 %22, ptr @status, align 4
  br label %48

23:                                               ; preds = %0
  %24 = load i32, ptr %1, align 4
  %25 = and i32 %24, 7
  store i32 %25, ptr %1, align 4
  %26 = load i32, ptr %2, align 4
  store i32 %26, ptr %4, align 4
  store i32 %26, ptr %5, align 4
  %27 = load i32, ptr %1, align 4
  %28 = sub nsw i32 8, %27
  %29 = load i32, ptr %5, align 4
  %30 = ashr i32 %29, %28
  store i32 %30, ptr %5, align 4
  %31 = load i32, ptr %1, align 4
  %32 = load i32, ptr %4, align 4
  %33 = shl i32 %32, %31
  store i32 %33, ptr %4, align 4
  %34 = load i32, ptr %5, align 4
  %35 = load i32, ptr %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, ptr %4, align 4
  %37 = load i32, ptr %4, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, ptr @status, align 4
  %42 = or i32 %41, 1
  store i32 %42, ptr @status, align 4
  br label %46

43:                                               ; preds = %23
  %44 = load i32, ptr @status, align 4
  %45 = and i32 %44, -2
  store i32 %45, ptr @status, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, ptr %4, align 4
  store i32 %47, ptr %2, align 4
  br label %48

48:                                               ; preds = %46, %20
  %49 = load i32, ptr %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, ptr @status, align 4
  %53 = and i32 %52, -13
  store i32 %53, ptr @status, align 4
  %54 = load i32, ptr %2, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, ptr @status, align 4
  %58 = or i32 %57, 8
  store i32 %58, ptr @status, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %65

60:                                               ; preds = %48
  %61 = load i32, ptr @status, align 4
  %62 = or i32 %61, 4
  store i32 %62, ptr @status, align 4
  %63 = load i32, ptr @status, align 4
  %64 = and i32 %63, -9
  store i32 %64, ptr @status, align 4
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32, ptr %2, align 4
  %67 = load ptr, ptr @reg, align 8
  %68 = load i64, ptr %3, align 8
  %69 = getelementptr inbounds i64, ptr %67, i64 %68
  store i32 %66, ptr %69, align 4
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
