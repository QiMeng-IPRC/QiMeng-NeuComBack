; ModuleID = '../benchmarks/fine_grained/exebench/kernel657.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel657.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@deltaX = dso_local global i64 0, align 8
@coords = dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@deltaY = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addDeltasToCumulative() #0 {
  %1 = load i64, ptr @deltaX, align 8
  %2 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @coords, i32 0, i32 1), align 4
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, %1
  %5 = trunc i64 %4 to i32
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @coords, i32 0, i32 1), align 4
  %6 = load i64, ptr @deltaY, align 8
  %7 = load i32, ptr @coords, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr @coords, align 4
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
