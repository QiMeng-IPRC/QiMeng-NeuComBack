; ModuleID = '../benchmarks/fine_grained/exebench/kernel1552.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1552.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@regs = dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@regflags = dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeSR() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @regs, i32 0, i32 1), align 4
  %2 = shl i32 %1, 15
  %3 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @regs, i32 0, i32 2), align 4
  %4 = shl i32 %3, 14
  %5 = or i32 %2, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @regs, i32 0, i32 3), align 4
  %7 = shl i32 %6, 13
  %8 = or i32 %5, %7
  %9 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @regs, i32 0, i32 4), align 4
  %10 = shl i32 %9, 12
  %11 = or i32 %8, %10
  %12 = load i32, ptr getelementptr inbounds (%struct.TYPE_3__, ptr @regs, i32 0, i32 5), align 4
  %13 = shl i32 %12, 8
  %14 = or i32 %11, %13
  %15 = load i32, ptr @regflags, align 4
  %16 = shl i32 %15, 4
  %17 = or i32 %14, %16
  %18 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @regflags, i32 0, i32 1), align 4
  %19 = shl i32 %18, 3
  %20 = or i32 %17, %19
  %21 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @regflags, i32 0, i32 2), align 4
  %22 = shl i32 %21, 2
  %23 = or i32 %20, %22
  %24 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @regflags, i32 0, i32 3), align 4
  %25 = shl i32 %24, 1
  %26 = or i32 %23, %25
  %27 = load i32, ptr getelementptr inbounds (%struct.TYPE_4__, ptr @regflags, i32 0, i32 4), align 4
  %28 = or i32 %26, %27
  store i32 %28, ptr @regs, align 4
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
