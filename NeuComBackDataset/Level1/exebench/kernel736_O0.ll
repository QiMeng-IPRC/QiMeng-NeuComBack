; ModuleID = '../benchmarks/fine_grained/exebench/kernel736.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel736.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_data_block = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_data_block() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr @first_data_block, align 8
  store ptr %7, ptr %2, align 8
  store i32 0, ptr %3, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %44, %0
  %9 = load i32, ptr %6, align 4
  %10 = load ptr, ptr @first_data_block, align 8
  %11 = load i32, ptr %10, align 4
  %12 = sdiv i32 %11, 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  store i32 0, ptr %5, align 4
  %15 = load ptr, ptr %2, align 8
  store ptr %15, ptr %4, align 8
  br label %16

16:                                               ; preds = %34, %14
  %17 = load i32, ptr %5, align 4
  %18 = icmp ult i32 %17, 32
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %5, align 4
  %26 = shl i32 1, %25
  %27 = load ptr, ptr %2, align 8
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %3, align 4
  %31 = load i32, ptr %5, align 4
  %32 = add i32 %30, %31
  store i32 %32, ptr %1, align 4
  br label %50

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %5, align 4
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 1
  store i32 %39, ptr %37, align 4
  br label %16, !llvm.loop !6

40:                                               ; preds = %16
  %41 = load i32, ptr %5, align 4
  %42 = load i32, ptr %3, align 4
  %43 = add i32 %42, %41
  store i32 %43, ptr %3, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %6, align 4
  %47 = load ptr, ptr %2, align 8
  %48 = getelementptr inbounds i32, ptr %47, i64 1
  store ptr %48, ptr %2, align 8
  br label %8, !llvm.loop !8

49:                                               ; preds = %8
  store i32 0, ptr %1, align 4
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i32, ptr %1, align 4
  ret i32 %51
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
