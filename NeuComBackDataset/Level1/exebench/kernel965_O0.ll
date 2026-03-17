; ModuleID = '../benchmarks/fine_grained/exebench/kernel965.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel965.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOD_CTRL = dso_local global i32 0, align 4
@MOD_META = dso_local global i32 0, align 4
@MOD_SHIFT = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_modifiers(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  store i64 0, ptr %6, align 8
  br label %8

8:                                                ; preds = %2, %35
  %9 = load ptr, ptr %3, align 8
  %10 = load i64, ptr %6, align 8
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %20 [
    i32 67, label %14
    i32 77, label %16
    i32 83, label %18
  ]

14:                                               ; preds = %8
  %15 = load i32, ptr @MOD_CTRL, align 4
  store i32 %15, ptr %7, align 4
  br label %21

16:                                               ; preds = %8
  %17 = load i32, ptr @MOD_META, align 4
  store i32 %17, ptr %7, align 4
  br label %21

18:                                               ; preds = %8
  %19 = load i32, ptr @MOD_SHIFT, align 4
  store i32 %19, ptr %7, align 4
  br label %21

20:                                               ; preds = %8
  br label %41

21:                                               ; preds = %18, %16, %14
  %22 = load ptr, ptr %3, align 8
  %23 = load i64, ptr %6, align 8
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 45
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load i32, ptr %5, align 4
  %31 = load i32, ptr %7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %21
  br label %41

35:                                               ; preds = %29
  %36 = load i32, ptr %7, align 4
  %37 = load i32, ptr %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, ptr %5, align 4
  %39 = load i64, ptr %6, align 8
  %40 = add i64 %39, 2
  store i64 %40, ptr %6, align 8
  br label %8

41:                                               ; preds = %34, %20
  %42 = load i32, ptr %5, align 4
  %43 = load ptr, ptr %4, align 8
  store i32 %42, ptr %43, align 4
  %44 = load i64, ptr %6, align 8
  ret i64 %44
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
