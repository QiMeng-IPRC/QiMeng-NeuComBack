; ModuleID = '../benchmarks/fine_grained/exebench/kernel1483.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1483.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_channel = type { i32, %struct.int_ch_state }
%struct.int_ch_state = type { i64, i64, i64 }

@DIM_ERR_UNDERFLOW = dso_local global i32 0, align 4
@DIM_NO_ERROR = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @channel_service(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.dim_channel, ptr %5, i32 0, i32 1
  store ptr %6, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.int_ch_state, ptr %7, i32 0, i32 0
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.int_ch_state, ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.int_ch_state, ptr %15, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr %16, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.int_ch_state, ptr %19, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, ptr @DIM_ERR_UNDERFLOW, align 4
  store i32 %24, ptr %2, align 4
  br label %36

25:                                               ; preds = %14
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.int_ch_state, ptr %26, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, ptr %27, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.dim_channel, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %25, %1
  %35 = load i32, ptr @DIM_NO_ERROR, align 4
  store i32 %35, ptr %2, align 4
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i32, ptr %2, align 4
  ret i32 %37
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
