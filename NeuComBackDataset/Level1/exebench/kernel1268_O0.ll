; ModuleID = '../benchmarks/fine_grained/exebench/kernel1268.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1268.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.processor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processor_pc_increment(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.processor, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %8, %5
  store i32 %9, ptr %7, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.processor, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 2047
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.processor, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 4
  %18 = sub nsw i32 %17, 2047
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.processor, ptr %19, i32 0, i32 0
  store i32 %18, ptr %20, align 4
  br label %21

21:                                               ; preds = %14, %2
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
