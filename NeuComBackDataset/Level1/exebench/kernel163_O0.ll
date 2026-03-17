; ModuleID = '../benchmarks/fine_grained/exebench/kernel163.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel163.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClStrAppendChar(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %7, align 2
  %11 = load i16, ptr %7, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp ne i32 512, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, ptr %6, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = load i16, ptr %7, align 2
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  store i32 %15, ptr %19, align 4
  %20 = load i16, ptr %7, align 2
  %21 = add i16 %20, 1
  store i16 %21, ptr %7, align 2
  %22 = load i16, ptr %7, align 2
  %23 = zext i16 %22 to i32
  %24 = load ptr, ptr %4, align 8
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %14, %3
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
