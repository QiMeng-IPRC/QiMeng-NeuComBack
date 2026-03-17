; ModuleID = '../benchmarks/fine_grained/exebench/kernel768.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel768.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, ptr }

@rec_buffer = dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unget_rec_buffer_delta(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i64, ptr @rec_buffer, align 8
  %4 = add i64 %3, -1
  store i64 %4, ptr @rec_buffer, align 8
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 16777215
  %7 = load i32, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @rec_buffer, i32 0, i32 1), align 8
  %8 = sub nsw i32 %7, %6
  store i32 %8, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @rec_buffer, i32 0, i32 1), align 8
  %9 = load i32, ptr %2, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.TYPE_2__, ptr @rec_buffer, i32 0, i32 2), align 8
  %11 = load i64, ptr @rec_buffer, align 8
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  store i32 %9, ptr %12, align 4
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
