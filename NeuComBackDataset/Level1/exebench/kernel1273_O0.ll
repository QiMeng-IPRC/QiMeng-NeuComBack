; ModuleID = '../benchmarks/fine_grained/exebench/kernel1273.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1273.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Columns = dso_local global i32 0, align 4
@sc_col = dso_local global i32 0, align 4
@ru_col = dso_local global i32 0, align 4
@COL_RULER = dso_local global i32 0, align 4
@SHOWCMD_COLS = dso_local global i64 0, align 8
@firstwin = dso_local global i64 0, align 8
@lastwin = dso_local global i64 0, align 8
@p_ls = dso_local global i32 0, align 4
@p_ru = dso_local global i64 0, align 8
@p_sc = dso_local global i64 0, align 8
@ru_wid = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comp_col() #0 {
  %1 = load i32, ptr @Columns, align 4
  store i32 %1, ptr @sc_col, align 4
  %2 = load i32, ptr @Columns, align 4
  store i32 %2, ptr @ru_col, align 4
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
