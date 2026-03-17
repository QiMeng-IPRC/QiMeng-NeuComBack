; ModuleID = '../benchmarks/fine_grained/exebench/kernel956.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel956.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@areg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Opb648() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @areg, align 8
  %6 = load i32, ptr @inst, align 4
  %7 = and i32 %6, 7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, ptr %5, i64 %8
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %1, align 8
  store i64 3, ptr %3, align 8
  %11 = load ptr, ptr @reg, align 8
  %12 = load i64, ptr %3, align 8
  %13 = getelementptr inbounds i64, ptr %11, i64 %12
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %2, align 8
  %15 = load i64, ptr %2, align 8
  %16 = load i64, ptr %1, align 8
  %17 = sub nsw i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %4, align 4
  %19 = load i64, ptr %1, align 8
  %20 = load i64, ptr %2, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = load i32, ptr @status, align 4
  %24 = or i32 %23, 1
  store i32 %24, ptr @status, align 4
  br label %28

25:                                               ; preds = %0
  %26 = load i32, ptr @status, align 4
  %27 = and i32 %26, -2
  store i32 %27, ptr @status, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, ptr %4, align 4
  %30 = icmp slt i32 %29, -32768
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 4
  %33 = icmp sgt i32 %32, 32767
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %28
  %35 = load i32, ptr @status, align 4
  %36 = or i32 %35, 2
  store i32 %36, ptr @status, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load i32, ptr @status, align 4
  %39 = and i32 %38, -3
  store i32 %39, ptr @status, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, ptr %4, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, ptr @status, align 4
  %46 = and i32 %45, -13
  store i32 %46, ptr @status, align 4
  %47 = load i32, ptr %4, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, ptr @status, align 4
  %52 = or i32 %51, 8
  store i32 %52, ptr @status, align 4
  br label %53

53:                                               ; preds = %50, %44
  br label %59

54:                                               ; preds = %40
  %55 = load i32, ptr @status, align 4
  %56 = or i32 %55, 4
  store i32 %56, ptr @status, align 4
  %57 = load i32, ptr @status, align 4
  %58 = and i32 %57, -9
  store i32 %58, ptr @status, align 4
  br label %59

59:                                               ; preds = %54, %53
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
