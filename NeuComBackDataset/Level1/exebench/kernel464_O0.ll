; ModuleID = '../benchmarks/fine_grained/exebench/kernel464.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel464.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getn(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, ptr %8, i32 0, i32 0
  %10 = load i64, ptr %9, align 8
  %11 = load i32, ptr %7, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %19, i32 0, i32 2
  store i32 1, ptr %20, align 8
  store i32 0, ptr %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, ptr %23, i32 0, i32 0
  %25 = load i64, ptr %24, align 8
  %26 = load i32, ptr %7, align 4
  %27 = call i32 @memcpy(ptr noundef %22, i64 noundef %25, i32 noundef %26)
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, ptr %30, i32 0, i32 0
  %32 = load i64, ptr %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, ptr %31, align 8
  store i32 1, ptr %4, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, ptr %4, align 4
  ret i32 %35
}

declare i32 @memcpy(ptr noundef, i64 noundef, i32 noundef) #1

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
