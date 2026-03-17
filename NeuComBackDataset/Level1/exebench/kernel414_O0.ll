; ModuleID = '../benchmarks/fine_grained/exebench/kernel414.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel414.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_funcs_t = type { i32, i32, i32, i32 }

@ole_read = dso_local global i32 0, align 4
@ole_eof = dso_local global i32 0, align 4
@ole_seek = dso_local global i32 0, align 4
@ole_tell = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ole_func(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @ole_read, align 4
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %struct.io_funcs_t, ptr %4, i32 0, i32 3
  store i32 %3, ptr %5, align 4
  %6 = load i32, ptr @ole_eof, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.io_funcs_t, ptr %7, i32 0, i32 2
  store i32 %6, ptr %8, align 4
  %9 = load i32, ptr @ole_seek, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.io_funcs_t, ptr %10, i32 0, i32 1
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr @ole_tell, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.io_funcs_t, ptr %13, i32 0, i32 0
  store i32 %12, ptr %14, align 4
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
