; ModuleID = '../benchmarks/fine_grained/exebench/kernel91.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel91.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32 }

@CPU = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thumb_cmp(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %8 = load ptr, ptr @CPU, align 8
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %5, align 4
  %12 = load ptr, ptr @CPU, align 8
  %13 = load i64, ptr %4, align 8
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, -1
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %5, align 4
  %18 = load i32, ptr %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr %7, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @CPU, i32 0, i32 1), align 8
  %24 = and i32 %23, 268435455
  store i32 %24, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @CPU, i32 0, i32 1), align 8
  %25 = load i32, ptr %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 1073741824
  %29 = load i32, ptr %7, align 4
  %30 = and i32 %29, -2147483648
  %31 = or i32 %28, %30
  %32 = load i32, ptr %7, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, -4294967296
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 536870912, i32 0
  %38 = or i32 %31, %37
  %39 = load i32, ptr %5, align 4
  %40 = load i32, ptr %6, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, ptr %7, align 4
  %44 = and i32 %42, %43
  %45 = load i32, ptr %5, align 4
  %46 = load i32, ptr %6, align 4
  %47 = and i32 %45, %46
  %48 = load i32, ptr %7, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = or i32 %44, %50
  %52 = ashr i32 %51, 31
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 268435456, i32 0
  %56 = or i32 %38, %55
  %57 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @CPU, i32 0, i32 1), align 8
  %58 = or i32 %57, %56
  store i32 %58, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @CPU, i32 0, i32 1), align 8
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
