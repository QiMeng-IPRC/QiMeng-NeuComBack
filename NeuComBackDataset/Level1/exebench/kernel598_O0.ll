; ModuleID = '../benchmarks/fine_grained/exebench/kernel598.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ENABLE = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UART_ItConfig(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i64 %2, ptr %6, align 8
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr @ENABLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, ptr %5, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, ptr %13, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load i32, ptr %5, align 4
  %18 = xor i32 %17, -1
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %16, %10
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
