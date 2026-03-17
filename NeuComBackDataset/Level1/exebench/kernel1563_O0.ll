; ModuleID = '../benchmarks/fine_grained/exebench/kernel1563.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1563.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { ptr }

@I = dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AL = dso_local global i64 0, align 8
@AH = dso_local global i64 0, align 8
@nec_ICount = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_cbw() #0 {
  %1 = load ptr, ptr @I, align 8
  %2 = load i64, ptr @AL, align 8
  %3 = getelementptr inbounds i32, ptr %1, i64 %2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 255, i32 0
  %9 = load ptr, ptr @I, align 8
  %10 = load i64, ptr @AH, align 8
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  store i32 %8, ptr %11, align 4
  %12 = load i32, ptr @nec_ICount, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, ptr @nec_ICount, align 4
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
