; ModuleID = '../benchmarks/fine_grained/exebench/kernel382.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel382.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { ptr, ptr, ptr, ptr }

@gsGlobalInfo = dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitGpMode() #0 {
  %1 = alloca i8, align 1
  store i8 0, ptr %1, align 1
  br label %2

2:                                                ; preds = %23, %0
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @gsGlobalInfo, i32 0, i32 3), align 8
  %8 = load i8, ptr %1, align 1
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds i32, ptr %7, i64 %9
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @gsGlobalInfo, i32 0, i32 2), align 8
  %12 = load i8, ptr %1, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @gsGlobalInfo, i32 0, i32 1), align 8
  %16 = load i8, ptr %1, align 1
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr @gsGlobalInfo, align 8
  %20 = load i8, ptr %1, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %6
  %24 = load i8, ptr %1, align 1
  %25 = add i8 %24, 1
  store i8 %25, ptr %1, align 1
  br label %2, !llvm.loop !6

26:                                               ; preds = %2
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
