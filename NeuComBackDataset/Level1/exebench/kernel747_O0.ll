; ModuleID = '../benchmarks/fine_grained/exebench/kernel747.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel747.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@flag_s8b = dso_local global i32 0, align 4
@flag_u8b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scan_routine_INTEGER8_UPDATE(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %13 = load i64, ptr %8, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, ptr %6, align 4
  br label %42

16:                                               ; preds = %5
  store i32 0, ptr %12, align 4
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr @flag_s8b, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  store i32 1, ptr %12, align 4
  %24 = load i32, ptr @flag_s8b, align 4
  %25 = load ptr, ptr %11, align 8
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %23, %16
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr @flag_u8b, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  store i32 1, ptr %12, align 4
  %36 = load i32, ptr @flag_u8b, align 4
  %37 = load ptr, ptr %11, align 8
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, ptr %12, align 4
  store i32 %41, ptr %6, align 4
  br label %42

42:                                               ; preds = %40, %15
  %43 = load i32, ptr %6, align 4
  ret i32 %43
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
