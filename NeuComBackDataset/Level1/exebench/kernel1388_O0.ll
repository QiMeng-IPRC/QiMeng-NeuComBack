; ModuleID = '../benchmarks/fine_grained/exebench/kernel1388.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1388.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op4680() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, ptr @inst, align 4
  %4 = and i32 %3, 7
  %5 = sext i32 %4 to i64
  store i64 %5, ptr %2, align 8
  %6 = load ptr, ptr @reg, align 8
  %7 = load i64, ptr %2, align 8
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %1, align 4
  %10 = load i32, ptr %1, align 4
  %11 = xor i32 %10, -1
  store i32 %11, ptr %1, align 4
  %12 = load i32, ptr %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %0
  %15 = load i32, ptr @status, align 4
  %16 = and i32 %15, -16
  store i32 %16, ptr @status, align 4
  %17 = load i32, ptr %1, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, ptr @status, align 4
  %21 = or i32 %20, 8
  store i32 %21, ptr @status, align 4
  br label %22

22:                                               ; preds = %19, %14
  br label %28

23:                                               ; preds = %0
  %24 = load i32, ptr @status, align 4
  %25 = or i32 %24, 4
  store i32 %25, ptr @status, align 4
  %26 = load i32, ptr @status, align 4
  %27 = and i32 %26, -11
  store i32 %27, ptr @status, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i32, ptr %1, align 4
  %30 = load ptr, ptr @reg, align 8
  %31 = load i64, ptr %2, align 8
  %32 = getelementptr inbounds i32, ptr %30, i64 %31
  store i32 %29, ptr %32, align 4
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
