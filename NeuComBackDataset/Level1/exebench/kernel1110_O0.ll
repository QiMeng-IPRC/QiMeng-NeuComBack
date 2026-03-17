; ModuleID = '../benchmarks/fine_grained/exebench/kernel1110.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1110.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_nIsdbtPrevAntennaLevel_1seg = dso_local global i32 0, align 4
@rtvMTV23x_GetAntennaLevel_1seg.aAntLvlTbl = internal constant [6 x i32] [i32 15000, i32 12000, i32 11000, i32 9000, i32 7000, i32 4000], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtvMTV23x_GetAntennaLevel_1seg(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 6, ptr %3, align 4
  %5 = load i32, ptr @g_nIsdbtPrevAntennaLevel_1seg, align 4
  store i32 %5, ptr %4, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %3, align 4
  %9 = sub nsw i32 6, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [6 x i32], ptr @rtvMTV23x_GetAntennaLevel_1seg.aAntLvlTbl, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sge i32 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %20

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15
  %17 = load i32, ptr %3, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %6, label %20, !llvm.loop !6

20:                                               ; preds = %16, %14
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %4, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, ptr %4, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %4, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i32, ptr %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %4, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, ptr %4, align 4
  store i32 %35, ptr @g_nIsdbtPrevAntennaLevel_1seg, align 4
  br label %36

36:                                               ; preds = %34, %20
  %37 = load i32, ptr %4, align 4
  ret i32 %37
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
