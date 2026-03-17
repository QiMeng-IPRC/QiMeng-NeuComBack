; ModuleID = '../benchmarks/fine_grained/exebench/kernel1031.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1031.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPI_ERR_ARG = dso_local global i32 0, align 4
@MPI_SUCCESS = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MPI_Get_version(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr @MPI_ERR_ARG, align 4
  store i32 %12, ptr %3, align 4
  br label %17

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8
  store i32 1, ptr %14, align 4
  %15 = load ptr, ptr %5, align 8
  store i32 2, ptr %15, align 4
  %16 = load i32, ptr @MPI_SUCCESS, align 4
  store i32 %16, ptr %3, align 4
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, ptr %3, align 4
  ret i32 %18
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
