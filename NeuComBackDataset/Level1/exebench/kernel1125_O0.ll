; ModuleID = '../benchmarks/fine_grained/exebench/kernel1125.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1125.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@level = dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chick_duck_hold(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i64, ptr @level, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, ptr %5, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = icmp sge i64 %3, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -129
  store i32 %14, ptr %12, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = or i32 %19, 128
  store i32 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %15, %9
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
