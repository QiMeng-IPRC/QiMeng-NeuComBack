; ModuleID = '../benchmarks/fine_grained/exebench/kernel214.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel214.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i64, i64, i64, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { ptr }

@acc_data = dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yas_lis331dlh_init_data() #0 {
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 8), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 7), align 8
  store i32 100, ptr @acc_data, align 8
  %1 = load ptr, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 6), align 8
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  store i64 0, ptr %2, align 8
  %3 = load ptr, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 6), align 8
  %4 = getelementptr inbounds i64, ptr %3, i64 1
  store i64 0, ptr %4, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 6), align 8
  %6 = getelementptr inbounds i64, ptr %5, i64 2
  store i64 0, ptr %6, align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 5), align 8
  store i32 20000, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 1), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 4), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 3), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 2, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 2, i32 4), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 2, i32 3), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 2, i32 2), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 2, i32 1), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @acc_data, i32 0, i32 2), align 8
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
