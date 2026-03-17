; ModuleID = '../benchmarks/fine_grained/exebench/kernel270.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel270.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PIA0 = dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_fs_fall() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = load i32, ptr @PIA0, align 4
  %3 = and i32 %2, 2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  store i32 128, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @PIA0, i32 0, i32 1), align 4
  %6 = load i32, ptr @PIA0, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 1, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @PIA0, i32 0, i32 2), align 4
  br label %11

10:                                               ; preds = %5
  store i32 0, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @PIA0, i32 0, i32 2), align 4
  br label %11

11:                                               ; preds = %10, %9
  br label %12

12:                                               ; preds = %11, %1
  br label %13

13:                                               ; preds = %12
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
