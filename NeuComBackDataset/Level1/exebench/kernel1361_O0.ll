; ModuleID = '../benchmarks/fine_grained/exebench/kernel1361.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1361.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, ptr, i32 }

@cpu = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switchmode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 1), align 4
  store i32 %3, ptr @cpu, align 8
  %4 = load i32, ptr %2, align 4
  store i32 %4, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 1), align 4
  %5 = load i32, ptr @cpu, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 4), align 8
  %9 = getelementptr inbounds i32, ptr %8, i64 6
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 5), align 8
  br label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 4), align 8
  %13 = getelementptr inbounds i32, ptr %12, i64 6
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 3), align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 1), align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 5), align 8
  %20 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 4), align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 6
  store i32 %19, ptr %21, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 3), align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 4), align 8
  %25 = getelementptr inbounds i32, ptr %24, i64 6
  store i32 %23, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 2), align 8
  %28 = and i32 %27, 4095
  store i32 %28, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 2), align 8
  %29 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 1), align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 2), align 8
  %33 = or i32 %32, 49152
  store i32 %33, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 2), align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, ptr @cpu, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 2), align 8
  %39 = or i32 %38, 12288
  store i32 %39, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @cpu, i32 0, i32 2), align 8
  br label %40

40:                                               ; preds = %37, %34
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
