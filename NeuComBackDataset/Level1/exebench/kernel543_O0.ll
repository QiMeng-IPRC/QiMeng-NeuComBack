; ModuleID = '../benchmarks/fine_grained/exebench/kernel543.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@MLAN_STATUS_SUCCESS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_cmd_802_11_rf_antenna(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %11, i32 0, i32 0
  store ptr %12, ptr %9, align 8
  br label %13

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, ptr %17, i32 0, i32 0
  store i32 32, ptr %18, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, ptr %19, i32 0, i32 1
  store i32 12, ptr %20, align 4
  %21 = load i32, ptr %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, ptr %24, i32 0, i32 0
  store i32 3, ptr %25, align 4
  %26 = load ptr, ptr %8, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, ptr %28, i32 0, i32 1
  store i32 %27, ptr %29, align 4
  br label %33

30:                                               ; preds = %16
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, ptr %31, i32 0, i32 0
  store i32 12, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33
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
