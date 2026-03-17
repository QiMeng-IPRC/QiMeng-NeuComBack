; ModuleID = '../benchmarks/fine_grained/exebench/kernel1065.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1065.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPV_stamp = dso_local global i64 0, align 8
@OPV_recno = dso_local global i64 0, align 8
@OPV_nofExitLabels = dso_local global i64 0, align 8
@OPM_opt = dso_local global i32 0, align 4
@OPV_assert = dso_local global i32 0, align 4
@OPV_inxchk = dso_local global i32 0, align 4
@OPV_mainprog = dso_local global i32 0, align 4
@OPV_ansi = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPV_Init() #0 {
  store i64 0, ptr @OPV_stamp, align 8
  store i64 0, ptr @OPV_recno, align 8
  store i64 0, ptr @OPV_nofExitLabels, align 8
  %1 = load i32, ptr @OPM_opt, align 4
  %2 = ashr i32 %1, 7
  %3 = and i32 %2, 1
  store i32 %3, ptr @OPV_assert, align 4
  %4 = load i32, ptr @OPM_opt, align 4
  %5 = ashr i32 %4, 0
  %6 = and i32 %5, 1
  store i32 %6, ptr @OPV_inxchk, align 4
  %7 = load i32, ptr @OPM_opt, align 4
  %8 = ashr i32 %7, 10
  %9 = and i32 %8, 1
  store i32 %9, ptr @OPV_mainprog, align 4
  %10 = load i32, ptr @OPM_opt, align 4
  %11 = ashr i32 %10, 6
  %12 = and i32 %11, 1
  store i32 %12, ptr @OPV_ansi, align 4
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
