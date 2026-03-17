; ModuleID = '../benchmarks/fine_grained/exebench/kernel374.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel374.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8 }
%struct.TYPE_6__ = type { i8 }

@CCLAP_ERR_NULLVALUE = dso_local global i32 0, align 4
@cclap_errno = dso_local global i32 0, align 4
@CCLAP_SUCCESS = dso_local global i32 0, align 4
@SOPTION = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @cclap_option_sname(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, ptr @CCLAP_ERR_NULLVALUE, align 4
  store i32 %7, ptr @cclap_errno, align 4
  store i8 0, ptr %2, align 1
  br label %31

8:                                                ; preds = %1
  %9 = load i32, ptr @CCLAP_SUCCESS, align 4
  store i32 %9, ptr @cclap_errno, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, ptr %10, i32 0, i32 0
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr @SOPTION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, ptr %17, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  br label %28

21:                                               ; preds = %8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, ptr %24, i32 0, i32 0
  %26 = load i8, ptr %25, align 8
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %20, %15 ], [ %27, %21 ]
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %2, align 1
  br label %31

31:                                               ; preds = %28, %6
  %32 = load i8, ptr %2, align 1
  ret i8 %32
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
