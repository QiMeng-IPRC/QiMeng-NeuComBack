; ModuleID = '../benchmarks/fine_grained/exebench/kernel1301.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1301.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rgb_matrix_config = dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@STARTING = dso_local global i32 0, align 4
@rgb_task_state = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb_matrix_enable_noeeprom() #0 {
  %1 = load i32, ptr @rgb_matrix_config, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @STARTING, align 4
  store i32 %4, ptr @rgb_task_state, align 4
  br label %5

5:                                                ; preds = %3, %0
  store i32 1, ptr @rgb_matrix_config, align 4
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
