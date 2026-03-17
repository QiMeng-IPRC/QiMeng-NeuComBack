; ModuleID = '../benchmarks/fine_grained/exebench/kernel593.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { ptr, ptr, ptr, ptr, ptr }
%struct.TYPE_4__ = type { i64, i32 }

@work = dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@settings = dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_start() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 11
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i32 0, i32 4), align 8
  %7 = load i32, ptr %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, ptr %6, i64 %8
  store i64 0, ptr %9, align 8
  br label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %1, align 4
  br label %2, !llvm.loop !6

13:                                               ; preds = %2
  store i32 0, ptr %1, align 4
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i32, ptr %1, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i32 0, i32 3), align 8
  %19 = load i32, ptr %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, ptr %18, i64 %20
  store i64 0, ptr %21, align 8
  br label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %1, align 4
  br label %14, !llvm.loop !8

25:                                               ; preds = %14
  store i32 0, ptr %1, align 4
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32, ptr %1, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i32 0, i32 1), align 8
  %31 = load i32, ptr %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, ptr %30, i64 %32
  %34 = load i64, ptr %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i32 0, i32 1), align 8
  %38 = load i32, ptr %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, ptr %37, i64 %39
  %41 = load i64, ptr %40, align 8
  br label %44

42:                                               ; preds = %29
  %43 = load i64, ptr @settings, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i64 [ %41, %36 ], [ %43, %42 ]
  %46 = load ptr, ptr @work, align 8
  %47 = load i32, ptr %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %46, i64 %48
  store i64 %45, ptr %49, align 8
  br label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %1, align 4
  br label %26, !llvm.loop !9

53:                                               ; preds = %26
  store i32 0, ptr %1, align 4
  br label %54

54:                                               ; preds = %63, %53
  %55 = load i32, ptr %1, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @settings, i32 0, i32 1), align 8
  %59 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @work, i32 0, i32 2), align 8
  %60 = load i32, ptr %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %59, i64 %61
  store i32 %58, ptr %62, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %1, align 4
  br label %54, !llvm.loop !10

66:                                               ; preds = %54
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
