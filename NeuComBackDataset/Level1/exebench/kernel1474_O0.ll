; ModuleID = '../benchmarks/fine_grained/exebench/kernel1474.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1474.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetElem(i32 %0, ptr %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds { i32, ptr }, ptr %6, i32 0, i32 0
  store i32 %0, ptr %9, align 8
  %10 = getelementptr inbounds { i32, ptr }, ptr %6, i32 0, i32 1
  store ptr %1, ptr %10, align 8
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %11 = load i32, ptr %7, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr %7, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, ptr %6, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %4
  store i32 0, ptr %5, align 4
  br label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_3__, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %8, align 8
  store i32 %26, ptr %27, align 4
  store i32 1, ptr %5, align 4
  br label %28

28:                                               ; preds = %19, %18
  %29 = load i32, ptr %5, align 4
  ret i32 %29
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
