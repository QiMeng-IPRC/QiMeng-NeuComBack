; ModuleID = '../benchmarks/fine_grained/exebench/kernel227.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel227.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sig_invalid_handler = dso_local global i32 0, align 4
@default_sig_handler = dso_local global ptr null, align 8
@signal_handler = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sig_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 32
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i32, ptr @sig_invalid_handler, align 4
  %7 = load ptr, ptr @default_sig_handler, align 8
  %8 = load i32, ptr %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  store i32 %6, ptr %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %1, align 4
  br label %2, !llvm.loop !6

14:                                               ; preds = %2
  %15 = load ptr, ptr @default_sig_handler, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 14
  store i32 1, ptr %16, align 4
  %17 = load ptr, ptr @default_sig_handler, align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 10
  store i32 1, ptr %18, align 4
  %19 = load ptr, ptr @default_sig_handler, align 8
  %20 = getelementptr inbounds i32, ptr %19, i64 12
  store i32 1, ptr %20, align 4
  %21 = load ptr, ptr @default_sig_handler, align 8
  %22 = getelementptr inbounds i32, ptr %21, i64 29
  store i32 1, ptr %22, align 4
  %23 = load ptr, ptr @default_sig_handler, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 21
  store i32 1, ptr %24, align 4
  store i32 0, ptr %1, align 4
  br label %25

25:                                               ; preds = %38, %14
  %26 = load i32, ptr %1, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load ptr, ptr @default_sig_handler, align 8
  %30 = load i32, ptr %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr @signal_handler, align 8
  %35 = load i32, ptr %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %34, i64 %36
  store i32 %33, ptr %37, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i32, ptr %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %1, align 4
  br label %25, !llvm.loop !8

41:                                               ; preds = %25
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
!8 = distinct !{!8, !7}
