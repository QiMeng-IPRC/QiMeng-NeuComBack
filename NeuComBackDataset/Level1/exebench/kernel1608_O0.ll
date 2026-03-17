; ModuleID = '../benchmarks/fine_grained/exebench/kernel1608.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RXEN0 = dso_local global i32 0, align 4
@TXEN0 = dso_local global i32 0, align 4
@UCSR0B = dso_local global i32 0, align 4
@UCSZ00 = dso_local global i32 0, align 4
@UCSZ01 = dso_local global i32 0, align 4
@UCSR0C = dso_local global i32 0, align 4
@UBRR0L = dso_local global i64 0, align 8
@UBRR0H = dso_local global i64 0, align 8
@RXEN1 = dso_local global i32 0, align 4
@TXEN1 = dso_local global i32 0, align 4
@UCSR1B = dso_local global i32 0, align 4
@UCSZ10 = dso_local global i32 0, align 4
@UCSZ11 = dso_local global i32 0, align 4
@UCSR1C = dso_local global i32 0, align 4
@UBRR1L = dso_local global i64 0, align 8
@UBRR1H = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initUSART(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp ne i32 %4, 1
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i32, ptr @RXEN0, align 4
  %8 = shl i32 1, %7
  %9 = load i32, ptr @TXEN0, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  %12 = load i32, ptr @UCSR0B, align 4
  %13 = or i32 %12, %11
  store i32 %13, ptr @UCSR0B, align 4
  %14 = load i32, ptr @UCSZ00, align 4
  %15 = shl i32 1, %14
  %16 = load i32, ptr @UCSZ01, align 4
  %17 = shl i32 1, %16
  %18 = or i32 %15, %17
  %19 = load i32, ptr @UCSR0C, align 4
  %20 = or i32 %19, %18
  store i32 %20, ptr @UCSR0C, align 4
  store i64 51, ptr @UBRR0L, align 8
  store i64 0, ptr @UBRR0H, align 8
  br label %36

21:                                               ; preds = %1
  %22 = load i32, ptr @RXEN1, align 4
  %23 = shl i32 1, %22
  %24 = load i32, ptr @TXEN1, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, ptr @UCSR1B, align 4
  %28 = or i32 %27, %26
  store i32 %28, ptr @UCSR1B, align 4
  %29 = load i32, ptr @UCSZ10, align 4
  %30 = shl i32 1, %29
  %31 = load i32, ptr @UCSZ11, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  %34 = load i32, ptr @UCSR1C, align 4
  %35 = or i32 %34, %33
  store i32 %35, ptr @UCSR1C, align 4
  store i64 51, ptr @UBRR1L, align 8
  store i64 0, ptr @UBRR1H, align 8
  br label %36

36:                                               ; preds = %21, %6
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
