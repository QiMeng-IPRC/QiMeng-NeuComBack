; ModuleID = '../benchmarks/fine_grained/exebench/kernel1381.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1381.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i16, i8, i64 }

@idt_entries = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idt_set_gate(i8 noundef zeroext %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  store i8 %0, ptr %5, align 1
  store i32 %1, ptr %6, align 4
  store i16 %2, ptr %7, align 2
  store i8 %3, ptr %8, align 1
  %9 = load i32, ptr %6, align 4
  %10 = and i32 %9, 65535
  %11 = load ptr, ptr @idt_entries, align 8
  %12 = load i8, ptr %5, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, ptr %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, ptr %14, i32 0, i32 0
  store i32 %10, ptr %15, align 8
  %16 = load i32, ptr %6, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 65535
  %19 = load ptr, ptr @idt_entries, align 8
  %20 = load i8, ptr %5, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, ptr %22, i32 0, i32 1
  store i32 %18, ptr %23, align 4
  %24 = load i16, ptr %7, align 2
  %25 = load ptr, ptr @idt_entries, align 8
  %26 = load i8, ptr %5, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, ptr %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, ptr %28, i32 0, i32 2
  store i16 %24, ptr %29, align 8
  %30 = load ptr, ptr @idt_entries, align 8
  %31 = load i8, ptr %5, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, ptr %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, ptr %33, i32 0, i32 4
  store i64 0, ptr %34, align 8
  %35 = load i8, ptr %8, align 1
  %36 = load ptr, ptr @idt_entries, align 8
  %37 = load i8, ptr %5, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, ptr %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, ptr %39, i32 0, i32 3
  store i8 %35, ptr %40, align 2
  ret i32 1
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
