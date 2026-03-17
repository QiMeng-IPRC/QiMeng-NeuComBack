; ModuleID = '../benchmarks/fine_grained/exebench/kernel111.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32, i32 }

@cpu0 = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @instruc_13() #0 {
  %1 = load ptr, ptr @cpu0, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i32 0, i32 1), align 8
  %3 = and i32 %2, 15
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr @cpu0, align 8
  %8 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i32 0, i32 2), align 4
  %9 = and i32 %8, 240
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %6, %12
  %14 = load ptr, ptr @cpu0, align 8
  %15 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu0, i32 0, i32 1), align 8
  %16 = and i32 %15, 15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %14, i64 %17
  store i32 %13, ptr %18, align 4
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
