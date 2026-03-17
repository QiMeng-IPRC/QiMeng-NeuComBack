; ModuleID = '../benchmarks/fine_grained/exebench/kernel1501.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1501.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Opce80() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @reg, align 8
  %5 = load i32, ptr @inst, align 4
  %6 = and i32 %5, 7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %1, align 4
  store i64 7, ptr %3, align 8
  %10 = load ptr, ptr @reg, align 8
  %11 = load i64, ptr %3, align 8
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  %14 = load i32, ptr %1, align 4
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, %14
  store i32 %16, ptr %2, align 4
  %17 = load i32, ptr %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %0
  %20 = load i32, ptr @status, align 4
  %21 = and i32 %20, -16
  store i32 %21, ptr @status, align 4
  %22 = load i32, ptr %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, ptr @status, align 4
  %26 = or i32 %25, 8
  store i32 %26, ptr @status, align 4
  br label %27

27:                                               ; preds = %24, %19
  br label %33

28:                                               ; preds = %0
  %29 = load i32, ptr @status, align 4
  %30 = or i32 %29, 4
  store i32 %30, ptr @status, align 4
  %31 = load i32, ptr @status, align 4
  %32 = and i32 %31, -11
  store i32 %32, ptr @status, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, ptr %2, align 4
  %35 = load ptr, ptr @reg, align 8
  %36 = load i64, ptr %3, align 8
  %37 = getelementptr inbounds i32, ptr %35, i64 %36
  store i32 %34, ptr %37, align 4
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
