; ModuleID = '../benchmarks/fine_grained/exebench/kernel943.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel943.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@AZ_VZERO = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @az_init_play_state(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @memset(ptr noundef %3, i32 noundef 0, i32 noundef 20)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_5__, ptr %6, i32 0, i32 0
  store i32 400, ptr %7, align 4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, ptr %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, ptr %9, i32 0, i32 1
  store i32 250, ptr %10, align 4
  %11 = load i32, ptr @AZ_VZERO, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, ptr %12, i32 0, i32 2
  store i32 %11, ptr %13, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, ptr %14, i32 0, i32 0
  store i32 3, ptr %15, align 4
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, ptr %16, i32 0, i32 1
  store i32 3, ptr %17, align 4
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
