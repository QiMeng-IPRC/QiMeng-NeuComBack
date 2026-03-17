; ModuleID = '../benchmarks/fine_grained/exebench/kernel1202.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1202.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@level = dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @barrels_fall_nikki_B(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_5__, ptr %4, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 90
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load i64, ptr @level, align 8
  %10 = sitofp i64 %9 to double
  %11 = fadd double %10, 1.000000e-01
  %12 = fptosi double %11 to i64
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, ptr %13, i32 0, i32 2
  store i64 %12, ptr %14, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %8
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -2
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %25, %8
  br label %31

31:                                               ; preds = %30, %1
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
