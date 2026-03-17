; ModuleID = '../benchmarks/fine_grained/exebench/kernel1366.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1366.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testReadFromFile.test_read_buf_ind = internal global i32 0, align 4
@test_read_buf = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testReadFromFile(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %3 = load i8, ptr %2, align 1
  %4 = load ptr, ptr @test_read_buf, align 8
  %5 = load i32, ptr @testReadFromFile.test_read_buf_ind, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @testReadFromFile.test_read_buf_ind, align 4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  store i8 %3, ptr %8, align 1
  %9 = load ptr, ptr @test_read_buf, align 8
  %10 = load i32, ptr @testReadFromFile.test_read_buf_ind, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  store i8 0, ptr %12, align 1
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
