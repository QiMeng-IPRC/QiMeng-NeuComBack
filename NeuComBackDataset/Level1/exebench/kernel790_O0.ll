; ModuleID = '../benchmarks/fine_grained/exebench/kernel790.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel790.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { ptr }
%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@g = dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @formatVfs() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %26, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %29

5:                                                ; preds = %2
  %6 = load ptr, ptr @g, align 8
  %7 = load i32, ptr %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %9, i32 0, i32 0
  store i32 -1, ptr %10, align 8
  %11 = load ptr, ptr @g, align 8
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 3
  store i64 0, ptr %15, align 8
  %16 = load ptr, ptr @g, align 8
  %17 = load i32, ptr %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 2
  store i64 0, ptr %20, align 8
  %21 = load ptr, ptr @g, align 8
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, ptr %24, i32 0, i32 1
  store i64 0, ptr %25, align 8
  br label %26

26:                                               ; preds = %5
  %27 = load i32, ptr %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %1, align 4
  br label %2, !llvm.loop !6

29:                                               ; preds = %2
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
