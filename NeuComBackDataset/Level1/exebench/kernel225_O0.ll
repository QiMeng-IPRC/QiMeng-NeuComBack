; ModuleID = '../benchmarks/fine_grained/exebench/kernel225.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { ptr, i32 }

@http_r = dso_local global ptr null, align 8
@resp_index = dso_local global i64 0, align 8
@http_resp_cout = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_http_cb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr @http_r, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, ptr %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = load i32, ptr %4, align 4
  %10 = load ptr, ptr @http_r, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, ptr %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, ptr %11, i32 0, i32 1
  store i32 %9, ptr %12, align 8
  store i64 0, ptr @resp_index, align 8
  store i64 0, ptr @http_resp_cout, align 8
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
