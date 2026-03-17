; ModuleID = '../benchmarks/fine_grained/exebench/kernel638.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel638.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@source_format = dso_local global i32 0, align 4
@video_width = dso_local global i32 0, align 4
@video_height = dso_local global i32 0, align 4
@scaler_src = dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@scaler_dst = dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@overlay = dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sequence_type = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcc_set_video_output(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, ptr %10, align 4
  store i32 %1, ptr %11, align 4
  store i32 %2, ptr %12, align 4
  store i32 %3, ptr %13, align 4
  store i32 %4, ptr %14, align 4
  store i32 %5, ptr %15, align 4
  store i32 %6, ptr %16, align 4
  store i32 %7, ptr %17, align 4
  store i32 %8, ptr %18, align 4
  %19 = load i32, ptr %17, align 4
  store i32 %19, ptr @source_format, align 4
  %20 = load i32, ptr %10, align 4
  store i32 %20, ptr @video_width, align 4
  %21 = load i32, ptr %11, align 4
  store i32 %21, ptr @video_height, align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i32 0, i32 7), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i32 0, i32 6), align 8
  %22 = load i32, ptr %10, align 4
  store i32 %22, ptr @scaler_src, align 8
  %23 = load i32, ptr %11, align 4
  store i32 %23, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i32 0, i32 1), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i32 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i32 0, i32 4), align 8
  %24 = load i32, ptr %10, align 4
  store i32 %24, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i32 0, i32 2), align 8
  %25 = load i32, ptr %11, align 4
  store i32 %25, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @scaler_src, i32 0, i32 3), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @scaler_dst, i32 0, i32 3), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @scaler_dst, i32 0, i32 2), align 8
  %26 = load i32, ptr %15, align 4
  store i32 %26, ptr @scaler_dst, align 8
  %27 = load i32, ptr %16, align 4
  store i32 %27, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @scaler_dst, i32 0, i32 1), align 4
  %28 = load i32, ptr %13, align 4
  store i32 %28, ptr @overlay, align 4
  %29 = load i32, ptr %14, align 4
  store i32 %29, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @overlay, i32 0, i32 1), align 4
  %30 = load i32, ptr %15, align 4
  store i32 %30, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @overlay, i32 0, i32 2), align 4
  %31 = load i32, ptr %16, align 4
  store i32 %31, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @overlay, i32 0, i32 3), align 4
  store i64 0, ptr @sequence_type, align 8
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
