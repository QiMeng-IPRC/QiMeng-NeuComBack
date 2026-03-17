; ModuleID = '../benchmarks/fine_grained/exebench/kernel286.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel286.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inst = dso_local global i32 0, align 4
@status = dso_local global i32 0, align 4
@reg = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Op5ac0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, ptr @inst, align 4
  %4 = and i32 %3, 7
  %5 = sext i32 %4 to i64
  store i64 %5, ptr %2, align 8
  %6 = load i32, ptr @status, align 4
  %7 = and i32 %6, 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 255, i32 0
  store i32 %13, ptr %1, align 4
  %14 = load i32, ptr %1, align 4
  %15 = load ptr, ptr @reg, align 8
  %16 = load i64, ptr %2, align 8
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  store i32 %14, ptr %17, align 4
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
