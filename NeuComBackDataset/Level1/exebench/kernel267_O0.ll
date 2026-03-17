; ModuleID = '../benchmarks/fine_grained/exebench/kernel267.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel267.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmftraffic = dso_local global i32 0, align 4
@mmftrafficM = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addftraffic(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr @mmftraffic, align 4
  %4 = load i32, ptr %2, align 4
  %5 = add nsw i32 %3, %4
  store i32 %5, ptr @mmftraffic, align 4
  br label %6

6:                                                ; preds = %9, %1
  %7 = load i32, ptr @mmftraffic, align 4
  %8 = icmp sge i32 %7, 1000000
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, ptr @mmftraffic, align 4
  %11 = sub nsw i32 %10, 1000000
  store i32 %11, ptr @mmftraffic, align 4
  %12 = load i32, ptr @mmftrafficM, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @mmftrafficM, align 4
  br label %6, !llvm.loop !6

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %18, %14
  %16 = load i32, ptr @mmftraffic, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, ptr @mmftraffic, align 4
  %20 = add nsw i32 %19, 1000000
  store i32 %20, ptr @mmftraffic, align 4
  %21 = load i32, ptr @mmftraffic, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr @mmftraffic, align 4
  br label %15, !llvm.loop !8

23:                                               ; preds = %15
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
!8 = distinct !{!8, !7}
