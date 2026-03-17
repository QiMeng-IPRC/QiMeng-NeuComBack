; ModuleID = '../benchmarks/fine_grained/exebench/kernel467.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel467.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@valueBool = dso_local global ptr null, align 8
@valueInt = dso_local global ptr null, align 8
@valueLongLong = dso_local global ptr null, align 8
@valueDouble = dso_local global ptr null, align 8
@valuePointer = dso_local global ptr null, align 8
@valueFloat = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %46, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %49

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  %7 = srem i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 0
  %11 = sext i32 %10 to i64
  %12 = load ptr, ptr @valueBool, align 8
  %13 = load i32, ptr %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, ptr %12, i64 %14
  store i64 %11, ptr %15, align 8
  %16 = load i32, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = load ptr, ptr @valueInt, align 8
  %19 = load i32, ptr %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, ptr %18, i64 %20
  store i64 %17, ptr %21, align 8
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  %24 = load ptr, ptr @valueLongLong, align 8
  %25 = load i32, ptr %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, ptr %24, i64 %26
  store i64 %23, ptr %27, align 8
  %28 = load i32, ptr %1, align 4
  %29 = sext i32 %28 to i64
  %30 = load ptr, ptr @valueDouble, align 8
  %31 = load i32, ptr %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, ptr %30, i64 %32
  store i64 %29, ptr %33, align 8
  %34 = load i32, ptr %1, align 4
  %35 = sext i32 %34 to i64
  %36 = load ptr, ptr @valuePointer, align 8
  %37 = load i32, ptr %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, ptr %36, i64 %38
  store i64 %35, ptr %39, align 8
  %40 = load i32, ptr %1, align 4
  %41 = sext i32 %40 to i64
  %42 = load ptr, ptr @valueFloat, align 8
  %43 = load i32, ptr %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, ptr %42, i64 %44
  store i64 %41, ptr %45, align 8
  br label %46

46:                                               ; preds = %5
  %47 = load i32, ptr %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %1, align 4
  br label %2, !llvm.loop !6

49:                                               ; preds = %2
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
