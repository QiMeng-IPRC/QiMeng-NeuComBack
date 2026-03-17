; ModuleID = '../benchmarks/fine_grained/exebench/kernel742.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel742.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z26_state = type { i32, i64, i32 }

@ChargeTrigger0 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadAnalogINPT(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @ChargeTrigger0, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.z26_state, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, ptr %3, i64 %8
  %10 = load i64, ptr %9, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.z26_state, ptr %11, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp sle i64 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.z26_state, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 63
  %20 = or i32 %19, 128
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.z26_state, ptr %21, i32 0, i32 2
  store i32 %20, ptr %22, align 8
  br label %23

23:                                               ; preds = %15, %1
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
