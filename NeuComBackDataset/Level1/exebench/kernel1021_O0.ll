; ModuleID = '../benchmarks/fine_grained/exebench/kernel1021.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1021.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@pref_screenwidth = dso_local global i32 0, align 4
@COLS = dso_local global i32 0, align 4
@pref_screenheight = dso_local global i32 0, align 4
@LINES = dso_local global i32 0, align 4
@content_box = dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pref_messageline = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_content_box() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, ptr @pref_screenwidth, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, ptr @pref_screenwidth, align 4
  store i32 %6, ptr %1, align 4
  br label %9

7:                                                ; preds = %0
  %8 = load i32, ptr @COLS, align 4
  store i32 %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = load i32, ptr @pref_screenheight, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, ptr @pref_screenheight, align 4
  store i32 %13, ptr %2, align 4
  br label %16

14:                                               ; preds = %9
  %15 = load i32, ptr @LINES, align 4
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %12
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @content_box, i32 0, i32 3), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @content_box, i32 0, i32 2), align 8
  %17 = load i32, ptr %1, align 4
  store i32 %17, ptr @content_box, align 8
  %18 = load i32, ptr %2, align 4
  store i32 %18, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @content_box, i32 0, i32 1), align 4
  %19 = load i64, ptr @pref_messageline, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, ptr %2, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @content_box, i32 0, i32 1), align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @content_box, i32 0, i32 1), align 4
  br label %27

27:                                               ; preds = %24, %21, %16
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
