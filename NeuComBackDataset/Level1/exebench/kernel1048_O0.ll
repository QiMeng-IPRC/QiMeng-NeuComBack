; ModuleID = '../benchmarks/fine_grained/exebench/kernel1048.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1048.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MODE_ORIGIN = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restore_state(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.terminal, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @MODE_ORIGIN, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, ptr @MODE_ORIGIN, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.terminal, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, ptr %13, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, ptr @MODE_ORIGIN, align 4
  %18 = xor i32 %17, -1
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.terminal, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %16, %10
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.terminal, ptr %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.terminal, ptr %28, i32 0, i32 3
  store i32 %27, ptr %29, align 4
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.terminal, ptr %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.terminal, ptr %34, i32 0, i32 2
  store i32 %33, ptr %35, align 4
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
