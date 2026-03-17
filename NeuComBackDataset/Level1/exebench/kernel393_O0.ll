; ModuleID = '../benchmarks/fine_grained/exebench/kernel393.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel393.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, ptr }
%struct.TYPE_4__ = type { i32, i32 }

@basicvars = dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@STACK_INT = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_intone() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @basicvars, i32 0, i32 1), align 8
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr getelementptr inbounds (%struct.TYPE_6__, ptr @basicvars, i32 0, i32 1), align 8
  %3 = load i32, ptr @basicvars, align 8
  %4 = sext i32 %3 to i64
  %5 = sub i64 %4, 8
  %6 = trunc i64 %5 to i32
  store i32 %6, ptr @basicvars, align 8
  %7 = load i32, ptr @STACK_INT, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @basicvars, i32 0, i32 1), align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, ptr %8, i32 0, i32 1
  store i32 %7, ptr %9, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.TYPE_5__, ptr @basicvars, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, ptr %10, i32 0, i32 0
  store i32 1, ptr %11, align 4
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
