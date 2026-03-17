; ModuleID = '../benchmarks/fine_grained/exebench/kernel1353.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1353.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i64, i64 }

@yabsys = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YabauseChangeTiming(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 6), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 5), align 8
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr @yabsys, align 8
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %17 [
    i32 0, label %5
    i32 1, label %11
  ]

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 4), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store i32 170, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 1), align 4
  br label %10

9:                                                ; preds = %5
  store i32 172, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 1), align 4
  br label %10

10:                                               ; preds = %9, %8
  store i32 268, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 2), align 8
  br label %18

11:                                               ; preds = %1
  %12 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 4), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 181, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 1), align 4
  br label %16

15:                                               ; preds = %11
  store i32 183, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 1), align 4
  br label %16

16:                                               ; preds = %15, %14
  store i32 286, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 2), align 8
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %16, %10
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @yabsys, i32 0, i32 3), align 8
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
