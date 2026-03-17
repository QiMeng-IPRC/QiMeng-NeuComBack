; ModuleID = '../benchmarks/fine_grained/exebench/kernel918.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel918.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitarray_change_bit(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load i32, ptr @CHAR_BIT, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 8, %7
  %9 = urem i64 %5, %8
  %10 = shl i64 1, %9
  %11 = load ptr, ptr %3, align 8
  %12 = load i64, ptr %4, align 8
  %13 = load i32, ptr @CHAR_BIT, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = udiv i64 %12, %15
  %17 = add i64 1, %16
  %18 = getelementptr inbounds i64, ptr %11, i64 %17
  %19 = load i64, ptr %18, align 8
  %20 = xor i64 %19, %10
  store i64 %20, ptr %18, align 8
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
