; ModuleID = '../benchmarks/fine_grained/exebench/kernel1600.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1600.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@ARCH_MAX_UINT = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s_RLE_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, ptr @ARCH_MAX_UINT, align 4
  %11 = sext i32 %10 to i64
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, ptr %12, i32 0, i32 1
  store i64 %11, ptr %13, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, ptr %15, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i64 [ %11, %9 ], [ %17, %14 ]
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %21, i32 0, i32 0
  store i32 %20, ptr %22, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, ptr %23, i32 0, i32 2
  store i64 0, ptr %24, align 8
  ret i32 0
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
