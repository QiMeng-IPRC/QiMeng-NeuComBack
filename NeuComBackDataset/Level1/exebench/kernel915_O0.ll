; ModuleID = '../benchmarks/fine_grained/exebench/kernel915.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel915.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@porta = dso_local global i8 0, align 1
@portb = dso_local global i8 0, align 1
@portc = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @d8255_read(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %12 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
  ]

6:                                                ; preds = %1
  %7 = load i8, ptr @porta, align 1
  store i8 %7, ptr %2, align 1
  br label %13

8:                                                ; preds = %1
  %9 = load i8, ptr @portb, align 1
  store i8 %9, ptr %2, align 1
  br label %13

10:                                               ; preds = %1
  %11 = load i8, ptr @portc, align 1
  store i8 %11, ptr %2, align 1
  br label %13

12:                                               ; preds = %1
  store i8 -1, ptr %2, align 1
  br label %13

13:                                               ; preds = %12, %10, %8, %6
  %14 = load i8, ptr %2, align 1
  ret i8 %14
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
