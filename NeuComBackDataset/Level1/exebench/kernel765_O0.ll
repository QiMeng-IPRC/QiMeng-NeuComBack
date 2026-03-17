; ModuleID = '../benchmarks/fine_grained/exebench/kernel765.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel765.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = dso_local global ptr null, align 8
@gs_id = dso_local global i64 0, align 8
@gs_is_event = dso_local global i64 0, align 8
@MAX_GROUPS = dso_local global i32 0, align 4
@Gc = dso_local global i32 0, align 4
@GT = dso_local global ptr null, align 8
@adj_rec = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_groups_short_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @I, align 8
  %4 = load i64, ptr @gs_id, align 8
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = load ptr, ptr @I, align 8
  %8 = load i64, ptr @gs_is_event, align 8
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  %11 = load i32, ptr %1, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %0
  %14 = load i32, ptr %1, align 4
  %15 = load i32, ptr @MAX_GROUPS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %2, align 4
  %19 = and i32 %18, -2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %0
  br label %38

22:                                               ; preds = %17
  %23 = load i32, ptr @Gc, align 4
  %24 = load i32, ptr %1, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, ptr %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr @Gc, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, ptr %2, align 4
  %31 = add nsw i32 2, %30
  %32 = load ptr, ptr @GT, align 8
  %33 = load i32, ptr %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  store i32 %31, ptr %35, align 4
  %36 = load i32, ptr @adj_rec, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @adj_rec, align 4
  br label %38

38:                                               ; preds = %29, %21
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
