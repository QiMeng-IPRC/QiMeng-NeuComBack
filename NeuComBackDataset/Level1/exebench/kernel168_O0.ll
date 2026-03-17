; ModuleID = '../benchmarks/fine_grained/exebench/kernel168.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel168.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qp_set_rate_wobble_inv(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  store ptr %0, ptr %3, align 8
  store double %1, ptr %4, align 8
  %5 = load double, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, ptr %7, i32 0, i32 0
  %9 = load double, ptr %8, align 8
  %10 = fcmp une double %5, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load double, ptr %4, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, ptr %14, i32 0, i32 0
  store double %12, ptr %15, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, ptr %17, i32 0, i32 1
  store i32 -1, ptr %18, align 8
  br label %19

19:                                               ; preds = %11, %2
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
