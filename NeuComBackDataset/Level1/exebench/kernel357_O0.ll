; ModuleID = '../benchmarks/fine_grained/exebench/kernel357.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel357.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_via = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sw_via_E(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 128
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = load ptr, ptr @s_via, align 8
  %9 = getelementptr inbounds i32, ptr %8, i64 14
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, ptr %9, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load ptr, ptr @s_via, align 8
  %14 = getelementptr inbounds i32, ptr %13, i64 14
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %2, align 4
  %17 = or i32 %15, %16
  %18 = load i32, ptr %2, align 4
  %19 = xor i32 %17, %18
  %20 = load ptr, ptr @s_via, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 14
  store i32 %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %12, %6
  %23 = phi i32 [ %11, %6 ], [ %19, %12 ]
  %24 = load ptr, ptr @s_via, align 8
  %25 = getelementptr inbounds i32, ptr %24, i64 14
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 128
  store i32 %27, ptr %25, align 4
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
