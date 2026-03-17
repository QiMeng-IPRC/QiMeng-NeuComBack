; ModuleID = '../benchmarks/fine_grained/exebench/kernel804.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel804.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L = dso_local global i32 0, align 4
@F = dso_local global i32 0, align 4
@parrity = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_srll() #0 {
  %1 = load i32, ptr @L, align 4
  %2 = and i32 %1, 1
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, ptr @F, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr @F, align 4
  br label %10

7:                                                ; preds = %0
  %8 = load i32, ptr @F, align 4
  %9 = and i32 %8, -2
  store i32 %9, ptr @F, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %6, %4 ], [ %9, %7 ]
  %12 = load i32, ptr @L, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, ptr @L, align 4
  %14 = load i32, ptr @F, align 4
  %15 = and i32 %14, -19
  store i32 %15, ptr @F, align 4
  %16 = load i32, ptr @L, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, ptr @F, align 4
  %20 = and i32 %19, -65
  store i32 %20, ptr @F, align 4
  br label %24

21:                                               ; preds = %10
  %22 = load i32, ptr @F, align 4
  %23 = or i32 %22, 64
  store i32 %23, ptr @F, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  %26 = load i32, ptr @L, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, ptr @F, align 4
  %31 = or i32 %30, 128
  store i32 %31, ptr @F, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, ptr @F, align 4
  %34 = and i32 %33, -129
  store i32 %34, ptr @F, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %34, %32 ]
  %37 = load ptr, ptr @parrity, align 8
  %38 = load i32, ptr @L, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, ptr %37, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, ptr @F, align 4
  %45 = and i32 %44, -5
  store i32 %45, ptr @F, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i32, ptr @F, align 4
  %48 = or i32 %47, 4
  store i32 %48, ptr @F, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ]
  ret i32 8
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
