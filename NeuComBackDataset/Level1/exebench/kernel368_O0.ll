; ModuleID = '../benchmarks/fine_grained/exebench/kernel368.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel368.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kb_backlight_config = dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BREATHING_HALT_OFF = dso_local global i32 0, align 4
@breathing_halt = dso_local global i32 0, align 4
@BREATHING_HALT_ON = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @breathing_self_disable() #0 {
  %1 = load i64, ptr @kb_backlight_config, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load i32, ptr @BREATHING_HALT_OFF, align 4
  store i32 %4, ptr @breathing_halt, align 4
  br label %7

5:                                                ; preds = %0
  %6 = load i32, ptr @BREATHING_HALT_ON, align 4
  store i32 %6, ptr @breathing_halt, align 4
  br label %7

7:                                                ; preds = %5, %3
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
