; ModuleID = '../benchmarks/fine_grained/exebench/kernel269.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel269.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl = type { i32, i32, i32 }

@clients = dso_local global ptr null, align 8
@SHUT_RDWR = dso_local global i32 0, align 4
@CL_UNUSED = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_client(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = load ptr, ptr @clients, align 8
  %5 = load i32, ptr %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.cl, ptr %4, i64 %6
  store ptr %7, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.cl, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr @SHUT_RDWR, align 4
  %12 = call i32 @shutdown(i32 noundef %10, i32 noundef %11)
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.cl, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr @SHUT_RDWR, align 4
  %17 = call i32 @shutdown(i32 noundef %15, i32 noundef %16)
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.cl, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @close(i32 noundef %20)
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.cl, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = call i32 @close(i32 noundef %24)
  %26 = load i32, ptr @CL_UNUSED, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.cl, ptr %27, i32 0, i32 0
  store i32 %26, ptr %28, align 4
  ret void
}

declare i32 @shutdown(i32 noundef, i32 noundef) #1

declare i32 @close(i32 noundef) #1

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
