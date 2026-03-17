; ModuleID = '../benchmarks/fine_grained/exebench/kernel484.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel484.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status = dso_local global i32 0, align 4
@pc = dso_local global i32 0, align 4
@oldpc = dso_local global i32 0, align 4
@reladdr = dso_local global i64 0, align 8
@clockticks6502 = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bvc() #0 {
  %1 = load i32, ptr @status, align 4
  %2 = and i32 %1, 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load i32, ptr @pc, align 4
  store i32 %5, ptr @oldpc, align 4
  %6 = load i64, ptr @reladdr, align 8
  %7 = load i32, ptr @pc, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr @pc, align 4
  %11 = load i32, ptr @oldpc, align 4
  %12 = and i32 %11, 65280
  %13 = load i32, ptr @pc, align 4
  %14 = and i32 %13, 65280
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, ptr @clockticks6502, align 8
  %18 = add nsw i64 %17, 2
  store i64 %18, ptr @clockticks6502, align 8
  br label %22

19:                                               ; preds = %4
  %20 = load i64, ptr @clockticks6502, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, ptr @clockticks6502, align 8
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %0
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
