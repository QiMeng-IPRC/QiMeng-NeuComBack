; ModuleID = '../benchmarks/fine_grained/exebench/kernel1176.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1176.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@achar0 = dso_local global i64 0, align 8
@achar1 = dso_local global i64 0, align 8
@failures = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @char_lt_char() #0 {
  %1 = load i64, ptr @achar0, align 8
  %2 = load i64, ptr @achar1, align 8
  %3 = icmp slt i64 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, ptr @failures, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @failures, align 4
  br label %7

7:                                                ; preds = %4, %0
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
