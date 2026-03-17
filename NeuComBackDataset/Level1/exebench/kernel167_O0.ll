; ModuleID = '../benchmarks/fine_grained/exebench/kernel167.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel167.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@debug_handles_count = dso_local global i32 0, align 4
@debug_handles = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_debug_handle_internal(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %6

6:                                                ; preds = %44, %1
  %7 = load i32, ptr %4, align 4
  %8 = load i32, ptr @debug_handles_count, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %6
  %11 = load ptr, ptr @debug_handles, align 8
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, ptr %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %10
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %5, align 4
  br label %22

22:                                               ; preds = %37, %19
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr @debug_handles_count, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load ptr, ptr @debug_handles, align 8
  %28 = load i32, ptr %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, ptr %27, i64 %30
  %32 = load ptr, ptr @debug_handles, align 8
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, ptr %32, i64 %34
  %36 = call i32 @memcpy(ptr noundef %31, ptr noundef %35, i32 noundef 4)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, ptr %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %5, align 4
  br label %22, !llvm.loop !6

40:                                               ; preds = %22
  %41 = load i32, ptr @debug_handles_count, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, ptr @debug_handles_count, align 4
  store i32 1, ptr %2, align 4
  br label %48

43:                                               ; preds = %10
  br label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %4, align 4
  br label %6, !llvm.loop !8

47:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, ptr %2, align 4
  ret i32 %49
}

declare i32 @memcpy(ptr noundef, ptr noundef, i32 noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
