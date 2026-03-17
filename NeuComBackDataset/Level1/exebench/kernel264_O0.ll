; ModuleID = '../benchmarks/fine_grained/exebench/kernel264.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wfdb_mt = dso_local global i32 0, align 4
@wfdb_mp2 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfdb_setmap2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  store i32 %5, ptr @wfdb_mt, align 4
  %6 = icmp slt i32 0, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load i32, ptr @wfdb_mt, align 4
  %9 = icmp sle i32 %8, 49
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  %12 = load ptr, ptr @wfdb_mp2, align 8
  %13 = load i32, ptr @wfdb_mt, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  store i32 %11, ptr %15, align 4
  br label %17

16:                                               ; preds = %7, %2
  br label %17

17:                                               ; preds = %16, %10
  %18 = phi i32 [ %11, %10 ], [ 0, %16 ]
  ret i32 %18
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
