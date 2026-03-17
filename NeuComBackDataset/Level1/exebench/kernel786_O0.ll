; ModuleID = '../benchmarks/fine_grained/exebench/kernel786.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel786.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tptimeout = dso_local global i64 0, align 8
@outofband = dso_local global i64 0, align 8
@op_fetchintrrpt = dso_local global i32 0, align 4
@xfer_table = dso_local global ptr null, align 8
@xf_linefetch = dso_local global i64 0, align 8
@op_startintrrpt = dso_local global i32 0, align 4
@xf_linestart = dso_local global i64 0, align 8
@xf_zbfetch = dso_local global i64 0, align 8
@xf_zbstart = dso_local global i64 0, align 8
@xf_forchk1 = dso_local global i64 0, align 8
@op_forintrrpt = dso_local global i32 0, align 4
@xf_forloop = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tptimeout_set(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i64, ptr @tptimeout, align 8
  %4 = load i64, ptr @outofband, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load i32, ptr @op_fetchintrrpt, align 4
  %8 = load ptr, ptr @xfer_table, align 8
  %9 = load i64, ptr @xf_linefetch, align 8
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %7, ptr %10, align 4
  %11 = load i32, ptr @op_startintrrpt, align 4
  %12 = load ptr, ptr @xfer_table, align 8
  %13 = load i64, ptr @xf_linestart, align 8
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  store i32 %11, ptr %14, align 4
  %15 = load i32, ptr @op_fetchintrrpt, align 4
  %16 = load ptr, ptr @xfer_table, align 8
  %17 = load i64, ptr @xf_zbfetch, align 8
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  store i32 %15, ptr %18, align 4
  %19 = load i32, ptr @op_startintrrpt, align 4
  %20 = load ptr, ptr @xfer_table, align 8
  %21 = load i64, ptr @xf_zbstart, align 8
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  store i32 %19, ptr %22, align 4
  %23 = load i32, ptr @op_startintrrpt, align 4
  %24 = load ptr, ptr @xfer_table, align 8
  %25 = load i64, ptr @xf_forchk1, align 8
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  store i32 %23, ptr %26, align 4
  %27 = load i32, ptr @op_forintrrpt, align 4
  %28 = load ptr, ptr @xfer_table, align 8
  %29 = load i64, ptr @xf_forloop, align 8
  %30 = getelementptr inbounds i32, ptr %28, i64 %29
  store i32 %27, ptr %30, align 4
  %31 = load i64, ptr @tptimeout, align 8
  store i64 %31, ptr @outofband, align 8
  br label %32

32:                                               ; preds = %6, %1
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
