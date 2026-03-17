; ModuleID = '../benchmarks/fine_grained/exebench/kernel1221.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1221.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }

@USB_FS_CORE_ID = dso_local global i64 0, align 8
@USB_OK = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_core_select(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %6, i32 0, i32 0
  store i32 1, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, ptr %9, i32 0, i32 1
  store i32 64, ptr %10, align 4
  %11 = load i64, ptr @USB_FS_CORE_ID, align 8
  %12 = load i64, ptr %4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load i64, ptr @USB_FS_CORE_ID, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 6
  store i64 %15, ptr %18, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, ptr %20, i32 0, i32 2
  store i32 8, ptr %21, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, ptr %23, i32 0, i32 3
  store i32 4, ptr %24, align 4
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, ptr %26, i32 0, i32 4
  store i32 320, ptr %27, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, ptr %29, i32 0, i32 5
  store i32 2, ptr %30, align 4
  br label %31

31:                                               ; preds = %14, %2
  %32 = load i32, ptr @USB_OK, align 4
  ret i32 %32
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
