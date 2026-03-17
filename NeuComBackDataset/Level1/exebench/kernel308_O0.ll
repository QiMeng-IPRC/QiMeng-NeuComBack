; ModuleID = '../benchmarks/fine_grained/exebench/kernel308.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel308.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y = dso_local global i32 0, align 4
@lens_width = dso_local global i32 0, align 4
@video_height = dso_local global i32 0, align 4
@x = dso_local global i32 0, align 4
@video_width = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clipmag() #0 {
  %1 = load i32, ptr @y, align 4
  %2 = load i32, ptr @lens_width, align 4
  %3 = sdiv i32 %2, 2
  %4 = sub nsw i32 0, %3
  %5 = add nsw i32 %4, 1
  %6 = icmp slt i32 %1, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, ptr @lens_width, align 4
  %9 = sdiv i32 %8, 2
  %10 = sub nsw i32 0, %9
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @y, align 4
  br label %12

12:                                               ; preds = %7, %0
  %13 = load i32, ptr @y, align 4
  %14 = load i32, ptr @video_height, align 4
  %15 = load i32, ptr @lens_width, align 4
  %16 = sdiv i32 %15, 2
  %17 = sub nsw i32 %14, %16
  %18 = sub nsw i32 %17, 1
  %19 = icmp sge i32 %13, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, ptr @video_height, align 4
  %22 = load i32, ptr @lens_width, align 4
  %23 = sdiv i32 %22, 2
  %24 = sub nsw i32 %21, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, ptr @y, align 4
  br label %26

26:                                               ; preds = %20, %12
  %27 = load i32, ptr @x, align 4
  %28 = load i32, ptr @lens_width, align 4
  %29 = sdiv i32 %28, 2
  %30 = sub nsw i32 0, %29
  %31 = add nsw i32 %30, 1
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, ptr @lens_width, align 4
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 0, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @x, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, ptr @x, align 4
  %40 = load i32, ptr @video_width, align 4
  %41 = load i32, ptr @lens_width, align 4
  %42 = sdiv i32 %41, 2
  %43 = sub nsw i32 %40, %42
  %44 = sub nsw i32 %43, 1
  %45 = icmp sge i32 %39, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, ptr @video_width, align 4
  %48 = load i32, ptr @lens_width, align 4
  %49 = sdiv i32 %48, 2
  %50 = sub nsw i32 %47, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, ptr @x, align 4
  br label %52

52:                                               ; preds = %46, %38
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
