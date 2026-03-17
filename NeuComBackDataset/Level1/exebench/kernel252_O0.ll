; ModuleID = '../benchmarks/fine_grained/exebench/kernel252.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel252.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPT_INVALID_KEYSIZE = dso_local global i32 0, align 4
@CRYPT_OK = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rijndael_keysize(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, ptr @CRYPT_INVALID_KEYSIZE, align 4
  store i32 %8, ptr %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 24
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8
  store i32 16, ptr %14, align 4
  %15 = load i32, ptr @CRYPT_OK, align 4
  store i32 %15, ptr %2, align 4
  br label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %3, align 8
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8
  store i32 24, ptr %21, align 4
  %22 = load i32, ptr @CRYPT_OK, align 4
  store i32 %22, ptr %2, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load ptr, ptr %3, align 8
  store i32 32, ptr %24, align 4
  %25 = load i32, ptr @CRYPT_OK, align 4
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %23, %20, %13, %7
  %27 = load i32, ptr %2, align 4
  ret i32 %27
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
