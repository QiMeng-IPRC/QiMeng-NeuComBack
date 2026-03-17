; ModuleID = '../benchmarks/fine_grained/exebench/kernel198.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel198.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@asn_DEF_OTD_MeasurementWithID = dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OTD_FirstSetMsrs_1_inherit_TYPE_descriptor(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 11), align 4
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i32 0, i32 11
  store i32 %3, ptr %5, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 10), align 8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, ptr %7, i32 0, i32 10
  store i32 %6, ptr %8, align 8
  %9 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 9), align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 9
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 8), align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %13, i32 0, i32 8
  store i32 %12, ptr %14, align 8
  %15 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 7), align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, ptr %16, i32 0, i32 7
  store i32 %15, ptr %17, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 6), align 8
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, ptr %19, i32 0, i32 6
  store i32 %18, ptr %20, align 8
  %21 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 5), align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, ptr %22, i32 0, i32 5
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 4), align 8
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, ptr %25, i32 0, i32 4
  store i32 %24, ptr %26, align 8
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, ptr %27, i32 0, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load i64, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 3), align 8
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, ptr %33, i32 0, i32 3
  store i64 %32, ptr %34, align 8
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 2), align 8
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, ptr %37, i32 0, i32 2
  store i32 %36, ptr %38, align 8
  %39 = load i32, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @asn_DEF_OTD_MeasurementWithID, i32 0, i32 1), align 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, ptr %40, i32 0, i32 1
  store i32 %39, ptr %41, align 4
  %42 = load i32, ptr @asn_DEF_OTD_MeasurementWithID, align 8
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, ptr %43, i32 0, i32 0
  store i32 %42, ptr %44, align 8
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
