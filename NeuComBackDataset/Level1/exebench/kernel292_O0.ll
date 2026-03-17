; ModuleID = '../benchmarks/fine_grained/exebench/kernel292.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel292.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linux_lvl14 = dso_local global ptr null, align 8
@obp_lvl14 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @install_obp_ticker() #0 {
  %1 = load ptr, ptr @linux_lvl14, align 8
  %2 = icmp ne ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %25

4:                                                ; preds = %0
  %5 = load ptr, ptr @obp_lvl14, align 8
  %6 = getelementptr inbounds i32, ptr %5, i64 0
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr @linux_lvl14, align 8
  %9 = getelementptr inbounds i32, ptr %8, i64 0
  store i32 %7, ptr %9, align 4
  %10 = load ptr, ptr @obp_lvl14, align 8
  %11 = getelementptr inbounds i32, ptr %10, i64 1
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr @linux_lvl14, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  store i32 %12, ptr %14, align 4
  %15 = load ptr, ptr @obp_lvl14, align 8
  %16 = getelementptr inbounds i32, ptr %15, i64 2
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr @linux_lvl14, align 8
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  store i32 %17, ptr %19, align 4
  %20 = load ptr, ptr @obp_lvl14, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 3
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr @linux_lvl14, align 8
  %24 = getelementptr inbounds i32, ptr %23, i64 3
  store i32 %22, ptr %24, align 4
  br label %25

25:                                               ; preds = %4, %3
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
