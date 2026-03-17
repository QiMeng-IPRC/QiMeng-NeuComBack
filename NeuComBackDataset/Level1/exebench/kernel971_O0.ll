; ModuleID = '../benchmarks/fine_grained/exebench/kernel971.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel971.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msgbuf = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_ack(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load ptr, ptr @msgbuf, align 8
  %4 = getelementptr inbounds i32, ptr %3, i64 0
  store i32 0, ptr %4, align 4
  %5 = load ptr, ptr @msgbuf, align 8
  %6 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 4, ptr %6, align 4
  %7 = load i32, ptr %2, align 4
  %8 = ashr i32 %7, 8
  %9 = and i32 %8, 255
  %10 = load ptr, ptr @msgbuf, align 8
  %11 = getelementptr inbounds i32, ptr %10, i64 2
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, 255
  %14 = load ptr, ptr @msgbuf, align 8
  %15 = getelementptr inbounds i32, ptr %14, i64 3
  store i32 %13, ptr %15, align 4
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
