; ModuleID = '../benchmarks/fine_grained/exebench/kernel1045.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i64, ptr, i64 }

@GSU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fx_beq() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 8
  store i64 %2, ptr %1, align 8
  %3 = load ptr, ptr @GSU, align 8
  %4 = getelementptr inbounds i64, ptr %3, i64 15
  %5 = load i64, ptr %4, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, ptr %4, align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  %8 = load ptr, ptr @GSU, align 8
  %9 = getelementptr inbounds i64, ptr %8, i64 15
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i64, ptr %7, i64 %10
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 8
  %13 = load i64, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = load i64, ptr %1, align 8
  %17 = load ptr, ptr @GSU, align 8
  %18 = getelementptr inbounds i64, ptr %17, i64 15
  %19 = load i64, ptr %18, align 8
  %20 = add nsw i64 %19, %16
  store i64 %20, ptr %18, align 8
  br label %26

21:                                               ; preds = %0
  %22 = load ptr, ptr @GSU, align 8
  %23 = getelementptr inbounds i64, ptr %22, i64 15
  %24 = load i64, ptr %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %21, %15
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
