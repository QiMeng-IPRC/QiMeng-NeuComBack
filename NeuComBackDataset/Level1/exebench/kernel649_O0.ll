; ModuleID = '../benchmarks/fine_grained/exebench/kernel649.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel649.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cssl_started = dso_local global i32 0, align 4
@CSSL_ERROR_NOTSTARTED = dso_local global i32 0, align 4
@cssl_error = dso_local global i32 0, align 4
@CSSL_ERROR_NULLPOINTER = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cssl_drain(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @cssl_started, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @CSSL_ERROR_NOTSTARTED, align 4
  store i32 %6, ptr @cssl_error, align 4
  br label %17

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr @CSSL_ERROR_NULLPOINTER, align 4
  store i32 %11, ptr @cssl_error, align 4
  br label %17

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @tcdrain(i32 noundef %15)
  br label %17

17:                                               ; preds = %12, %10, %5
  ret void
}

declare i32 @tcdrain(i32 noundef) #1

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
