; ModuleID = '../benchmarks/fine_grained/exebench/kernel1129.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1129.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regs = dso_local global ptr null, align 8
@IR = dso_local global i64 0, align 8
@AF = dso_local global i64 0, align 8
@EF = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @regs, align 8
  %4 = load i64, ptr @IR, align 8
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 12
  %8 = ashr i32 %7, 2
  %9 = add nsw i32 7, %8
  store i32 %9, ptr %1, align 4
  %10 = load ptr, ptr @regs, align 8
  %11 = load i64, ptr @IR, align 8
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 3
  %15 = add nsw i32 7, %14
  store i32 %15, ptr %2, align 4
  %16 = load ptr, ptr @regs, align 8
  %17 = load i32, ptr %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %16, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr @regs, align 8
  %22 = load i32, ptr %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %21, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %20, %25
  %27 = zext i1 %26 to i32
  %28 = load ptr, ptr @regs, align 8
  %29 = load i64, ptr @AF, align 8
  %30 = getelementptr inbounds i32, ptr %28, i64 %29
  store i32 %27, ptr %30, align 4
  %31 = load ptr, ptr @regs, align 8
  %32 = load i32, ptr %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr @regs, align 8
  %37 = load i32, ptr %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %35, %40
  %42 = zext i1 %41 to i32
  %43 = load ptr, ptr @regs, align 8
  %44 = load i64, ptr @EF, align 8
  %45 = getelementptr inbounds i32, ptr %43, i64 %44
  store i32 %42, ptr %45, align 4
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
