; ModuleID = '../benchmarks/fine_grained/exebench/kernel81.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel81.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dxo_fieldannotation(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  br label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, ptr %7, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, ptr %10, i32 0, i32 0
  %12 = load i64, ptr %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, ptr %15, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, ptr %19, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  %22 = add nsw i64 %21, %17
  store i64 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %14, %5
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, ptr %26, i32 0, i32 0
  %28 = load i64, ptr %27, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, ptr %29, i32 0, i32 0
  %31 = load i64, ptr %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, ptr %34, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, ptr %37, i32 0, i32 0
  %39 = load i64, ptr %38, align 8
  %40 = add nsw i64 %39, %36
  store i64 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %33, %25
  br label %42

42:                                               ; preds = %41
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
