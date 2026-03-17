; ModuleID = '../benchmarks/fine_grained/exebench/kernel1032.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1032.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = dso_local global ptr null, align 8
@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@rsl = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aum() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %37, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 16
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = load ptr, ptr @state, align 8
  %7 = load i32, ptr @d, align 4
  %8 = and i32 %7, 15
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr @e, align 4
  %12 = load i32, ptr @b, align 4
  %13 = load i32, ptr @c, align 4
  %14 = xor i32 %12, %13
  %15 = load ptr, ptr @state, align 8
  %16 = load i32, ptr @d, align 4
  %17 = and i32 %16, 15
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  store i32 %14, ptr %19, align 4
  %20 = load i32, ptr @c, align 4
  %21 = load i32, ptr @d, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, ptr @b, align 4
  %23 = load i32, ptr @d, align 4
  %24 = load i32, ptr @e, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, ptr @c, align 4
  %26 = load i32, ptr @e, align 4
  %27 = load ptr, ptr @state, align 8
  %28 = load i32, ptr %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %27, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %26, %31
  store i32 %32, ptr @d, align 4
  %33 = load ptr, ptr @rsl, align 8
  %34 = load i32, ptr %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  store i32 %32, ptr %36, align 4
  br label %37

37:                                               ; preds = %5
  %38 = load i32, ptr %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %1, align 4
  br label %2, !llvm.loop !6

40:                                               ; preds = %2
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
