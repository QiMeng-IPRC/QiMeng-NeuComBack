; ModuleID = '../benchmarks/fine_grained/exebench/kernel36.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel36.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@GATT_HANDLE_VALUE_CONF = dso_local global i64 0, align 8
@GATT_CMD_WRITE = dso_local global i64 0, align 8
@GATT_SIGN_CMD_WRITE = dso_local global i64 0, align 8
@GATT_REQ_MTU = dso_local global i64 0, align 8
@GATT_NOT_FOUND = dso_local global i32 0, align 4
@GATT_TRANS_ID_MAX = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_sr_enqueue_cmd(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %9, i32 0, i32 1
  store ptr %10, ptr %7, align 8
  store i64 0, ptr %8, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %11, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, ptr %5, align 8
  %17 = load i64, ptr @GATT_HANDLE_VALUE_CONF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %15, %3
  %20 = load i64, ptr %5, align 8
  %21 = load i64, ptr @GATT_CMD_WRITE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %5, align 8
  %25 = load i64, ptr @GATT_SIGN_CMD_WRITE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i64, ptr %5, align 8
  %29 = load i64, ptr @GATT_REQ_MTU, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, ptr %5, align 8
  %33 = load i64, ptr @GATT_HANDLE_VALUE_CONF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %27, %23, %19
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, ptr %36, i32 0, i32 0
  %38 = load i64, ptr %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, ptr %37, align 8
  store i64 %39, ptr %8, align 8
  br label %64

40:                                               ; preds = %31
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, ptr %41, i32 0, i32 0
  %43 = load i64, ptr %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %42, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, ptr %45, i32 0, i32 1
  store i64 %44, ptr %46, align 8
  %47 = load i64, ptr %5, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, ptr %48, i32 0, i32 0
  store i64 %47, ptr %49, align 8
  %50 = load i32, ptr %6, align 4
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, ptr %51, i32 0, i32 3
  store i32 %50, ptr %52, align 4
  %53 = load i32, ptr @GATT_NOT_FOUND, align 4
  %54 = load ptr, ptr %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, ptr %54, i32 0, i32 2
  store i32 %53, ptr %55, align 8
  %56 = load i64, ptr @GATT_TRANS_ID_MAX, align 8
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, ptr %57, i32 0, i32 0
  %59 = load i64, ptr %58, align 8
  %60 = srem i64 %59, %56
  store i64 %60, ptr %58, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, ptr %61, i32 0, i32 1
  %63 = load i64, ptr %62, align 8
  store i64 %63, ptr %8, align 8
  br label %64

64:                                               ; preds = %40, %35
  br label %65

65:                                               ; preds = %64, %15
  %66 = load i64, ptr %8, align 8
  ret i64 %66
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
