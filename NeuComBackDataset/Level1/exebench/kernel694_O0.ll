; ModuleID = '../benchmarks/fine_grained/exebench/kernel694.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel694.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MLAN_STATUS_SUCCESS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_cmd_mem_access(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  store ptr %9, ptr %7, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %11, i32 0, i32 0
  store ptr %12, ptr %8, align 8
  br label %13

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, ptr %17, i32 0, i32 0
  store i32 134, ptr %18, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, ptr %19, i32 0, i32 1
  store i32 16, ptr %20, align 4
  %21 = load i32, ptr %5, align 4
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, ptr %22, i32 0, i32 2
  store i32 %21, ptr %23, align 4
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, ptr %27, i32 0, i32 1
  store i32 %26, ptr %28, align 4
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, ptr %32, i32 0, i32 0
  store i32 %31, ptr %33, align 4
  br label %34

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr @MLAN_STATUS_SUCCESS, align 4
  ret i32 %38
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
