; ModuleID = '../benchmarks/fine_grained/exebench/kernel1311.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1311.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolParser = type { ptr, ptr, ptr, i32, i32 }

@PT_EOL = dso_local global i32 0, align 4
@PICOL_OK = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picolParseEol(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.picolParser, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.picolParser, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  br label %8

8:                                                ; preds = %45, %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.picolParser, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %43, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.picolParser, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %43, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.picolParser, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.picolParser, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 13
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.picolParser, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 59
  br label %43

43:                                               ; preds = %36, %29, %22, %15, %8
  %44 = phi i1 [ true, %29 ], [ true, %22 ], [ true, %15 ], [ true, %8 ], [ %42, %36 ]
  br i1 %44, label %45, label %54

45:                                               ; preds = %43
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.picolParser, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %49, ptr %47, align 8
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.picolParser, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %51, align 4
  br label %8, !llvm.loop !6

54:                                               ; preds = %43
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.picolParser, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 -1
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr inbounds %struct.picolParser, ptr %59, i32 0, i32 2
  store ptr %58, ptr %60, align 8
  %61 = load i32, ptr @PT_EOL, align 4
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds %struct.picolParser, ptr %62, i32 0, i32 3
  store i32 %61, ptr %63, align 8
  %64 = load i32, ptr @PICOL_OK, align 4
  ret i32 %64
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
