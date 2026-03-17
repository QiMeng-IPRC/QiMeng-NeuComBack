; ModuleID = '../benchmarks/fine_grained/exebench/kernel176.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel176.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@Screen = dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @movePaddleDown(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = add nsw i64 %5, %8
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load i64, ptr @Screen, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %25

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, ptr %18, i32 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, ptr %21, i32 0, i32 0
  %23 = load i64, ptr %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, ptr %22, align 8
  br label %25

25:                                               ; preds = %17, %16
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
