; ModuleID = '../benchmarks/fine_grained/exebench/kernel1493.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1493.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psi_sct_set_flags(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i64, ptr %5, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, %10
  store i64 %14, ptr %12, align 8
  br label %22

15:                                               ; preds = %3
  %16 = load i64, ptr %5, align 8
  %17 = xor i64 %16, -1
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, ptr %18, i32 0, i32 0
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, %17
  store i64 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %15, %9
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
