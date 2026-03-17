; ModuleID = '../benchmarks/fine_grained/exebench/kernel377.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel377.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@storetop = dso_local global i32 0, align 4
@tset_store = dso_local global ptr null, align 8
@stacktop = dso_local global i32 0, align 4
@tset_stack = dso_local global ptr null, align 8
@tset_card = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tset_singleton(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr @storetop, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @storetop, align 4
  %7 = load i32, ptr %3, align 4
  %8 = load ptr, ptr @tset_store, align 8
  %9 = load i32, ptr @storetop, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, ptr %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, ptr %11, i32 0, i32 0
  store i32 %7, ptr %12, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr @tset_store, align 8
  %15 = load i32, ptr @storetop, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, ptr %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, ptr %17, i32 0, i32 1
  store i32 %13, ptr %18, align 4
  %19 = load i32, ptr @stacktop, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @stacktop, align 4
  %21 = load i32, ptr @storetop, align 4
  %22 = load ptr, ptr @tset_stack, align 8
  %23 = load i32, ptr @stacktop, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  store i32 %21, ptr %25, align 4
  %26 = load ptr, ptr @tset_card, align 8
  %27 = load i32, ptr @stacktop, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  store i32 1, ptr %29, align 4
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
