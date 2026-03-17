; ModuleID = '../benchmarks/fine_grained/exebench/kernel677.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel677.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i32, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }

@country_united_states = dso_local global i32 0, align 4
@t35_provider_atsc = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cea708_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 @memset(ptr noundef %3, i32 noundef 0, i32 noundef 56)
  %5 = load i32, ptr @country_united_states, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, ptr %6, i32 0, i32 5
  store i32 %5, ptr %7, align 4
  %8 = load i32, ptr @t35_provider_atsc, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, ptr %9, i32 0, i32 4
  store i32 %8, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %11, i32 0, i32 0
  store i8 52, ptr %12, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, ptr %13, i32 0, i32 1
  store i32 3, ptr %14, align 4
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, ptr %15, i32 0, i32 3
  store i64 0, ptr %16, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, ptr %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, ptr %18, i32 0, i32 3
  store i64 0, ptr %19, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 0
  store i32 1, ptr %22, align 8
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, ptr %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, ptr %24, i32 0, i32 2
  store i64 0, ptr %25, align 8
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, ptr %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, ptr %27, i32 0, i32 1
  store i64 0, ptr %28, align 8
  ret i32 1
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
