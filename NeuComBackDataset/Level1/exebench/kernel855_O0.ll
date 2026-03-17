; ModuleID = '../benchmarks/fine_grained/exebench/kernel855.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel855.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.conn_info = type { i32 }

@pending_list = dso_local global ptr null, align 8
@pending_queries = dso_local global i64 0, align 8
@POLLOUT = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_for_connected(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @pending_list, align 8
  %4 = load i64, ptr @pending_queries, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, ptr %3, i64 %4
  %6 = call i32 @memset(ptr noundef %5, i32 noundef 0, i32 noundef 8)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.conn_info, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr @pending_list, align 8
  %11 = load i64, ptr @pending_queries, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %12, i32 0, i32 1
  store i32 %9, ptr %13, align 4
  %14 = load i32, ptr @POLLOUT, align 4
  %15 = load ptr, ptr @pending_list, align 8
  %16 = load i64, ptr @pending_queries, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, ptr %17, i32 0, i32 0
  store i32 %14, ptr %18, align 4
  %19 = load i64, ptr @pending_queries, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr @pending_queries, align 8
  ret void
}

declare i32 @memset(ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6"}
