; ModuleID = '../benchmarks/fine_grained/exebench/kernel522.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel522.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@areg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Opd048() #0 {
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
  store i64 0, ptr %3, align 8
  %12 = load ptr, ptr @reg, align 8
  %13 = load i64, ptr %3, align 8
  %14 = getelementptr inbounds i64, ptr %12, i64 %13
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %2, align 4
  %17 = load i32, ptr %2, align 4
  %18 = load i32, ptr %1, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, ptr %4, align 4
  %20 = load i32, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, ptr %2, align 4
  %23 = xor i32 %22, -1
  %24 = sext i32 %23 to i64
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = load i32, ptr @status, align 4
  %28 = or i32 %27, 17
  store i32 %28, ptr @status, align 4
  br label %32

29:                                               ; preds = %0
  %30 = load i32, ptr @status, align 4
  %31 = and i32 %30, -18
  store i32 %31, ptr @status, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, ptr %4, align 4
  %34 = icmp slt i32 %33, -32768
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 4
  %37 = icmp sgt i32 %36, 32767
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %32
  %39 = load i32, ptr @status, align 4
  %40 = or i32 %39, 2
  store i32 %40, ptr @status, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32, ptr @status, align 4
  %43 = and i32 %42, -3
  store i32 %43, ptr @status, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, ptr %4, align 4
  store i32 %45, ptr %2, align 4
  %46 = load i32, ptr %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, ptr @status, align 4
  %50 = and i32 %49, -13
  store i32 %50, ptr @status, align 4
  %51 = load i32, ptr %2, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, ptr @status, align 4
  %55 = or i32 %54, 8
  store i32 %55, ptr @status, align 4
  br label %56

56:                                               ; preds = %53, %48
  br label %62

57:                                               ; preds = %44
  %58 = load i32, ptr @status, align 4
  %59 = or i32 %58, 4
  store i32 %59, ptr @status, align 4
  %60 = load i32, ptr @status, align 4
  %61 = and i32 %60, -9
  store i32 %61, ptr @status, align 4
  br label %62

62:                                               ; preds = %57, %56
  %63 = load i32, ptr %2, align 4
  %64 = load ptr, ptr @reg, align 8
  %65 = load i64, ptr %3, align 8
  %66 = getelementptr inbounds i64, ptr %64, i64 %65
  store i32 %63, ptr %66, align 4
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
