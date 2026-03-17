; ModuleID = '../benchmarks/fine_grained/exebench/kernel79.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel79.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rnd_seed = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rnd() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, ptr @rnd_seed, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, ptr @rnd_seed, align 8
  %7 = icmp eq i64 %6, 2147483647
  br i1 %7, label %8, label %13

8:                                                ; preds = %5, %0
  %9 = call i64 (...) @getpid()
  %10 = shl i64 %9, 16
  %11 = call i64 @time(ptr noundef null)
  %12 = xor i64 %10, %11
  store i64 %12, ptr @rnd_seed, align 8
  br label %13

13:                                               ; preds = %8, %5
  %14 = load i64, ptr @rnd_seed, align 8
  %15 = sdiv i64 %14, 127773
  store i64 %15, ptr %1, align 8
  %16 = load i64, ptr @rnd_seed, align 8
  %17 = srem i64 %16, 127773
  store i64 %17, ptr %2, align 8
  %18 = load i64, ptr %2, align 8
  %19 = mul nsw i64 16807, %18
  %20 = load i64, ptr %1, align 8
  %21 = mul nsw i64 2836, %20
  %22 = sub nsw i64 %19, %21
  store i64 %22, ptr @rnd_seed, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i64, ptr @rnd_seed, align 8
  %26 = add nsw i64 %25, 2147483647
  store i64 %26, ptr @rnd_seed, align 8
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i64, ptr @rnd_seed, align 8
  ret i64 %28
}

declare i64 @getpid(...) #1

declare i64 @time(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
