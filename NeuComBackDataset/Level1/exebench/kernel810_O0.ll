; ModuleID = '../benchmarks/fine_grained/exebench/kernel810.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel810.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skip_bits(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, ptr %9, i32 0, i32 0
  %11 = load i64, ptr %10, align 8
  %12 = add i64 %8, %11
  %13 = udiv i64 %12, 8
  %14 = add i64 %7, %13
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i32 0, i32 1
  store i64 %14, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 0
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %4, align 8
  %21 = add i64 %19, %20
  %22 = urem i64 %21, 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %23, i32 0, i32 0
  store i64 %22, ptr %24, align 8
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
