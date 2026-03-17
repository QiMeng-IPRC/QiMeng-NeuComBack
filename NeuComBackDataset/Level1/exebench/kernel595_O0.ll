; ModuleID = '../benchmarks/fine_grained/exebench/kernel595.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel595.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@qe_num_of_snum = dso_local global i32 0, align 4
@snums = dso_local global ptr null, align 8
@QE_SNUM_STATE_FREE = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qe_put_snum(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @qe_num_of_snum, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load ptr, ptr @snums, align 8
  %10 = load i32, ptr %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, ptr %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, ptr %12, i32 0, i32 0
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  %18 = load i32, ptr @QE_SNUM_STATE_FREE, align 4
  %19 = load ptr, ptr @snums, align 8
  %20 = load i32, ptr %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, ptr %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, ptr %22, i32 0, i32 1
  store i32 %18, ptr %23, align 8
  br label %28

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %3, align 4
  br label %4, !llvm.loop !6

28:                                               ; preds = %17, %4
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
