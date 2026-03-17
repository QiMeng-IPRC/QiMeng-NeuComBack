; ModuleID = '../benchmarks/fine_grained/exebench/kernel937.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel937.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@SA1Registers = dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@SA1 = dso_local global %struct.TYPE_16__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OpBASlow() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_15__, ptr @SA1Registers, i32 0, i32 2), align 4
  %2 = and i32 %1, 16
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, ptr getelementptr inbounds (%struct.TYPE_15__, ptr @SA1Registers, i32 0, i32 1, i32 1), align 4
  store i32 %5, ptr getelementptr inbounds (%struct.TYPE_13__, ptr @SA1Registers, i32 0, i32 1), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_13__, ptr @SA1Registers, i32 0, i32 1), align 4
  store i32 %6, ptr @SA1, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.TYPE_13__, ptr @SA1Registers, i32 0, i32 1), align 4
  store i32 %7, ptr getelementptr inbounds (%struct.TYPE_16__, ptr @SA1, i32 0, i32 1), align 4
  br label %15

8:                                                ; preds = %0
  %9 = load i32, ptr getelementptr inbounds (%struct.TYPE_15__, ptr @SA1Registers, i32 0, i32 1), align 4
  store i32 %9, ptr @SA1Registers, align 4
  %10 = load i32, ptr @SA1Registers, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, ptr @SA1, align 4
  %13 = load i32, ptr @SA1Registers, align 4
  %14 = ashr i32 %13, 8
  store i32 %14, ptr getelementptr inbounds (%struct.TYPE_16__, ptr @SA1, i32 0, i32 1), align 4
  br label %15

15:                                               ; preds = %8, %4
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
