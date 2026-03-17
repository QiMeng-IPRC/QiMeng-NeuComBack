; ModuleID = '../benchmarks/fine_grained/exebench/kernel135.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel135.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_protected_symbols = dso_local global i32 0, align 4
@protected_symbols = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ATunprotectAFun(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @nr_protected_symbols, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load ptr, ptr @protected_symbols, align 8
  %10 = load i32, ptr %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i64, ptr %9, i64 %11
  %13 = load i64, ptr %12, align 8
  %14 = load i64, ptr %2, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %8
  %17 = load ptr, ptr @protected_symbols, align 8
  %18 = load i32, ptr @nr_protected_symbols, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr @nr_protected_symbols, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, ptr %17, i64 %20
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr @protected_symbols, align 8
  %24 = load i32, ptr %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, ptr %23, i64 %25
  store i64 %22, ptr %26, align 8
  %27 = load ptr, ptr @protected_symbols, align 8
  %28 = load i32, ptr @nr_protected_symbols, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, ptr %27, i64 %29
  store i64 -1, ptr %30, align 8
  br label %35

31:                                               ; preds = %8
  br label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %3, align 4
  br label %4, !llvm.loop !6

35:                                               ; preds = %16, %4
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
