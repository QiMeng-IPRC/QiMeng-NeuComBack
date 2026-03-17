; ModuleID = '../benchmarks/fine_grained/exebench/kernel1389.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1389.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i16, i8, i64 }

@idt = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idt_set_gate(i32 noundef %0, i64 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  store i32 %0, ptr %5, align 4
  store i64 %1, ptr %6, align 8
  store i16 %2, ptr %7, align 2
  store i8 %3, ptr %8, align 1
  %9 = load i64, ptr %6, align 8
  %10 = and i64 %9, 65535
  %11 = load ptr, ptr @idt, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, ptr %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %14, i32 0, i32 0
  store i64 %10, ptr %15, align 8
  %16 = load i64, ptr %6, align 8
  %17 = lshr i64 %16, 16
  %18 = and i64 %17, 255
  %19 = load ptr, ptr @idt, align 8
  %20 = load i32, ptr %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, ptr %22, i32 0, i32 1
  store i64 %18, ptr %23, align 8
  %24 = load i16, ptr %7, align 2
  %25 = load ptr, ptr @idt, align 8
  %26 = load i32, ptr %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, ptr %28, i32 0, i32 2
  store i16 %24, ptr %29, align 8
  %30 = load ptr, ptr @idt, align 8
  %31 = load i32, ptr %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, ptr %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, ptr %33, i32 0, i32 4
  store i64 0, ptr %34, align 8
  %35 = load i8, ptr %8, align 1
  %36 = load ptr, ptr @idt, align 8
  %37 = load i32, ptr %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, ptr %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, ptr %39, i32 0, i32 3
  store i8 %35, ptr %40, align 2
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
