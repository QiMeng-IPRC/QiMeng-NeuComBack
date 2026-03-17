; ModuleID = '../benchmarks/fine_grained/exebench/kernel281.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel281.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op5448() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 2, ptr %1, align 4
  %4 = load i32, ptr @inst, align 4
  %5 = and i32 %4, 7
  %6 = add nsw i32 8, %5
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %3, align 8
  %8 = load ptr, ptr @reg, align 8
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = load i32, ptr %1, align 4
  %13 = load i32, ptr %2, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, ptr %2, align 4
  %15 = load i32, ptr %2, align 4
  %16 = load ptr, ptr @reg, align 8
  %17 = load i64, ptr %3, align 8
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  store i32 %15, ptr %18, align 4
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
