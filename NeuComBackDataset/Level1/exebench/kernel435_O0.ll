; ModuleID = '../benchmarks/fine_grained/exebench/kernel435.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel435.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_frame = type { ptr }

@package_read_index = dso_local global i64 0, align 8
@nextFrameRead = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Can_Read_First_Frame(ptr %0, ptr noundef %1) #0 {
  %3 = alloca %struct.can_frame, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 0
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  store i64 0, ptr @package_read_index, align 8
  store i64 0, ptr @nextFrameRead, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %5, align 4
  %14 = add nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %12, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = load i64, ptr @package_read_index, align 8
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  store i32 %17, ptr %20, align 4
  %21 = load i64, ptr @package_read_index, align 8
  %22 = add i64 %21, 1
  store i64 %22, ptr @package_read_index, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %5, align 4
  br label %7, !llvm.loop !6

26:                                               ; preds = %7
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
