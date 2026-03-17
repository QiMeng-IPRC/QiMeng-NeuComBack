; ModuleID = '../benchmarks/fine_grained/exebench/kernel987.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel987.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op4a80() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, ptr @inst, align 4
  %4 = and i32 %3, 7
  %5 = sext i32 %4 to i64
  store i64 %5, ptr %2, align 8
  %6 = load ptr, ptr @reg, align 8
  %7 = load i64, ptr %2, align 8
  %8 = getelementptr inbounds i64, ptr %6, i64 %7
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %1, align 8
  %10 = load i64, ptr %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %0
  %13 = load i32, ptr @status, align 4
  %14 = and i32 %13, -16
  store i32 %14, ptr @status, align 4
  %15 = load i64, ptr %1, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, ptr @status, align 4
  %19 = or i32 %18, 8
  store i32 %19, ptr @status, align 4
  br label %20

20:                                               ; preds = %17, %12
  br label %26

21:                                               ; preds = %0
  %22 = load i32, ptr @status, align 4
  %23 = or i32 %22, 4
  store i32 %23, ptr @status, align 4
  %24 = load i32, ptr @status, align 4
  %25 = and i32 %24, -11
  store i32 %25, ptr @status, align 4
  br label %26

26:                                               ; preds = %21, %20
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
