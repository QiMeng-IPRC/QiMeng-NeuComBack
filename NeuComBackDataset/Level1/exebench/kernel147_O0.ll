; ModuleID = '../benchmarks/fine_grained/exebench/kernel147.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel147.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, ptr, ptr, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@img = dso_local global ptr null, align 8
@seiSubseqChar = dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@seiSubseqInfo = dso_local global ptr null, align 8
@TRUE = dso_local global i32 0, align 4
@seiHasSubseqChar = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdateSubseqChar() #0 {
  %1 = load ptr, ptr @img, align 8
  %2 = getelementptr inbounds %struct.TYPE_6__, ptr %1, i32 0, i32 0
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr @seiSubseqChar, align 8
  %4 = load ptr, ptr @seiSubseqInfo, align 8
  %5 = load ptr, ptr @img, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %5, i32 0, i32 0
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, ptr %4, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 8), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 7), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 6), align 8
  store i32 100, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 1), align 8
  store i32 30, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 2), align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 5), align 8
  %11 = load ptr, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 3), align 8
  %12 = getelementptr inbounds i32, ptr %11, i64 0
  store i32 1, ptr %12, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 4), align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 0
  store i32 2, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 3), align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 1
  store i32 3, ptr %16, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @seiSubseqChar, i32 0, i32 4), align 8
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  store i32 4, ptr %18, align 4
  %19 = load i32, ptr @TRUE, align 4
  store i32 %19, ptr @seiHasSubseqChar, align 4
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
