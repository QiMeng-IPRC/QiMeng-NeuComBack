; ModuleID = '../benchmarks/fine_grained/exebench/kernel597.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel597.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@wPreviewScanned = dso_local global i64 0, align 8
@SANE_TRUE = dso_local global i32 0, align 4
@SANE_FALSE = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnSamplePreview(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load i64, ptr @wPreviewScanned, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %4
  %11 = trunc i64 %10 to i32
  store i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = icmp sge i32 %15, 150
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = sub nsw i32 %21, 150
  store i32 %22, ptr %20, align 4
  %23 = load i32, ptr @SANE_TRUE, align 4
  store i32 %23, ptr %2, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, ptr @SANE_FALSE, align 4
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, ptr %2, align 4
  ret i32 %27
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
