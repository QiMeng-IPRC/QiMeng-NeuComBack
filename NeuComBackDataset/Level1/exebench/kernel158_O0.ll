; ModuleID = '../benchmarks/fine_grained/exebench/kernel158.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel158.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CPU = dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ror_immed(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %8 = load i32, ptr %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 1, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load ptr, ptr %7, align 8
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %5, align 4
  %20 = load i32, ptr %6, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, ptr %5, align 4
  %23 = load i32, ptr %6, align 4
  %24 = sub nsw i32 32, %23
  %25 = shl i32 %22, %24
  %26 = or i32 %21, %25
  store i32 %26, ptr %4, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i32, ptr @CPU, align 4
  %29 = and i32 %28, 536870912
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load ptr, ptr %7, align 8
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %5, align 4
  store i32 %33, ptr %4, align 4
  br label %34

34:                                               ; preds = %27, %10
  %35 = load i32, ptr %4, align 4
  ret i32 %35
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
