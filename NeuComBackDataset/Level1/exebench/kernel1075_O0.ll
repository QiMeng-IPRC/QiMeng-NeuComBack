; ModuleID = '../benchmarks/fine_grained/exebench/kernel1075.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1075.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hyplen = dso_local global i32 0, align 4
@hypchar = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Wordlen(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  store i32 0, ptr @hyplen, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load ptr, ptr %2, align 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 32
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 9
  br label %16

16:                                               ; preds = %12, %8, %4
  %17 = phi i1 [ false, %8 ], [ false, %4 ], [ %15, %12 ]
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr @hypchar, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, ptr @hyplen, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, ptr %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr @hyplen, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %33

30:                                               ; preds = %18
  %31 = load i32, ptr %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds i32, ptr %34, i32 1
  store ptr %35, ptr %2, align 8
  br label %4, !llvm.loop !6

36:                                               ; preds = %16
  %37 = load i32, ptr %3, align 4
  ret i32 %37
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
