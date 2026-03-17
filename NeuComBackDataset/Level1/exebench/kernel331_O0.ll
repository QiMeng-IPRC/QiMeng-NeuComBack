; ModuleID = '../benchmarks/fine_grained/exebench/kernel331.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel331.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_cmd_stats_wb_exp_ack = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ctrl = dso_local global ptr null, align 8
@FALSE = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_stats_wb_exp_ack(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vfe_cmd_stats_wb_exp_ack, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @ctrl, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, ptr %7, i32 0, i32 1
  store i32 %5, ptr %8, align 4
  %9 = load i32, ptr @FALSE, align 4
  %10 = load ptr, ptr @ctrl, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i32 0, i32 0
  store i32 %9, ptr %12, align 4
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
