; ModuleID = '../benchmarks/fine_grained/exebench/kernel820.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel820.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, ptr, ptr }
%struct.TYPE_7__ = type { i64, i64 }

@MLAN_STATUS_SUCCESS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_uap_cmd_txdatapause(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, ptr %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, ptr %12, i32 0, i32 0
  store ptr %13, ptr %9, align 8
  %14 = load ptr, ptr %8, align 8
  store ptr %14, ptr %10, align 8
  br label %15

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, ptr %17, i32 0, i32 0
  store i32 259, ptr %18, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, ptr %19, i32 0, i32 1
  store i32 28, ptr %20, align 4
  %21 = load i32, ptr %7, align 4
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, ptr %22, i32 0, i32 0
  store i32 %21, ptr %23, align 8
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %16
  %27 = load ptr, ptr %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, ptr %27, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = inttoptr i64 %29 to ptr
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, ptr %31, i32 0, i32 2
  store ptr %30, ptr %32, align 8
  %33 = load ptr, ptr %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, ptr %33, i32 0, i32 0
  %35 = load i64, ptr %34, align 8
  %36 = inttoptr i64 %35 to ptr
  %37 = load ptr, ptr %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 8
  br label %39

39:                                               ; preds = %26, %16
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @MLAN_STATUS_SUCCESS, align 4
  ret i32 %42
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
