; ModuleID = '../benchmarks/fine_grained/exebench/kernel85.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel85.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@g_gwContext = dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gwTestMouseHit(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %5
  %14 = load i64, ptr @g_gwContext, align 8
  %15 = load i64, ptr %7, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i64, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @g_gwContext, i32 0, i32 1), align 8
  %19 = load i64, ptr %8, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i64, ptr @g_gwContext, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load i64, ptr %9, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp sle i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i64, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @g_gwContext, i32 0, i32 1), align 8
  %29 = load i64, ptr %8, align 8
  %30 = load i64, ptr %10, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp sle i64 %28, %31
  br label %33

33:                                               ; preds = %27, %21, %17, %13
  %34 = phi i1 [ false, %21 ], [ false, %17 ], [ false, %13 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = load ptr, ptr %6, align 8
  store i64 %36, ptr %37, align 8
  br label %38

38:                                               ; preds = %33, %5
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
