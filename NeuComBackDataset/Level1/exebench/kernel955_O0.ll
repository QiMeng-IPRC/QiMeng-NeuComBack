; ModuleID = '../benchmarks/fine_grained/exebench/kernel955.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel955.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@g_window = dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@g_screeninfo_var = dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_window_dimension() #0 {
  store i32 640, ptr @g_window, align 4
  store i32 480, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i32 0, i32 1), align 4
  %1 = load i32, ptr @g_screeninfo_var, align 4
  %2 = sdiv i32 %1, 2
  %3 = load i32, ptr @g_window, align 4
  %4 = sdiv i32 %3, 2
  %5 = sub nsw i32 %2, %4
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i32 0, i32 2), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @g_screeninfo_var, i32 0, i32 1), align 4
  %7 = sdiv i32 %6, 2
  %8 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i32 0, i32 1), align 4
  %9 = sdiv i32 %8, 2
  %10 = sub nsw i32 %7, %9
  store i32 %10, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i32 0, i32 3), align 4
  %11 = load i32, ptr @g_screeninfo_var, align 4
  %12 = sdiv i32 %11, 2
  %13 = load i32, ptr @g_window, align 4
  %14 = sdiv i32 %13, 2
  %15 = add nsw i32 %12, %14
  store i32 %15, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i32 0, i32 4), align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @g_screeninfo_var, i32 0, i32 1), align 4
  %17 = sdiv i32 %16, 2
  %18 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i32 0, i32 1), align 4
  %19 = sdiv i32 %18, 2
  %20 = add nsw i32 %17, %19
  store i32 %20, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @g_window, i32 0, i32 5), align 4
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
