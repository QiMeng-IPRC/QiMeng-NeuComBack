; ModuleID = '../benchmarks/fine_grained/exebench/kernel1003.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1003.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recalc_send_win_size(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, ptr %6, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i64 [ %13, %10 ], [ %17, %14 ]
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %20, i32 0, i32 0
  store i64 %19, ptr %21, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, ptr %22, i32 0, i32 0
  %24 = load i64, ptr %23, align 8
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %25, i32 0, i32 3
  %27 = load i64, ptr %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, ptr %30, i32 0, i32 0
  %32 = load i64, ptr %31, align 8
  br label %37

33:                                               ; preds = %18
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, ptr %34, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, ptr %39, i32 0, i32 0
  store i64 %38, ptr %40, align 8
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
