; ModuleID = '../benchmarks/fine_grained/exebench/kernel1430.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1430.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@path_s = dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@path = dso_local global ptr null, align 8
@path_blownpos = dso_local global i32 0, align 4
@path_search_long = dso_local global i32 0, align 4
@path_search = dso_local global i32 0, align 4
@check_distance = dso_local global i32 0, align 4
@distance = dso_local global i32 0, align 4
@check_distance_client = dso_local global i32 0, align 4
@distance_client = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @path_defaults() #0 {
  store ptr @path_s, ptr @path, align 8
  %1 = load i32, ptr @path_blownpos, align 4
  %2 = load ptr, ptr @path, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, ptr %2, i32 0, i32 6
  store i32 %1, ptr %3, align 4
  %4 = load i32, ptr @path_search_long, align 4
  %5 = load ptr, ptr @path, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, ptr %5, i32 0, i32 5
  store i32 %4, ptr %6, align 4
  %7 = load i32, ptr @path_search, align 4
  %8 = load ptr, ptr @path, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i32 0, i32 4
  store i32 %7, ptr %9, align 4
  %10 = load i32, ptr @check_distance, align 4
  %11 = load ptr, ptr @path, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %11, i32 0, i32 3
  store i32 %10, ptr %12, align 4
  %13 = load i32, ptr @distance, align 4
  %14 = load ptr, ptr @path, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 2
  store i32 %13, ptr %15, align 4
  %16 = load i32, ptr @check_distance_client, align 4
  %17 = load ptr, ptr @path, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 1
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr @distance_client, align 4
  %20 = load ptr, ptr @path, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, ptr %20, i32 0, i32 0
  store i32 %19, ptr %21, align 4
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
