; ModuleID = '../benchmarks/fine_grained/exebench/kernel53.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel53.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, ptr, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@level = dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CON_CONNECTED = dso_local global i64 0, align 8
@TEAM_RED = dso_local global i64 0, align 8
@TEAM_BLUE = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sortedActivePlayers() #0 {
  %1 = alloca i32, align 4
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 3), align 8
  store i64 0, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 1), align 8
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %44, %0
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr @level, align 8
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 2), align 8
  %8 = load i32, ptr %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_7__, ptr %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_7__, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, ptr %11, i32 0, i32 0
  %13 = load i64, ptr %12, align 8
  %14 = load i64, ptr @CON_CONNECTED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %44

17:                                               ; preds = %6
  %18 = load ptr, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 2), align 8
  %19 = load i32, ptr %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, ptr %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, ptr %22, i32 0, i32 0
  %24 = load i64, ptr %23, align 8
  %25 = load i64, ptr @TEAM_RED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i64, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 3), align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 3), align 8
  br label %30

30:                                               ; preds = %27, %17
  %31 = load ptr, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 2), align 8
  %32 = load i32, ptr %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, ptr %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, ptr %35, i32 0, i32 0
  %37 = load i64, ptr %36, align 8
  %38 = load i64, ptr @TEAM_BLUE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i64, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 1), align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, ptr getelementptr inbounds (%struct.TYPE_8__, ptr @level, i32 0, i32 1), align 8
  br label %43

43:                                               ; preds = %40, %30
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, ptr %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %1, align 4
  br label %2, !llvm.loop !6

47:                                               ; preds = %2
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
