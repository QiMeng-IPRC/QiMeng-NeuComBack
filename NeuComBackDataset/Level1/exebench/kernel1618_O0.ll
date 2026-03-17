; ModuleID = '../benchmarks/fine_grained/exebench/kernel1618.c'
source_filename = "../benchmarks/fine_grained/exebench/kernel1618.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FractBits = dso_local global i32 0, align 4
@CarryBit = dso_local global i32 0, align 4
@ExpInfinity = dso_local global i32 0, align 4
@HiddenBit = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @renormalise(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr @FractBits, align 4
  %7 = mul nsw i32 -2, %6
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, ptr @FractBits, align 4
  %11 = mul nsw i32 -2, %10
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, ptr %12, i32 0, i32 0
  store i32 %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %1
  br label %15

15:                                               ; preds = %36, %14
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, ptr @CarryBit, align 4
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, ptr %38, align 4
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = ashr i32 %43, 1
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = or i32 %44, %48
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, ptr %50, i32 0, i32 2
  store i32 %49, ptr %51, align 4
  br label %15, !llvm.loop !6

52:                                               ; preds = %15
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, ptr %53, i32 0, i32 0
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr @ExpInfinity, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, ptr @ExpInfinity, align 4
  %60 = load ptr, ptr %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, ptr %60, i32 0, i32 0
  store i32 %59, ptr %61, align 4
  %62 = load i32, ptr @HiddenBit, align 4
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, ptr %63, i32 0, i32 1
  store i32 %62, ptr %64, align 4
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, ptr %65, i32 0, i32 2
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %58, %52
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
