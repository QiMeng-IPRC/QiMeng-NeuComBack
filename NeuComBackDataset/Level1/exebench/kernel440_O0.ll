; ModuleID = '../benchmarks/fine_grained/exebench/kernel440.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel440.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg = dso_local global ptr null, align 8
@vf = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oper_lsr(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  %3 = load ptr, ptr @reg, align 8
  %4 = load i16, ptr %2, align 2
  %5 = zext i16 %4 to i32
  %6 = ashr i32 %5, 8
  %7 = and i32 %6, 15
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = load ptr, ptr @vf, align 8
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr @reg, align 8
  %14 = load i16, ptr %2, align 2
  %15 = zext i16 %14 to i32
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 15
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %13, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, ptr %19, align 4
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
