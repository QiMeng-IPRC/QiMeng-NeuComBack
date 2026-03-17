; ModuleID = '../benchmarks/fine_grained/exebench/kernel984.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel984.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32 }

@GSU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fx_sub_r8() #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @GSU, align 8
  %3 = load i32, ptr %2, align 4
  %4 = sext i32 %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %7 = getelementptr inbounds i32, ptr %6, i64 8
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = trunc i64 %9 to i32
  %11 = sub nsw i32 %5, %10
  store i32 %11, ptr %1, align 4
  %12 = load i32, ptr %1, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 2), align 8
  %15 = load ptr, ptr @GSU, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 8
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %16, %19
  %21 = load ptr, ptr @GSU, align 8
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %1, align 4
  %24 = xor i32 %22, %23
  %25 = and i32 %20, %24
  %26 = and i32 %25, 32768
  store i32 %26, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 3), align 4
  %27 = load i32, ptr %1, align 4
  store i32 %27, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 4), align 8
  %28 = load i32, ptr %1, align 4
  store i32 %28, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 5), align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %30 = getelementptr inbounds i32, ptr %29, i64 15
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = load i32, ptr %1, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
  %36 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %37 = getelementptr inbounds i32, ptr %36, i64 14
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %0
  %40 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 8), align 8
  %41 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %42 = getelementptr inbounds i32, ptr %41, i64 14
  %43 = load i32, ptr %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %40, i64 %44
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 9), align 8
  br label %47

47:                                               ; preds = %39, %0
  %48 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 7), align 8
  %49 = and i32 %48, -4865
  store i32 %49, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 7), align 8
  %50 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 1), align 8
  %51 = getelementptr inbounds i32, ptr %50, i64 0
  store ptr %51, ptr @GSU, align 8
  store ptr %51, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @GSU, i32 0, i32 6), align 8
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
